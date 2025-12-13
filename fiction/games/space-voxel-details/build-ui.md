## Unified Build UI Philosophy

The build system uses **one builder and one simulation**, accessed through **two camera modes**.  
The difference between “AR” and “VR” is not technology, it is **camera anchoring and authority**.

---

### Core Principle
> Everything is built with the same tools.  
> What changes is *where the camera is* and *what authority it grants*.

---

## Camera Modes

### 1. World-Anchored Mode (In-Situ / AR)
**Purpose:** Grounding, intuition, and consequence.

- Camera is pinned to:
  - the player avatar
  - a drone
  - or a fixed world location
- World remains visible and spatially correct
- UI appears as overlays and holograms
- Editing is limited by:
  - proximity
  - access
  - safety constraints

**Used for:**
- Inspecting systems
- Viewing envelopes, arcs, and heat flows
- Swapping modules or loadouts
- Committing designs
- Living with past decisions

This mode answers:  
**“What is this, and how does it exist in the world?”**

---

### 2. World-Detached Mode (Engineering / Design)
**Purpose:** Reasoning, iteration, and planning.

- Camera is free-flying and unbounded
- World may be dimmed, frozen, or hidden
- Time can be paused or scrubbed
- UI becomes dense and analytical
- Full system authority is available

**Used for:**
- Designing missiles, weapons, ships, and bases
- Editing component graphs and parameters
- Running simulations and stress tests
- Comparing variants and branching designs
- Saving doctrines and templates

This mode answers:  
**“What will happen if I commit to this future?”**

---

## Authority Model

Actions are gated by **type of authority**, not by menus.

| Action Type | Authority | Camera Mode |
|------------|-----------|-------------|
| Inspection | Cognitive | Either |
| Minor tuning | Physical | World-Anchored |
| Deep redesign | Cognitive | World-Detached |
| Simulation | Cognitive | World-Detached |
| Final commit | Physical | World-Anchored |

---

## Design Invariants

- One simulation state
- Multiple camera controllers
- No duplicated logic
- Complexity is shown visually, not hidden in text
- The builder scales from missiles to bases without changing mental model

---

### Design Mantra
> One builder.  
> One simulation.  
> Two camera modes.  
> Time is the battlefield.

## Ship Slicing and Orthographic Views (X/Y/Z)

A core builder feature is the ability to **slice the ship along X, Y, and Z** to reveal internal layout, routing, and structural layers. This supports the “ships are engineered objects” theme and makes large designs readable without relying on external editors.

---

### Goals
- Make navigation and compartment layout obvious (floor plans, decks).
- Make system integration visible (power, coolant, data, ammo paths).
- Reduce cognitive load by letting the player “peel the onion.”
- Provide consistent views across ships, bases, and large weapon systems.

---

## View Modes

### 1) Z-Slice: Deck / Floor Plan View (Top-Down)
- Slice plane moves vertically through the ship.
- Shows:
  - rooms and corridors
  - bulkheads and doors
  - equipment footprints
  - hazards and damage zones
- Optional: “Multi-deck selection” for tall rooms or hangars.

This is the primary mode for interior design and navigation.

---

### 2) X-Slice: Front/Rear Cross-Section (Side Cut)
- Slice plane moves along the ship length.
- Shows:
  - compartment stacking
  - armor thickness gradients
  - engine/drive train alignment
  - recoil bracing paths for large weapons

Best for understanding longitudinal structure and thrust lines.

---

### 3) Y-Slice: Port/Starboard Cross-Section (Front Cut)
- Slice plane moves across the ship width.
- Shows:
  - symmetry and balance
  - turret wells and firing arcs obstructions
  - radiator placement vs protected internals
  - lateral routing and redundancy

Best for balance, survivability, and turret integration.

---

## UI Controls (Unified Across Modes)
- Three slice sliders (X, Y, Z) with numeric readout and snap-to-deck markers.
- Toggle:
  - single slice plane
  - thick slice (“slab”) for viewing multiple layers at once
  - exploded view spacing between decks/sections
- “Pin slice to component” (jump slice plane to the selected room/system).
- “Lock axes” (move only Z for deck editing, for example).

---

## Overlay Layers (Optional Toggles)
- Power flow heatmap
- Coolant / air / mass-flow routes
- Data bus / sensor network routes
- Structural load paths (thrust, recoil, impact)
- Combat overlays:
  - line-of-sight and firing arcs
  - vulnerable-through-the-slice pathways
  - compartment isolation boundaries

---

## Design Invariants
- Slices are a **view**, not a separate build mode.
- Same slicing tools apply to ships, bases, and large systems.
- Slices work in both camera modes:
  - World-Anchored: inspection + local edits
  - World-Detached: planning + full redesign

---

### Outcome
Slicing turns a voxel hull into a readable engineering object:
- **Z-slice** answers “How do people move?”
- **X-slice** answers “How does the ship push and brace?”
- **Y-slice** answers “How is the ship balanced and protected?”
