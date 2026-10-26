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
  assert(home.css(".research-card a").any? { |link| link["href"] == prefix + "dated.html" }, "The recent feed requires project-specific metadata")
  assert(home.css(".research-card a").none? { |link| link["href"].include?("TEMPLATE") }, "An undated template entered the recent feed")
  puts "PASS: automatic sections, four-level navigation, README indexes, plain Markdown, relative links, breadcrumbs, dates, and /preview baseurl"
end
