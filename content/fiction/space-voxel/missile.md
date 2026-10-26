# Missile Design Philosophy  
**Space-Voxel Combat Systems**

> Missiles are not projectiles.  
> They are autonomous, time-delayed mission packages that shape the future.

This document defines the guiding principles, design dimensions, and progression model for missiles in *Space-Voxel*. Missiles are intelligent from day one. There is no “unlock homing missile → unlock better missile” ladder. Instead, progression expands the **design envelope**, the **certainty of prediction**, and the **degree of future control**.

---

## 1. Core Concept

A missile is a self-contained decision-making agent operating under delayed information.

Missiles:
- sense,
- predict,
- commit,
- adapt,
- and resolve outcomes over time.

A “miss” is not failure, it is an alternate branch of execution.

---

## 2. Missile = Autonomous Mission Package

Every missile is built from the same conceptual layers, available from the start.

### 2.1 Propulsion
Controls *where and when* the missile can act.

Parameters:
- Acceleration rate
- Burn duration
- Delta-V budget
- Thrust vector authority
- Thermal and structural limits

Tradeoffs:
- Higher acceleration increases detectability and structural stress
- Long burns improve pursuit but expose intent earlier

---

### 2.2 Guidance and Targeting
Controls *how the missile reasons about the future*.

Parameters:
- Sensor suite (optical, radar, gravimetric, exotic)
- Prediction model quality
- Update frequency
- Evasion doctrine
- Jamming and spoof resistance

Guidance does not guarantee hits.  
It constrains the **space of plausible futures**.

---

### 2.3 Payload
Controls *what happens if the missile reaches relevance*.

Payload modes:
- Kinetic penetrator
- High explosive
- Shaped charge
- EMP / system disruption
- Robotic delivery
- Cyber intrusion package
- Multi-stage or adaptive payloads

Payloads are selected by role, not by tier.

---

### 2.4 Terminal Behavior
Controls *how the missile resolves uncertainty*.

Terminal actions:
- Direct impact
- Proximity detonation
- Directional shaped charge
- Fragmentation dispersal
- Secondary agent deployment
- Post-miss action

Missiles never “do nothing.”

---

### 2.5 Countermeasure Interaction
Controls *how the missile survives interference*.

Parameters:
- Decoy discrimination
- ECM resistance
- Cooperative behavior with other missiles
- Adaptive retargeting
- Fail-soft execution logic

---

## 3. Misses Are Branches, Not Failures

If interception or direct hit fails, missiles execute alternate objectives.

### 3.1 Backward Shaped Charge
- Detonates opposite velocity vector
- Punishes late evasive burns
- Converts near-misses into lethal cones

---

### 3.2 Area Denial
- Disperses debris, plasma, or energized fragments
- Creates regions of:
  - sensor noise
  - physical danger
  - constrained maneuver space

Space itself becomes hostile.

---

### 3.3 Secondary Mission Execution
- Deploys micro-drones or probes
- Attaches to hull and drills
- Injects cyber payloads through sensor or power coupling
- Acts as beacon, relay, or tracker

---

## 4. Missiles as Future-Shaping Tools

Missiles do not exist to maximize DPS.

They exist to:
- force evasive burns,
- reveal acceleration limits,
- consume power and attention,
- collapse prediction uncertainty,
- shape the opponent’s future maneuver space.

A missile launch is an information attack.

---

## 5. Technology Progression Model

There is no static “unlock tree.”

Progression expands **capability bounds**, not options.

### Early Game
- Limited delta-V
- Crude sensors
- Weak evasion authority
- Easily spoofed

Missiles guess the future poorly.

---

### Mid-Game (Dominant Mode)
- High acceleration
- Reliable mid-course correction
- Cooperative targeting
- Strong countermeasure resistance

Missiles force movement and reveal intent.

---

### Late Game
- Operation in distorted spacetime
- Exploitation of causal asymmetries
- Denial of regions of space or time

Missiles control outcomes, not trajectories.

---

## 6. Design Invariants

The missile system obeys these rules at all tech levels:

- No missile guarantees a hit
- No missile is useless
- Every missile forces a reaction
- Every launch reveals information
- Every action has irreversible commitment

---

## 7. Procedural Representation

Missile appearance is driven by function.

- Guidance quality → sensor clusters, antenna density
- Acceleration → nozzle count, reinforcement rings
- Payload type → warhead geometry
- Post-miss capability → secondary ports or dispersal structures

Missiles should *look* like what they do.

---

## 8. Design Goal

Missiles are tools for:
- prediction warfare,
- commitment timing,
- and future control.

The battlefield is not space.  
The battlefield is time.

# Example Missile Specification  
## Tier 0 Missile — Contemporary-Era Baseline

> Tier 0 missiles represent *modern or near-future* technology.  
> They are already intelligent, homing, and purposeful, but operate with **severely constrained prediction, propulsion, and survivability**.

This missile establishes the baseline intuition for all higher tiers.

---

## Missile Name
**M-47 “Peregrine” Interceptor / Strike Missile**

Role:  
- Baseline strike  
- Demonstrates core missile concepts without exotic technology  

---

## 1. Operational Context

- Engagement range:  
  - 100 km – 2,000 km  
- Sensor delay:  
  - Negligible at this scale  
- Target motion assumptions:  
  - Limited acceleration  
  - Mostly inertial with brief burns  

This missile exists before light-second combat becomes dominant.

---

## 2. Propulsion System

**Type:**  
- Solid-fuel rocket motor

**Parameters:**
- Peak acceleration: ~20–30 g
- Burn time: 5–10 seconds
- Total delta-V: low
- Thrust vectoring: limited (small fins or gimbaled nozzle)

**Implications:**
- Missile commits early
- Little ability to recover from bad initial prediction
- Evasion authority is minimal

**Design intent:**  
This missile chases the *present*, not the future.

---

## 3. Guidance and Targeting

**Sensor suite:**
- Active radar seeker
- Basic infrared tracking

**Guidance model:**
- Proportional navigation
- Assumes smooth target motion
- No long-horizon prediction

**Update rate:**
- High, but local
- No sensor fusion beyond onboard systems

**Weaknesses:**
- Easily spoofed by decoys
- Vulnerable to jamming
- Cannot reason about delayed information

**Design intent:**  
Guidance is reactive, not predictive.

---

## 4. Payload

**Primary payload:**
- High-explosive fragmentation warhead

**Payload mass fraction:**
- Moderate

**Damage model:**
- Blast + shrapnel
- Effective against:
  - exposed structures
  - lightly armored hulls
  - external systems

**Limitations:**
- Poor penetration
- No specialization against hardened targets

---

## 5. Terminal Behavior

**Primary mode:**
- Proximity detonation

**Trigger conditions:**
- Radar return threshold
- IR bloom detection

**Post-miss behavior:**
- None

If the missile misses, it self-destructs.

This is intentional.  
Tier 0 missiles do not branch futures.

---

## 6. Countermeasure Interaction

**Defensive weaknesses:**
- Radar decoys
- Chaff
- Simple ECM
- Sharp evasive maneuvers

**Resistance:**
- Minimal

**Cooperation:**
- None
- Each missile operates independently

---

## 7. Survivability

- No armor
- No redundancy
- No point-defense evasion
- Easily intercepted by:
  - lasers
  - CIWS-style defenses
  - interceptor missiles

---

## 8. Procedural Visual Profile

**Overall silhouette:**
- Slender cylindrical body
- Single rear nozzle
- Small control fins
- Modest sensor nose cone

**Visual cues:**
- Small antenna cluster
- Minimal reinforcement rings
- No secondary ports or payload modules

This missile *looks simple* because it is.

---

## 9. Tactical Use

Effective when:
- Targets are slow or predictable
- Defenses are weak
- Engagement ranges are short

Ineffective when:
- Targets maneuver aggressively
- ECM is present
- Engagements involve long prediction horizons

---

## 10. Design Takeaways

Tier 0 missiles:
- Already home on targets
- Already make decisions
- Already force reactions

But they:
- react instead of predict,
- commit too early,
- and fail completely when wrong.

All higher-tier missiles evolve from this baseline by:
- expanding prediction horizons,
- adding post-miss branches,
- increasing survivability,
- and shaping futures instead of chasing them.

# Tier 0 Missile Production and Launch Systems  
## M-47 “Peregrine” Baseline Missile

This note answers two questions:
1. What is required to produce a Tier 0 missile in-game?
2. Does the launch mechanism matter, and should railgun-like acceleration exist?

---

## 1. What Is Required to Produce a Tier 0 Missile?

### 1.1 Required Industrial Capabilities
A Tier 0 missile requires a ship or station to have the following manufacturing capabilities.

**Airframe and structures**
- Precision machining or additive manufacturing for:
  - cylindrical pressure vessels
  - nozzle hardware
  - control surfaces (fins) or small gimbal mounts
- Materials:
  - basic aerospace alloys (aluminum, steel, titanium)
  - high-temperature nozzle liner materials (simple ceramics or ablatives)

**Propulsion**
- Solid rocket motor manufacturing:
  - propellant mixing and casting
  - cure and inspection
  - nozzle and grain geometry control
- Basic ignition and safe handling:
  - initiator charges
  - arming and safing devices

**Guidance and sensing**
- Electronics fabrication and assembly:
  - inertial measurement unit (IMU)
  - simple flight computer
  - basic radar seeker and/or IR seeker
- Calibration and testing:
  - seeker alignment
  - IMU bias calibration
  - environmental vibration testing (even if simplified)

**Warhead and fuzing**
- Explosive fill and casing:
  - fragmentation casing manufacturing
  - explosive casting/pressing
- Proximity fuze:
  - radar proximity sensor or simple timing + sensing logic
- Safety mechanisms:
  - safe/arm sequence
  - launch acceleration interlocks

**Quality control**
Tier 0 missiles should not be “perfect.”
- Misfires, guidance faults, and fuze failures can exist as low-probability events.
- Better factories reduce failure rates.
- Harsh environments (radiation, heat) increase failure rates.

---

### 1.2 Suggested In-Game Resource Inputs
Use inputs that are intuitive and align with your broader materials/tech progression.

**Core materials**
- Structural alloys (generic “Aerospace Alloy”)
- Ceramics / ablatives (for nozzle throat)
- Electronics (generic “Guidance Package”)
- Chemical propellant (generic “Solid Propellant”)
- Explosives (generic “HE Fill”)

**Optional components (for variants)**
- Better sensors (IR, radar, dual-mode)
- Better casing (tungsten fragments, hardened penetrator nose)
- Better power (thermal battery vs simple battery)

---

### 1.3 Production Facilities (Gameplay Hooks)
A nice gameplay model is to require capabilities rather than fixed “missile factory.”

Example capability modules:
- Propellant Plant (mix + cast)
- Electronics Bench (guidance + sensor assembly)
- Warhead Bay (explosive handling)
- Assembly Line (final integration)
- Test Stand (reduces dud rate, improves seeker accuracy)

This supports your “design envelope” tech philosophy.

---

## 2. Does the Launch Mechanism Matter?

### 2.1 Simple Rule
The launch mechanism matters only if it changes one of these:
- missile survivability at launch
- initial velocity and thus time-to-intercept
- required ship volume/mass/power
- detectability and signature
- compatibility with the ship’s tactical doctrine (stealth, ambush, brawler)

If it does not change one of these, treat it as cosmetic.

---

## 3. Baseline Tier 0 Launch: Cold Launch + Ignition
**Cold launch** (ejection) then motor ignition is a good baseline:
- safer for the host ship
- minimizes exhaust damage
- matches “modern-ish” doctrine

This can be implemented with:
- gas generator
- spring ejector
- small kick motor

---

## 4. Should You Add Railgun-Like Acceleration?

Yes, but treat it as a *launcher system*, not a missile upgrade.

A rail-accelerated missile is not “better guidance.”  
It is a different ship doctrine with real tradeoffs.

### 4.1 Benefits of a Rail-Accelerated Launch
- Higher initial speed reduces:
  - intercept time
  - time exposed to point defense
  - how far the target can diverge before the missile corrects
- Allows smaller rocket motor for the same reach (or higher reach for same mass)
- Enables “boostless” initial phases for stealthier launches (less plume early)

This makes missiles feel more consistent without becoming guaranteed hits.

---

### 4.2 Costs and Tradeoffs (Important for Balance)
Rail launch should demand:
- ship power delivery (big instantaneous draw)
- capacitor banks
- heat management
- launcher maintenance and wear
- structural reinforcement
- limited firing arcs if the launcher is bulky

Also, high launch acceleration implies:
- more robust missile structure (costly)
- greater guidance shock-hardening
- higher failure rates if built cheaply

This prevents rail launch from being a free upgrade.

---

### 4.3 Gameplay Interpretation
**Tube launch doctrine**
- cheap, flexible
- good for mass salvos
- poor for “snap shots”

**Rail launch doctrine**
- expensive, power-hungry
- better for short warning-time intercepts
- enables ambush “pop-up” kills
- pairs well with sensor-lock and predictive play

---

## 5. Procedural Rendering Implications

### Tube/Cold Launch Visual Cues
- boxy cell grid
- doors and ejection pistons
- compact missiles with visible fins

### Rail Launch Visual Cues
- long acceleration track
- capacitor bulges near launcher
- heavy bus bars and cooling
- missiles with:
  - reinforced collars
  - fewer fins (if thrust-vectoring)
  - “sabot” style launch shoe (optional visual)

---

## 6. Recommendation for Implementation

Start with two launch systems that are easy to explain and visually distinct:

1. **VLS / Tube Launch**
   - simple, low power
   - default early-game

2. **Rail-Assisted Launch**
   - high power draw + heat
   - higher initial speed
   - mid-game ship specialization

Keep missile behavior specs the same.  
Let the launcher change the initial conditions and ship constraints.

