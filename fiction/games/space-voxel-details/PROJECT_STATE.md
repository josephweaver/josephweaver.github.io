# Project State – SpaceVoxel Alpha Slice

> This document tracks the evolving technical state of the Space-Voxel project.
> It is descriptive, not aspirational. Items listed here exist in code or have
> been fully specified and are ready for implementation or extension.

---

## Core Systems Implemented (Prior)
- First-person camera movement (WASD + mouse)
- AR-style overlay toggled with B
- Horizontal selector UI
- ScriptableObject-driven component data model
- Prototype component spawning (fuel + nozzle blocks)

---

## Core Systems Implemented (Procedural Generation – New)

### Procedural Generation Architecture (Foundational – Implemented)
A reusable, deterministic **Spec → Generator → Artifact** pipeline has been implemented for propulsion components.

**Key principles now enforced in code:**
- All generated geometry is derived from authoritative ScriptableObject specs
- Deterministic results via explicit `seed`
- Mesh generation is editor-time friendly, but callable at runtime
- Generated artifacts carry metadata for reproducibility and invalidation

---

### Propulsion System – Nozzle Generation (Tier 0 – Partially Implemented)

#### Implemented Components
- **NozzleSpec (ScriptableObject)**
  - Authoritative geometric and style inputs
  - Includes:
    - seed
    - thrust (placeholder, not yet physics-linked)
    - length
    - throatRadius
    - exitRadius
    - radialSegments
    - axialProfileSamples
    - throatCurvatureFactor
    - flareJitter
  - Designed to later transition fully to a derived-physics model without reauthoring assets

- **ProcArtifact**
  - Dumb output container for procedural generation
  - Holds:
    - Mesh
    - Bounds
    - specHash
    - generatorVersion
    - inlet / outlet positions
    - thrust axis
    - tags
  - Enables stale-bake detection and cross-machine regeneration

- **NozzleProfileSamplerV0**
  - Pure math sampler producing a 2D axial `(z, r)` profile
  - Deterministic with seed
  - Supports:
    - Rounded throat region
    - Conical diverging section
    - Optional deterministic exit flare jitter
  - No Unity scene dependencies

- **RevolveMeshBuilder**
  - General-purpose lathe / revolve utility
  - Revolves `(z, r)` profiles around +Z axis
  - Supports:
    - Configurable radial segments
    - Optional end caps
    - UV generation
    - Normal generation
  - Intended to be reusable for tanks, hull segments, pipes, etc.

- **NozzleGeneratorV0**
  - Orchestrates:
    - NozzleProfileSamplerV0
    - RevolveMeshBuilder
  - Produces a ProcArtifact with:
    - Generated mesh
    - Stable spec hash
    - Generator version tag
  - Establishes coordinate conventions:
    - Throat at z = 0
    - Exit at z = +L
    - Thrust axis = -Z

- **Editor Context Menu Preview**
  - Right-click NozzleSpec → *IR / Propulsion / Preview Nozzle From Spec*
  - Spawns a preview GameObject in-scene under `PROC_PREVIEW_ROOT`
  - Enables rapid iteration without baking assets

#### Known Limitations / Intentional Gaps
- **No wall thickness yet**
  - Current nozzle meshes are zero-thickness shells
  - Inner wall / outer wall + stitching not implemented
- **Triangle winding issue observed**
  - Outside surface is culled, interior visible
  - Requires:
    - Winding order fix or
    - `flipWinding` support in RevolveMeshBuilder
- **No physics-derived geometry yet**
  - Throat/exit currently user-authored
  - Physics-based derivation planned, not implemented
- **No baking pipeline yet**
  - Meshes are preview-only, not persisted as assets or prefabs

---

## Core Systems Specified (Still Valid)

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
- Optional paint overlay as a cosmetic coating

---

## Folder Layout (As Implemented)

Assets/
- Runtime/
  - Materials/
  - Propulsion/
    - Specs/
    - Generation/
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
- Nozzle block still uses placeholder geometry at runtime
- Procedural nozzle mesh currently previewed only via editor tools

---

## Authoritative Data (Reaffirmed)
- All gameplay components originate from ScriptableObjects
- Procedural meshes are derived, not hand-authored
- Spec + seed is sufficient to deterministically regenerate geometry
- Baked assets are an optimization, not the source of truth

---

## Immediate Next Implementation Targets (Updated)
1. Fix RevolveMeshBuilder triangle winding (outside surface visibility)
2. Add wall thickness support (inner + outer profile + stitching)
3. Add Bake command:
   - Save Mesh asset
   - Create Prefab
   - Stamp specGuid + specHash + generatorVersion
4. Hook baked nozzle into NozzleBlock prefab
5. Apply MaterialVisualProfile to generated nozzle meshes

---

## Design Philosophy (Reaffirmed)
- Exploration reveals constraints, not solutions
- Engineering adapts designs to materials
- Early tech favors bulk, inefficiency, and compromise
- Systems are layered so realism can increase without rewrites
- Procedural generation is a *tool*, not a gimmick
