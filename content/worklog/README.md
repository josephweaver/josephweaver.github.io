---
title: Worklog
description: I record what I did each day so I can track what went where and pick it up again.
project: worklog
status: active
tags:
  - research-worklog
---

# Worklog

I use this worklog to record my daily research, experiments, development, and exploratory ideas. I preserve enough context to resume work without reconstructing my thinking: what I was asking, what I tried, what I observed, and where I stopped.

Unfinished experiments, negative results, and playful explorations belong here. I write in first person and use clear, concrete language. I scale the detail to the work; a useful record can be a few paragraphs or a longer report.

[Research index](../research/README.md) | [Report template](TEMPLATE.md) | [Worked example](#worked-example-sentinel-1-viewer)

## Reports

There are no dated reports yet. As I add them, I maintain a linked index here, newest first, with each report's date, descriptive title, and status. For multiple reports on one day, I use the recorded times or sequence suffixes to order them when relevant.

The worked example below illustrates the format; it is not a separate report.

## Files and organization

I keep dated reports directly in `content/worklog/`. A **report** is one Markdown file; an **entry** is a related question, experiment, or development session within that report.

I use lowercase, hyphen-separated topics and the naming pattern `YYYY-MM-DD-short-topic.md`. Different topics can have separate reports on the same day. If I need another report on the same topic that day, I append `-02`, `-03`, and so on; the first report has no number.

These are filename patterns, not existing reports:

```text
YYYY-MM-DD-short-topic.md
YYYY-MM-DD-short-topic-02.md
YYYY-MM-DD-another-topic.md
```

I group several entries in one report when they share useful context. I give each entry a unique level-two heading, put its sections under level-three headings, and include a Contents list linking to every entry when there is more than one. When I rename an entry heading, I update its Contents link and any links from other reports.

## Starting a report

I copy [TEMPLATE.md](TEMPLATE.md) to a dated filename, replace the title in both the front matter and heading, and uncomment and fill in `date`. I remove unused sections and instructional placeholders. For a small entry, a question, observations, and a next action or restart note may be enough.

I follow the site's YAML front-matter convention. The content layout is inherited from `_config.yml`; I do not need to repeat it. The template's date is commented out so the template does not appear as a dated report in the site's recent-activity listing.

| Field | What I record |
| --- | --- |
| `title` | A descriptive title that names the work or question. |
| `date` | The session date as `YYYY-MM-DD`, matching the filename. |
| `time` | An optional time and time zone when session order matters. |
| `project` | `worklog`, matching this folder and the site's project grouping. |
| `topic` | The actual project or topic I worked on. |
| `status` | `exploring`, `active`, `paused`, or `concluded`. |
| `tags` | Relevant tags when useful; I can leave `[]` or omit the field. |

I use `exploring` while forming questions, `active` for work underway, `paused` when I stop pending time or information, and `concluded` when I have finished or deliberately closed the work described. A concluded experiment can have a negative or inconclusive result.

## What I record

The template's sections are prompts, not a checklist I must complete every time.

- **Question or objective:** What am I trying to understand or accomplish?
- **Context:** Why does this matter to me, and what prior work does it build on?
- **Work performed:** What did I build, change, inspect, or test?
- **Data and methods:** Which sources, versions, preprocessing, parameters, and assumptions did I use? What would I need to repeat the work?
- **Observations and results:** What did I actually see or measure? I include relevant figures, units, measurements, errors, and negative results, and distinguish visual impressions from computed quantities.
- **Interpretation:** What might explain the observations? I label hypotheses and uncertainty explicitly, and state conclusions only as far as the evidence supports them.
- **Limitations and checks:** What alternative explanations remain, what did I verify, and what still needs checking?
- **Next actions:** What small, executable steps can I take in another session?
- **Restart note:** Where did I stop, which files or commands matter, and what is the first thing I should do when I return?
- **References and related work:** Which code, data, reports, papers, or relevant projects support or connect to this work?

I keep observations separate from explanations. If I revise an interpretation later, I record why it changed and link the follow-up evidence. I do not invent results, URLs, or supporting evidence to fill a section.

## Linking related work

I prefer relative links within this repository, including links to a specific entry when that is more useful than the whole report. These illustrative link patterns need real filenames and matching heading anchors before use:

```markdown
[Earlier report](YYYY-MM-DD-short-topic.md)
[Specific entry](YYYY-MM-DD-short-topic.md#entry-1-short-entry-title)
[Follow-up experiment](YYYY-MM-DD-short-topic-02.md)
```

In a follow-up, I link back to the earlier report and explain which question or result I am revisiting. Once the follow-up exists, I add a forward link to the earlier report so I can follow the thread in either direction. I also add the new report to this page's index.

I link related GitHub repositories, specific files, commits, issues, and pull requests when they help explain or reproduce the work. When the exact code version matters, I use a commit-specific file link with `blob/<full-commit-sha>/path/to/file` or a commit link with `commit/<full-commit-sha>`, rather than relying on a moving branch. I include other projects only when they are relevant.

If I do not know a URL, I leave a clearly marked plain-text placeholder such as `TODO: add verified viewer repository URL`. I replace it with a real link after checking it.

## Worked example: Sentinel-1 viewer

- **Date:** 2026-10-26
- **Topic:** Interactive Sentinel-1 viewer
- **Status:** exploring

### Question or objective

How do radar values and time series compare among nearby points in a field, across fields, and across other surfaces?

### Work performed

I built an interactive Sentinel-1 viewer and used it to inspect radar signatures.

### Observations and results

I saw substantial differences in radar values among nearby points within the same field. Their time series generally rose and fell together, with occasional departures from the shared temporal pattern. Roads, lakes, and buildings showed noticeably different radar signatures. Two fields growing different crops appeared to have similar signatures.

### Interpretation

This is an exploratory visual observation from this session. The shared temporal pattern may be worth investigating despite differences in radar values. The apparent similarity of the two crop fields does not establish a general result about crops or fields. I have no numerical correlation to report here.

### Next actions

- I will compare original and mean-centered VV/VH time series.
- I will compare variation within fields against variation between fields.
- I will inspect acquisitions where individual points depart from the shared temporal pattern.

### Restart note

I will start by locating the viewer code and recording its version, the selected points, acquisition dates, and preprocessing needed to reproduce this inspection.

Viewer code: `TODO: add verified repository and commit URLs`.
