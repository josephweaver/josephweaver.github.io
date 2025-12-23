# Nozzle Generator – Parameter Schema (v0.1)

Context:
- Unity 2022/2023, URP, C#
- Block-based ship parts using ScriptableObject component definitions
- `NozzleBlock` spawns a prefab that owns a procedurally generated nozzle mesh child
- Mesh generation is deterministic from parameters and optional seed
- Mesh generation occurs at edit-time or on parameter change, not per-frame

---

## 1. Performance-Defining Inputs

These parameters determine thrust, efficiency, and the primary geometric scales of the nozzle. Together, they define the operating point of the engine and anchor the procedural mesh.

### Required

- **PropellantClass** (enum)
  - Examples: Solid, LOX_RP1, LOX_LH2, Methalox, Hypergolic, Exotic
  - Controls internal defaults such as effective gamma, characteristic velocity (c*), chamber temperature limits, and cooling feasibility

- **DesignThrust_kN** (float)
  - Target thrust at the design altitude
  - Used to derive throat area given chamber pressure and thrust coefficient

- **ChamberPressure_MPa (Pc)** (float)
  - Combustion chamber pressure
  - Primary driver of throat size for a given thrust
  - Constrained by propellant class, materials, and cooling method

- **ExpansionRatio (epsilon = Ae / At)** (float)
  - Ratio of exit area to throat area
  - Determines exit diameter and vacuum efficiency
  - Strongly influences visual silhouette

- **DesignAmbientPressure_kPa (Pa)** (float) or **DesignAltitudeClass** (enum)
  - Ambient pressure at which the nozzle is optimized
  - Used to estimate thrust coefficient and expansion efficiency
  - Enables flow separation and overexpansion modeling

### Optional but Recommended

- **MixtureRatio_O_F** (float)
  - Oxidizer to fuel ratio for bipropellant systems
  - Influences effective performance and thermal limits
  - Can be hidden behind a simplified “lean vs rich” slider in UI

---

## 2. Geometry and Packaging Inputs

These parameters primarily affect shape, proportions, and visual identity, while preserving the same underlying performance model.

- **NozzleType** (enum)
  - Conical
  - Bell (Rao)
  - DualBell
  - Aerospike_Linear
  - Aerospike_Annular
  - Magnetic or EM Nozzle (non-gas-dynamic)

- **LengthFactor (L / L_conical)** (float)
  - Typical range: 0.6 to 1.0
  - Shorter lengths correspond to higher tech or bell optimization

- **DivergenceHalfAngle_deg** (float)
  - Used directly for conical nozzles
  - Used as a constraint or initial slope for bell contours

- **ThroatRadiusCurvatureFactor** (float)
  - Multiplier of throat radius
  - Controls smoothness of converging-diverging transition
  - Affects both visuals and estimated losses

- **WallThickness_mm** (float)
  - Used for mesh thickness, mass estimation, and collision bounds

- **NozzleMaterial** (enum)
  - Steel, NickelAlloy, CarbonComposite, Ceramic, Exotic
  - Affects mass, cost, temperature tolerance, and cooling constraints

---

## 3. Operational Constraints

These parameters define how the nozzle behaves during use, and allow one generator to support solids, liquids, and advanced propulsion.

- **CoolingMethod** (enum)
  - Ablative
  - Regenerative
  - Film
  - Radiative
  - Magnetic or Non-Contact (for plasma systems)

- **ThrottleRange_MinMax** (Vector2 or min/max floats)
  - Solids typically fixed
  - Liquids moderate
  - Plasma systems wide

- **MaxChamberTemperature_K** (float, derived or capped)
  - Derived from propellant, mixture ratio, cooling, and material
  - Used to validate designs and limit performance

- **BurnDurationLimit_s** (float)
  - Particularly relevant for ablative or solid motors

- **FlowSeparationRiskModel** (enum or bool)
  - Enabled for overexpanded sea-level designs
  - Depends on Pc, epsilon, and ambient pressure

---

## 4. Advanced and Future Parameters

These parameters are not required for the initial milestone, but are planned extension points and should be accounted for in the data model.

- **NozzleEfficiencyFactors**
  - Divergence loss
  - Boundary layer loss
  - Non-ideal expansion loss

- **Altitude-Compensating Parameters**
  - Dual-bell mode switch pressure
  - Aerospike plug contour parameters

- **EffectiveAreaSchedule**
  - Expansion behavior as a function of ambient pressure
  - Used for dual-bell and aerospike systems

- **GimbalLimits_deg**
  - Mechanical articulation constraints
  - Influences mount geometry and clearance

- **DeterministicSeed** (int)
  - Ensures reproducible mesh generation
  - Allows visual variation without performance changes

---

## 5. Derived Quantities (Internal)

These are not player inputs but are computed from the above parameters and passed to the mesh generator.

- Throat area (At)
- Throat radius (rt)
- Exit area (Ae)
- Exit radius (re)
- Nozzle length (L)
- Estimated thrust coefficient (Cf)
- Approximate Isp (sea-level and vacuum)

These derived quantities define the 2D nozzle profile, which is then revolved to generate the final mesh.
