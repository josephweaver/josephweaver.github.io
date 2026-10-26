# Procedural Modeling & Mechanical Articulation – Concept Document (v0)

## Purpose

This document captures the core design decisions, abstractions, and next steps for a **procedural object generation system** driven by **hierarchical graphs**, authored by AI or humans, and compiled into:

- geometry
- materials
- articulation (motion)
- optional physics-like behavior

The intent is to preserve **determinism, debuggability, and extensibility**, while avoiding early commitment to heavy physics solvers or free-form geometry that would destabilize the system.

This document is meant to be sufficient context to resume development or discussion later without re-deriving the ideas.

---

## High-Level Philosophy

### Core Insight
AI (LLMs) work **far better with graphs, symbols, and constraints** than with Euclidean vector geometry.  
Therefore:

- AI authors **intent**, not meshes
- Geometry is **compiled**, not edited
- Motion is **declared**, not simulated via forces (initially)

The system is designed as a **compiler pipeline** for physical artifacts.

---

## Core Architecture Overview

### Primary Pipeline

Text / Prompt
↓
Hierarchical Object Graph (YAML / DSL)
↓
Geometry Compiler
↓
Meshes + Named Frames
↓
Articulation Compiler
↓
Joints, Actuators, Couplings
↓
Resolver
↓
Final Transforms / Motion


Optional layers:
- Material Profiles
- Validators
- Failure / Damage Systems
- Later: Physics solvers

---

## Object Representation

### Object Graph
- Hierarchical
- Typed nodes (“phrases”)
- Deterministic (spec + seed)
- YAML-authored

Example node categories:
- Manufactured geometry: `RevolveProfile`, `Shell`, `Flange`, `ExtrudeProfile`
- Assemblies: `Union`, `BooleanUnion`
- Metadata: `Socket`, `Frame`

Each node:
- Owns the geometry it produces
- Can emit named frames for alignment, articulation, or attachment
- Can be validated independently

---

## Geometry Strategy

- No free-form meshes
- No AI-written triangle soup
- Geometry is always the result of compiling **phrases**

Key properties:
- Deterministic
- Inspectable
- Repairable
- Validatable

---

## Articulation & Motion Model

### Key Decision
**Motion is inherited through constraints, not pushed through forces.**

This avoids:
- contact instability
- solver explosions
- tooth-level physics
- non-determinism

### The Actuator–Coupling–Resolver Model

#### Actuator
- Injects motion or intent
- Examples:
  - motor drives a hinge angle
  - player input drives a slider
- Targets a single DOF

#### Coupling
- Declares a relationship between DOFs
- Examples:
  - gear ratio
  - rack–pinion
  - belt drive
  - lead screw
- Does NOT apply force
- Expresses equations like:
  - `output = input * ratio + offset`

#### Resolver
- Evaluates actuators first
- Propagates motion through couplings
- Applies limits, clamps, backlash
- Writes final transforms to links

Initial resolver is **purely kinematic**.

---

## Mechanical Systems (Rack & Pinion, Gears, Clockwork)

### Design Choice
- Pinion rotation and rack translation are **kinematically coupled**
- Rack does NOT receive force from tooth contact
- Teeth are visual, not physical (v0)

Example:
rack_position = pinion_angle * pitch_radius


### Benefits
- Stable
- Deterministic
- Network-friendly
- Easily extensible to:
  - torque limits
  - stall behavior
  - failures

### Clockwork / Gear Trains
- One actuator drives a root gear
- Other gears inherit motion via declared ratios
- Direction, ratio, and phase are explicit
- Coupling graph is preferably a DAG in v0

---

## Material System (Future-Proofed)

### Design Decision
Separate **material identity** from **material state**.

#### Material Profiles (static)
Examples:
- density
- Young’s modulus
- Poisson ratio
- yield / ultimate strength
- melting point
- gameplay knobs (brittleness, ductility)

#### Material Assignments
- Per node
- Per link
- Default fallback

#### Material State (runtime)
- temperature
- accumulated damage
- fatigue
- wear

No FEM required initially. Early failure modes:
- joint breakage
- overload stall
- scripted fracture

---

## Validation & Safety

### Hard Constraints
- manifoldness (if required)
- minimum wall thickness
- valid articulation references
- limits consistency

### Soft Constraints
- ratio sanity
- aesthetic heuristics
- style warnings (“Frankenstein score”)

Validators must:
- attribute blame to specific graph nodes
- emit structured reports
- support repair suggestions

---

## AI Integration Model

AI responsibilities:
- Author YAML object graphs
- Select phrases and parameters
- Respond to validator reports
- Choose from allowed repair operations

AI is NOT allowed to:
- edit meshes
- bypass constraints
- invent new phrase types (unless explicitly permitted)

---

## Future-Proofing Decisions Locked In

1. Geometry, articulation, and materials are **separate layers**
2. Motion is **constraint-driven**, not force-driven (v0)
3. Named frames exist everywhere for alignment and joints
4. Assemblies distinguish between:
   - logical grouping
   - boolean mesh union
5. All motion is expressible as DOF relationships

These prevent large-scale rewrites later.

---

## What Is Explicitly Out of Scope (for now)

- Tooth-level contact physics
- FEM or continuum deformation
- Realistic human/animal anatomy
- Cloth, hair, fluids
- Photoreal rendering concerns

---

## Immediate Next Steps

### Engineering
1. Implement minimal phrase set:
   - `RevolveProfile`
   - `Shell`
   - `Union`
   - `ExtrudeProfile`
2. Support named frames
3. Support multi-mesh output (links)
4. Store articulation metadata verbatim

### Articulation
5. Implement v0 resolver:
   - actuators
   - directional couplings
   - limits/clamps
6. Support:
   - hinge joints
   - slider joints
   - gear_ratio coupling
   - rack_pinion coupling

### Validation
7. Add 1–2 hard validators
8. Emit structured blame reports

---

## Design North Star

> **Declare intent. Compile structure. Resolve motion.**
>
> Never ask AI to reason in Euclidean geometry when a graph will do.

This document captures the conceptual backbone.  
Everything else is implementation detail.



## Modeling Language Development (Words, Phrases, Grammar)

### Purpose
Define a **restricted modeling language** that is:
- expressive enough to build useful mechanical assets
- deterministic and debuggable
- validator-friendly (blame assignment)
- AI-authorable (LLM works best with typed graphs and limited vocabularies)

We deliberately avoid free-form meshes. The language is the bridge between:
- natural language intent (from human or AI prompt)
- compiled geometry + metadata + articulation

---

## Vocabulary: Words vs Phrases

### Level 0: “Letters” (engine internals, not exposed to AI)
These are primitive operations the runtime uses but we try not to expose directly:
- raw triangle edits
- arbitrary boolean sequences
- unconstrained noise deformation
- unbounded loops/recursion

Goal: keep AI away from these.

### Level 1: Words (atomic, reusable building blocks)
These are the minimum set of typed nodes that can be safely composed.
Words should:
- have explicit parameters
- have stable output semantics
- emit useful frames and ownership tags

### Level 2: Phrases (semantic macros)
Phrases are parameterized subgraphs that compile to words.
Examples:
- “MountingFlangeWithBolts”
- “BellNozzleCore”
- “StepperMotorHousing”
- “RackAndPinionModule”

Phrases are where “language feels human.”
Words are where compilation stays safe.

---

## Proposed Core Word Set (v0, Manufactured Assets)

### A) Primitives / Generators
1. **RevolveProfile**
   - Input: profile points (z,r), axis, resolution
   - Output: solid of revolution
   - Typical use: nozzles, caps, pipes, hubs

2. **ExtrudeProfile**  (critical next addition)
   - Input: 2D profile (x,y), length, axis/frame
   - Output: prismatic solids
   - Typical use: rails, plates, brackets, housings

3. **SweepProfile** (optional v0.5)
   - Input: profile + path (polyline/spline)
   - Output: bent pipes, cable conduits, guards

4. **PrimitiveSolid** (optional; convenience only)
   - box, cylinder, capsule, sphere
   - can be implemented as thin wrappers around revolve/extrude

### B) Transforms / Placement
5. **Transform**
   - child + local transform
   - use sparingly; prefer attaching via frames/sockets

6. **Frame** (generalized socket concept)
   - emits a named coordinate frame
   - used for alignment, joints, connectors, assembly

### C) Constructive Assembly (two-tier semantics)
7. **Group** (logical assembly)
   - children list
   - does NOT boolean-merge
   - preserves multiple parts for articulation

8. **BooleanUnion** (mesh merge)
9. **BooleanSubtract**
10. **BooleanIntersect** (optional)

Rule: use **Group** by default, use boolean ops only when needed.

### D) Structural Operations
11. **Shell**
   - thickness
   - child
   - used for walls, casings, nozzles

12. **Fillet/Chamfer** (optional v0.5)
   - if hard, postpone; can be faked with profile smoothing for revolve/extrude

### E) Patterning / Replication (high leverage)
13. **ArrayLinear**
   - replicate child along an axis with spacing/count
   - used for rack teeth, heat sink fins, bolt rows

14. **ArrayPolar**
   - replicate child around an axis (count, radius, angle offset)
   - used for bolt circles, turbine blades, gear teeth

### F) Cutters (common mechanical features)
15. **Hole**
   - cylinder cut or profile cut with depth
   - used for bolts, ports, vents

16. **BoltCircleCut** (can be a phrase in v0; word in v1)
   - specialized convenience node

### G) Metadata / Semantics
17. **Socket**
   - name + transform or frame reference
   - for attachment points and assembly integration

18. **MaterialAssign**
   - assigns material profile id to node/link (or references top-level mapping)

---

## Required Non-Geometric Language Components

### 1) Parameter System
- typed parameters with min/max/default
- derived parameters via limited expressions
- randomization points must be seed-controlled

### 2) Ownership Tracking (blame system)
Each node must be able to claim ownership of:
- produced mesh parts
- emitted frames
- key surfaces/regions (optional later)

This enables validator reports like:
- “min wall thickness violated in node X”
- “hole intersects shell due to parameter Y”

### 3) Validation Hooks
Words should expose “expected invariants,” for example:
- Shell(thickness) expects thickness ≥ min
- Boolean ops expect non-empty operands
- Arrays expect spacing > 0 and count reasonable

---

## Phrase Library Roadmap (v0 → v1)

Phrases are how we get “English-like modeling” quickly.

### Immediate phrases (built from v0 words)
- **MountingFlangeWithBolts**
- **PipeConnector**
- **CouplerAdapter**
- **NozzleBellCD** (converging-diverging profile generator)
- **RackTeethTrapezoid** (simple tooth profile)
- **GearTeethStylized** (visual gear teeth)
- **StepperMotorBodyStylized** (housing + flange + shaft)

### Later phrases (more realism)
- **GearTeethInvolute** (requires more math and careful meshing)
- **BearingSeat**
- **KeyedShaft**
- **SplineShaft**
- **SealedJoint**
- **HeatShieldLayeredMaterial**

---

## Grammar: How Words Compose

### Graph Composition Rules (v0)
- The object is a rooted graph of nodes with references by id
- Prefer tree-like structure; allow DAG for sharing subgraphs
- Avoid cycles in geometry graph
- Keep articulation couplings in a separate graph (can have cycles later if resolver supports it)

### Assembly Semantics
- `Group` preserves part boundaries
- `Boolean*` merges or cuts meshes
- `Transform` places parts; `Frame` stabilizes alignment

---

## How “Words” Enable AI Reliability

We constrain the AI to:
- pick from known node types
- fill required fields
- bind parameters/derived expressions
- attach frames and sockets

We do NOT let the AI:
- invent new types
- create arbitrary algorithms
- bypass validators

This keeps outputs predictable and repairable.

---

## Likely Next Steps (Language Work)

1. Add **ExtrudeProfile**, **Group**, **ArrayLinear**, **ArrayPolar**, **Frame**
2. Update YAML schema to distinguish:
   - grouping vs boolean union
3. Implement ownership tags per node output
4. Write 5–10 phrase macros for common mechanical motifs
5. Extend prompt template to:
   - list allowed words
   - request phrases when possible
   - enforce YAML-only output
