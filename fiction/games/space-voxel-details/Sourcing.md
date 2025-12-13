# Manager AI – Soft Thresholding & Impact Preview Specification

## Purpose
Allow players to freely set resource and flow policies while preventing opaque or catastrophic failure.
All policies are accepted, but **their consequences are forecast, classified, and clearly communicated**
before and after application.

This preserves player agency while bounding frustration.

---

## Core Forecast Signals (evaluated per resource, per scope)

### 1. Infrastructure Delta
**Question:** How much new infrastructure is implied by this policy?

Computed as:
- Δ transports
- Δ mines
- Δ depots / relays

Thresholds:
- INFO:   +10–25%
- WARN:   +25–100%
- STRONG: +100%+

Example:
- “Transport capacity required: +110% (12 → 25)” ⚠⚠

---

### 2. Time-to-Empty (Buffer Burn-Down)
**Question:** How long until the on-hand buffer reaches zero under the new policy,
assuming current infrastructure and ramp plan?

Computed by simulating:
- current inventory
- consumption
- delayed production and logistics ramp-up

Thresholds:
- INFO:   > 60 min
- WARN:   15–30 min
- STRONG: < 15 min
- CRITICAL: < 5 min

Example:
- “Iron buffer exhausted in 14 minutes” ⚠⚠

---

### 3. Time-to-Compliance (Policy Lag)
**Question:** How long until the system meets the new target sustainably?

Includes:
- build times
- transport travel times
- survey delays
- construction bottlenecks

Thresholds:
- INFO:   < 15 min
- WARN:   15–60 min
- STRONG: > 60 min

Example:
- “Estimated time to stable supply: 1h 12m” ⚠⚠

---

## Impact Preview Panel (Shown on Policy Change)

When a player applies or edits a policy:

### Impact Preview
- Transport capacity change: +110% ⚠⚠
- Buffer exhaustion: 14 min ⚠⚠
- Time to stable supply: 1h 12m ⚠⚠
- Confidence: Low (40% surveyed)

Buttons:
- **Apply Anyway**
- **Apply with Safeguards…**

---

## Safeguards (Optional, Player-Selected)

### 1. Phase-In
Gradually apply the policy over time.
- Example: “Ramp iron sourcing to 100% over 20 minutes.”

### 2. Emergency Borrowing
Temporarily override reserve locks to prevent buffer collapse.
- Example: “Allow Cluster A to cover deficits until stable.”

### 3. Expansion Rate Cap
Limit how fast the AI can build infrastructure.
- Example: “Max +50% transports per 10 minutes.”

### 4. Consumption Throttling
Pause or slow non-critical consumers.
- Example: “Delay low-priority construction.”

---

## Warning Philosophy

- Warnings trigger only when the **new policy worsens forecasts**
  compared to the current state.
- Existing bad situations do not generate new warnings unless
  the player makes them worse.
- All warnings are informational, never blocking.

---

## Design Guarantees

- Policies never silently fail.
- Every shortage has a single-screen explanation.
- No configuration causes irreversible deadlock.
- Emergency recovery is always possible, but costly or reputationally damaging.

---

## Design Rule of Thumb

If a player action:
- increases infrastructure by >100%, or
- drains a buffer in <15 minutes, or
- takes >1 hour to stabilize,

then it must be:
- previewed,
- labeled clearly,
- and optionally phaseable.

This system ensures complexity remains **strategic**, not **punitive**.
