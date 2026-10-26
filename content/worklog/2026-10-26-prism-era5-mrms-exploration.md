---
title: "PRISM, ERA5, and NOAA MRMS exploration — October 26"
description: I compared PRISM and ERA5 precipitation over 364 complete matched days and examined cases where ERA5 hourly proportions would be undefined.
date: 2026-10-26
project: worklog
topic: PRISM, ERA5, and NOAA MRMS precipitation
status: exploring
tags:
  - prism
  - era5
  - mrms
  - precipitation
---

# PRISM, ERA5, and NOAA MRMS exploration — October 26

## Work performed

I am exploring PRISM, ERA5, and NOAA MRMS precipitation data. For this study, I compared PRISM and ERA5 across **364 complete matched days**.

## Observations and results

| Measure | Result |
| --- | --- |
| PRISM precipitation total | 835.6 mm |
| ERA5 precipitation total | 893.4 mm — 6.9% higher than PRISM |
| Daily correlation | 0.82 |
| Wet/dry agreement at 1 mm/day | 91% |

One important exception: **0.7% of PRISM wet pixel-days had zero ERA5 precipitation**. Their ERA5 hourly proportion vectors would therefore be undefined.

## Boundary check

I checked whether the 0.7% discrepancy appeared to be a boundary artifact. In that check, it did not appear to be explained by boundaries. I still need to record the details of the check alongside these results.

## Working interpretation

The daily agreement does not resolve the zero-ERA5 cases. I need an explicit handling rule before relying on ERA5 hourly proportions for all PRISM wet pixel-days. I am keeping these findings scoped to this matched comparison.

## Next actions

- [ ] Inspect representative PRISM wet pixel-days with zero ERA5 precipitation and investigate what explains them.
- [ ] Define and test how to handle undefined hourly proportion vectors.
- [ ] Compare NOAA MRMS with PRISM and ERA5 using a documented spatial and temporal match.

## Restart note

When I return, I will first locate the comparison code and the records for the zero-ERA5 cases. I need to save the study area, date range, dataset versions, spatial matching and daily aggregation methods, wet-day definition, correlation method, and boundary-check procedure so I can reproduce the comparison.

Code and supporting results: `TODO: add verified file paths or repository and commit links`.

[Worklog index](README.md)
