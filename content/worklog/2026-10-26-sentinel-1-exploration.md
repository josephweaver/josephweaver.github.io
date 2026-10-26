---
title: "Sentinel-1 exploration — October 26"
description: I built an interactive Sentinel-1 viewer and inspected radar signatures within fields and across land-cover types.
date: 2026-10-26
project: worklog
topic: Sentinel-1 radar signatures
status: exploring
tags:
  - sentinel-1
  - remote-sensing
  - agriculture
repos:
  - https://github.com/josephweaver/sentinal-1
  - https://github.com/josephweaver/sentinal-1-viewer
---

# Sentinel-1 exploration — October 26

## Built

I built an interactive viewer for examining radar signatures at different locations.

## Observed

- I saw substantial differences between nearby points within the same field.
- The points generally followed a shared temporal pattern, with an apparent linear relationship and some outliers.
- I saw noticeably different radar signatures for roads, lakes, and buildings.
- Two fields growing different crops showed similar signatures in the examples I examined.

## Working interpretation

In the examples I examined, differences between land-cover types appeared clearer than differences between crops. Within-field variability could complicate comparisons between fields. These are useful initial observations that I need to test more systematically.

The shared temporal pattern and apparent linear relationship are visual impressions, not established general results. I am not reporting a fitted relationship or a numerical correlation here.

## Next actions

- [ ] Compare original and mean-centered VV/VH time series.
- [ ] Compare variation within fields against variation between fields.
- [ ] Inspect acquisitions where individual points depart from the shared temporal pattern.

## Restart note

The viewer is built, and these comparisons remain exploratory. When I return, I will first record the viewer code version, sampled locations, acquisition dates, preprocessing, and units so I can repeat the comparisons.

## References and related work

- [sentinal-1](https://github.com/josephweaver/sentinal-1)
- [sentinal-1-viewer](https://github.com/josephweaver/sentinal-1-viewer)

Session code versions: `TODO: add commit-specific links for the versions used in this session`.

[Worklog index](README.md)
