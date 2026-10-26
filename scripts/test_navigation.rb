# Run with: bundle exec ruby scripts/test_navigation.rb
require "jekyll"
require "tmpdir"
require "fileutils"
require "nokogiri"

repository = File.expand_path("..", __dir__)

def assert(condition, message)
  raise message unless condition
end

Dir.mktmpdir("notebook-navigation-") do |source|
  %w[_layouts _includes].each do |directory|
    FileUtils.cp_r(File.join(repository, directory), source)
  end
  FileUtils.cp(File.join(repository, "index.html"), source)
  directory = File.join(source, "content/new-section/second/third/fourth")
  FileUtils.mkdir_p(directory)
  %w[content content/new-section content/new-section/second content/new-section/second/third content/new-section/second/third/fourth].each do |path|
    File.write(File.join(source, path, "README.md"), "# #{File.basename(path)} landing\n")
  end
  File.write(File.join(directory, "plain.md"), "# Plain Markdown\n\n[Folder](README.md) and [dated entry](dated.md).\n")
  File.write(File.join(directory, "dated.md"), "---\ntitle: Dated entry\ndate: 2026-10-26\n---\n\n# Dated entry\n")
  File.write(File.join(directory, "TEMPLATE.md"), "---\ntitle: Template\n# date: YYYY-MM-DD\n---\n\n# Template\n")
  File.write(File.join(directory, "hidden.md"), "---\ntitle: Hidden\nnav_exclude: true\n---\n\n# Hidden\n")
  FileUtils.mkdir_p(File.join(source, "content/new-section/unindexed"))
  File.write(File.join(source, "content/new-section/unindexed/inside.md"), "# Inside a folder without a README\n")
  File.write(File.join(source, "content/new-section/field notes.pdf"), "%PDF-test-fixture\n")
  File.write(File.join(source, "content/new-section/pinned"), "")
  9.times do |index|
    File.write(File.join(directory, "undated-#{index}.md"), "# Undated entry #{index}\n")
  end
  File.write(File.join(directory, "older.md"), "---\ntitle: Older entry\ndate: 2025-01-02\n---\n\n# Older entry\n")
  FileUtils.mkdir_p(File.join(source, "content/fiction/nested"))
  File.write(File.join(source, "content/fiction/README.md"), "# Fiction\n")
  File.write(File.join(source, "content/fiction/nested/story.md"), "---\ntitle: Fiction story\ndate: 2026-10-27\n---\n\n# Fiction story\n")
  File.write(File.join(source, "content/fiction/nested/story.pdf"), "%PDF-fiction-fixture\n")
  FileUtils.mkdir_p(File.join(source, "content/fiction-notes"))
  File.write(File.join(source, "content/fiction-notes/essay.md"), "# An adjacent section\n")
  File.write(File.join(source, "outside.md"), "---\ntitle: Outside content\ndate: 2026-10-28\n---\n\n# Outside content\n")

  config = Jekyll.configuration(
    "source" => source,
    "destination" => File.join(source, "_site"),
    "layouts_dir" => File.join(source, "_layouts"),
    "includes_dir" => File.join(source, "_includes"),
    "content_root" => "content",
    "baseurl" => "/preview",
    "url" => "https://example.test",
    "plugins" => %w[jekyll-seo-tag jekyll-optional-front-matter jekyll-readme-index jekyll-relative-links jekyll-titles-from-headings jekyll-include-cache],
    "readme_index" => { "with_frontmatter" => true, "remove_originals" => true },
    "titles_from_headings" => { "strip_title" => false },
    "strict_front_matter" => true,
    "defaults" => [{ "scope" => { "path" => "content" }, "values" => { "layout" => "default" } }],
    "quiet" => true
  )
  site = Jekyll::Site.new(config)
  site.process
  output = File.join(source, "_site")
  document = Nokogiri::HTML(File.read(File.join(output, "content/new-section/second/third/fourth/plain.html")))
  links = document.css("nav[aria-label='Site navigation'] a").map { |link| link["href"] }
  prefix = "/preview/content/new-section/second/third/fourth/"
  assert(links.include?(prefix + "plain.html"), "A page four folders deep is absent from navigation")
  assert(links.include?("/preview/content/new-section/"), "A new section did not appear automatically")
  assert(links.include?("/preview/content/new-section/unindexed/inside.html"), "A folder without a README hides its children: #{links.inspect}")
  assert(links.none? { |link| link.end_with?("TEMPLATE.html", "hidden.html") }, "Hidden pages or templates leaked into navigation")
  assert(document.css("nav details[open]").size == 4, "Active ancestor folders are not expanded")
  assert(document.at_css("nav a[aria-current='page']")&.[]("href") == prefix + "plain.html", "Active page is not marked")
  assert(document.css(".wrapper a").any? { |link| link["href"] == prefix }, "Relative README links do not resolve to folder URLs")
  assert(document.css(".wrapper a").any? { |link| link["href"] == prefix + "dated.html" }, "Relative Markdown links do not resolve to HTML")
  assert(document.at_css(".breadcrumbs a[href='/preview/content/']"), "Breadcrumbs omit the notebook landing page")
  landing = Nokogiri::HTML(File.read(File.join(output, "content/new-section/second/third/fourth/index.html")))
  assert(landing.css(".folder-index a").any? { |link| link["href"] == prefix + "plain.html" }, "README landing pages do not list direct children")
  home = Nokogiri::HTML(File.read(File.join(output, "index.html")))
  assert(home.css(".resource-card").any? { |card| card["href"] == "/preview/content/new-section/" }, "Home section cards are hardcoded")
  activities = home.css(".research-feed .research-card__main").map { |link| link["href"] }
  assert(activities.include?(prefix + "dated.html"), "The recent feed requires project-specific metadata")
  assert(activities.include?(prefix + "plain.html"), "An undated Markdown file is missing from activities")
  assert(activities.include?(prefix + "TEMPLATE.html"), "Templates are excluded from the all-file feed")
  assert(activities.include?("/preview/content/new-section/"), "README landing pages are missing from activities")
  assert(activities.include?("/preview/content/new-section/field%20notes.pdf"), "A downloadable file is missing from activities")
  assert(activities.include?(prefix + "undated-8.html"), "Activities are still limited to eight files")
  assert(activities.count(prefix + "plain.html") == 1 && !activities.include?(prefix + "plain.md"), "A rendered page and its raw source both appear")
  assert(activities.none? { |href| href.start_with?("/preview/content/fiction/") }, "Fiction leaked into activities")
  assert(activities.include?("/preview/content/fiction-notes/essay.html"), "A similarly named section was incorrectly excluded")
  assert(activities.none? { |href| href.end_with?("/pinned", "/outside.html", "/hidden.html") }, "Internal markers, hidden pages, or files outside content leaked into activities")
  assert(activities.first(2) == [prefix + "dated.html", prefix + "older.html"], "Dated activities are not newest first")
  plain_card = home.css(".research-card").find { |card| card.at_css("a")["href"] == prefix + "plain.html" }
  assert(plain_card.css(".eyebrow").empty?, "An undated page was given an invented date")
  assert(plain_card.at_css(".activity-path").text == "content/new-section/second/third/fourth/plain.md", "An activity displays the wrong source path")
  puts "PASS: folder navigation and all-file activities, including undated files, README pages, templates, downloads, deduplication, date order, fiction exclusion, and /preview baseurl"
end
