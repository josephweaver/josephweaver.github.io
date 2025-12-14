# Project State – SpaceVoxel Alpha Slice

> This document tracks the evolving technical state of the Space-Voxel project.
> It is descriptive, not aspirational. Items listed here exist in code or have
> been fully specified and are ready for implementation.

---

## Core Systems Implemented (Prior)
- First-person camera movement (WASD + mouse)
- AR-style overlay toggled with B
- Horizontal selector UI
- ScriptableObject-driven component data model
- Prototype component spawning (fuel + nozzle blocks)

---

## Core Systems Specified (New – Weekend Work)

### Materials System (Tier 0 – Fully Specified)
- Deterministic, planet- and node-seeded material generation
- Broad material categories:
  - Metal
  - Stone / Silicate
  - Sedimentary / Carbon
  - Liquid
  - Gas
- Subtypes per category (metal oxides, native metals, volcanic glass, carbon-rich, etc.)
- Normalized property vector (Tier 0):
  - Strength
  - MaxTemperature
  - ThermalConductivity
  - ElectricalConductivity
  - ErosionResistance
  - CorrosionResistance
  - Density
  - Manufacturability
- Tier 0 guardrails:
  - One dominant property
  - One enforced weakness
  - Hard caps prevent cross-tier leakage
- Planet modifiers:
  - Temperature band
  - Pressure band
  - Atmospheric chemistry
  - Hydrosphere type
- ScriptableObject templates define category means, spreads, and subtype adjustments

### Material Visual System (Tier 0 – Fully Specified)
- Deterministic visual generation derived from material properties
- Visual states:
  - RawOre
  - ConcentratedOre
  - RefinedStock
  - ManufacturedPart
  - PaintedPart
- Visual parameters derived, not authored:
  - Base color (category palette + seed)
  - Metallic, smoothness
  - Noise, dirt, oxidation
  - Heat tint (manufactured parts only)
- URP-friendly approach using:
  - Shared master materials
  - MaterialPropertyBlock per instance
- Optional paint overlay as a cosmetic coating (does not erase material identity)

### Propulsion System – Nozzle Foundations (Tier 0 – Fully Specified)
- NozzleSpec ScriptableObject defined with **derived model**
- Authoritative inputs:
  - Propellant class
  - Design thrust (kN)
  - Chamber pressure Pc (MPa)
  - Expansion ratio (epsilon)
  - Design ambient pressure
- Geometry inputs:
  - Nozzle type (conical, bell reserved)
  - Length factor
  - Divergence half-angle
  - Throat curvature factor
  - Wall thickness
- Deterministic mesh parameters:
  - Axial profile samples
  - Radial segments
- Derived quantities (v0 model):
  - Throat area, exit area
  - Throat and exit radii
  - Nozzle length
  - Approximate thrust coefficient (Cf)
  - Placeholder effective Isp (SL / vacuum)
- Designed explicitly for:
  - Edit-time mesh generation
  - Deterministic results
  - Replacement of physics later without reauthoring geometry

---

## Folder Layout (Updated Direction)

Assets/
- Runtime/
  - Utils/
  - Materials/
  - Propulsion/
  - Blocks/
  - UI/
- Editor/
  - Materials/
  - Propulsion/

Namespaces:
- IR.Utils
- IR.Materials
- IR.Propulsion
- IR.Blocks
- IR.UI

Root namespace: **IR (Infinite Realms)**

---

## Current Behavior (Runtime)
- Press B opens selector
- Auto-drills into Propulsion
- Clicking Solid State spawns transparent FuelBlock + NozzleBlock prefabs
- Nozzle currently placeholder geometry

---

## Authoritative Data (Expanded)
- All gameplay components originate from ScriptableObjects
- Material properties are generated, not hand-authored
- Visual appearance is derived from material + processing state
- Nozzle geometry will be derived from performance parameters
- UI never hardcodes names, stats, or visuals

---

## Immediate Next Implementation Targets
1. NozzleProfileSamplerV0 (2D axial profile generation)
2. RevolveMeshBuilder (profile → mesh)
3. Hook NozzleSpecSO into NozzleBlock prefab
4. Apply MaterialVisualProfile to nozzle meshes
5. Add editor-time regeneration button

---

## Design Philosophy (Reaffirmed)
- Exploration reveals constraints, not solutions
- Engineering adapts designs to materials
- Early tech favors bulk, inefficiency, and compromise
- Systems are layered so realism can increase without rewrites
