#!/usr/bin/env python3
"""Check rendered notebook navigation, local links, images, and heading anchors."""

import argparse
from functools import lru_cache
from html.parser import HTMLParser
from pathlib import Path
from urllib.parse import unquote, urljoin, urlsplit


class Page(HTMLParser):
    def __init__(self, path):
        super().__init__(convert_charrefs=True)
        self.links = []
        self.anchors = set()
        self.feed(path.read_text(encoding="utf-8"))

    def handle_starttag(self, tag, attrs):
        attrs = dict(attrs)
        if attrs.get("id"):
            self.anchors.add(attrs["id"])
        if tag == "a" and attrs.get("name"):
            self.anchors.add(attrs["name"])
        attribute = "href" if tag in {"a", "link"} else "src"
        if tag in {"a", "link", "img", "script", "source"} and attrs.get(attribute):
            self.links.append(attrs[attribute])


def check(destination, baseurl=""):
    destination = destination.resolve()
    baseurl = "/" + baseurl.strip("/") if baseurl.strip("/") else ""
    files = [destination / "index.html", destination / "about.html"]
    files += sorted((destination / "content").rglob("*.html"))
    pages = {}

    def parse(path):
        if path not in pages:
            pages[path] = Page(path)
        return pages[path]

    @lru_cache(maxsize=None)
    def target_for_path(path):
        target = (destination / path.lstrip("/")).resolve()
        if target.is_dir():
            target /= "index.html"
        return target, target.is_file()

    errors = set()
    checked_links = 0
    for source in files:
        if not source.is_file():
            errors.add(f"Missing rendered page: {source}")
            continue
        source_url = baseurl + "/" + source.relative_to(destination).as_posix()
        for link in parse(source).links:
            if urlsplit(link).scheme or link.startswith("//"):
                continue
            url = urlsplit(urljoin(source_url, link))
            path = unquote(url.path)
            if baseurl:
                if path != baseurl and not path.startswith(baseurl + "/"):
                    errors.add(f"{source.relative_to(destination)}: link escapes baseurl: {link}")
                    continue
                path = path[len(baseurl):]
            target, exists = target_for_path(path)
            if not target.is_relative_to(destination):
                errors.add(f"{source.relative_to(destination)}: link escapes site: {link}")
                continue
            checked_links += 1
            if not exists:
                errors.add(f"{source.relative_to(destination)}: missing target: {link}")
            elif url.fragment and target.suffix == ".html":
                if unquote(url.fragment) not in parse(target).anchors:
                    errors.add(f"{source.relative_to(destination)}: missing anchor: {link}")

    expected_sections = {"research", "notes", "fiction", "worklog", "posts"}
    for section in expected_sections:
        if not (destination / "content" / section / "index.html").is_file():
            errors.add(f"Missing section landing page: content/{section}/")
    if not (destination / "content" / "index.html").is_file():
        errors.add("Missing notebook landing page: content/")
    if not (destination / "assets" / "css" / "custom.css").is_file():
        errors.add("Shared stylesheet is missing from root assets/")
    if errors:
        for error in sorted(errors):
            print(error)
        print(f"FAIL: {len(errors)} issues across {len(files)} pages")
        return 1
    print(f"PASS: {len(files)} pages, {checked_links} local links/assets, and heading anchors")
    return 0


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("destination", nargs="?", type=Path, default=Path("_site"))
    parser.add_argument("--baseurl", default="")
    args = parser.parse_args()
    raise SystemExit(check(args.destination, args.baseurl))
