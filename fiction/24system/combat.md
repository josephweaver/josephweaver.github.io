## Basic Combat Actions (RHLF)

This section presents the **default combat actions** available to all characters.  
These actions are designed for fast play and do not require players to assemble body anchors manually.

Advanced options, custom assemblies, and special feats are presented in later sections.

---

## Automatic Actions (Always Available)

The following actions do **not** require declaration unless otherwise noted.  
They represent instinctive, trained, or reflexive behavior.

---

### Default Guard (H)

- Requires: `H`
- Automatic while:
  - You are aware of danger
  - You are not currently engaged
  - You are not committing your Head (H) to another task

**Effect**
- You threaten space and contest enemy advances
- Guard is directional and limited to one approach by default
- Guard ends immediately if you commit `H` elsewhere (attack, cast a spell, aim, etc.)

Default Guard represents attention, posture, and readiness, not an attack.

---

### Defense

Defense represents instinctive reactions to incoming threats.  
You may use **one defensive option** per incoming attack, if eligible.

---

#### Dodge (F)

- Requires: `F`
- Effect:
  - Attempt to evade an attack through movement or positioning
  - May avoid damage entirely
  - Less effective if feet are impaired or terrain is poor

Dodge represents footwork, balance, and quick repositioning.

---

#### Parry (L)

- Requires: `L`
- Weapon required
- Effect:
  - Redirect or deflect an incoming melee attack
  - Weapon may lose integrity on Partial Criticals or worse

Only weapons with the **Parry** quality may parry while also attacking.

---

#### Block (R)

- Requires: `R`
- Shield or suitable object required
- Effect:
  - Absorb or deflect an attack
  - Shield or object may lose integrity

Block is reliable but consumes your secondary hand.

---

## Core Combat Actions

These actions are declared on your turn.

---

### Wild Swing

- Requires: `L`
- Optional: `(R)` for two-handed weapons
- Effect:
  - Make a standard attack with your weapon increasing the DC by 2.
  - Deal wounds according to weapon type
  - Apply weapon properties on Partial Criticals

---

### Focused Attack

- Requires: `LH`
- Effect:
  - Make an attack with improved accuracy or control
  - Commonly used for called shots or careful strikes

Focused attacks trade flexibility for precision.

---

### Full Martial Attack

- Requires: `L(R)HF`
- Effect:
  - Make a fully committed attack
  - Typically grants advantage or bonus damage
  - Leaves you unable to maintain Guard against additional approaches

This represents total commitment of body and intent.

---

### Targeting Hit Locations

Attacks may target specific body regions.

- **Default target:** Core
- **Called targets:** Left Arm, Right Arm, Legs, or Head

**DC Modifiers**
- Targeting **arms or legs:** no DC change
- Targeting **head:** `+2 DC`

**On a Hit**
- Apply wounds to the declared target location.

This applies to Wild Swing, Focused Attack, and Full Martial Attack unless a specific ability says otherwise.

---

### Advance

- Requires: `F`
- Effect:
  - Attempt to move one range state closer to a target
  - May be contested by Guard

Advance is used to close distance or force engagement.

---

### Move

- Requires: `F`
- Effect:
  - Reposition, back away, or change facing
  - Backing away is safe unless surrounded or restrained

Movement does not break Guard unless it commits the Head (H).

---

### Covering Fire

- Requires: `LH`
- Expends ammo
- Effect:
  - Does **not** deal damage
  - Forces an opponent using Guard to choose between:
    - Breaking Guard
    - Taking the attack
  - On Partial Critical, both occur

Covering Fire disrupts attention and space control.

---

## Summary for New Players

If you are unsure what to do:

- If enemies are approaching -> **You are already in Default Guard**
- If attacked -> **Dodge, Parry, or Block**
- If you want to hit something -> **Attack**
- If you want to hit hard -> **Full Martial Attack**
- If you want to close distance -> **Advance**

The system assumes competence.  
You only need to think harder when you choose to.

---

*Advanced combat options, custom RHLF assemblies, and special feats are covered in later sections.*


## Range & Guard

Combat in the 24-System is resolved using **range states** and **Guard**, not measurements or grids.  
Range determines what actions are possible, while Guard determines whether movement is contested.

---

## Range States

All combatants exist in one of three range states relative to one another:

- **Separated**
  - No physical contact
  - Ranged weapons and reach dominate
- **Melee**
  - Weapon-length engagement
  - Most conventional fighting occurs here
- **Grappling**
  - Bodies entangled
  - Limb control and leverage dominate

Range is categorical, not spatial. Characters do not track distance, only relative range state.

---

## Guard (Space Control)

**Guard** represents actively threatening space or waiting on a specific trigger.

### Default Guard (Unspoken)
- A character who is **aware** and **not engaged** is automatically in Default Guard.
- Default Guard requires no declaration and no action.

### Triggered Action (Spoken)
- On your turn, you may declare a specific trigger and response.
- You must state:
  - Trigger (what event causes the response)
  - Response (what you do when triggered)
  - Required anchors committed (`L`, `R`, `H`, `F`) and any ammo/stamina costs
- Trigger language matters:
  - The trigger resolves exactly as declared.
  - If the declared condition happens, the response fires, even if the outcome is now undesirable.
  - Broader wording creates broader risk.
- Trigger examples:
  - "If something enters, I shoot it." -> triggers on **any** entry.
  - "If a man in a purple hat enters, I shoot him." -> triggers only on that specific condition.
- If the trigger occurs before your next turn, resolve the response immediately.
- If you abort after the trigger event occurs, roll `2d12` to resolve the shot.
  - On a hit, choose one:
    - Deal damage normally, or
    - Deal no damage and take a **Minor Complication** instead.
- If the trigger does not occur, the declaration expires at the start of your next turn.
- Triggered Action does not change initiative order.

### Direction and Scope
- Guard is **directional** and **attention-limited**.
- By default, a character may cover **one approach**.

### Engagement
- A character is **engaged** when an enemy is in Melee or Grappling range with them.
- Once engaged, a character **cannot maintain Guard against additional advances** unless a special ability allows it.

---

## Weapon Interaction with Guard

- **Reach Weapons** (spears, polearms):
  - May contest advances from **Separated -> Melee**
  - May contest advances from **Melee -> Grappling**
  - May contest **Move-By attempts**
- **Non-Reach Melee Weapons** (swords, axes, maces):
  - May contest advances from **Melee -> Grappling**
  - May contest **Move-By attempts**
  - Do **not** contest Separated -> Melee
- **Unarmed or Improvised Weapons**:
  - Cannot contest advances through Guard

---

## Advancing Range

To move closer to an enemy, a character must attempt an **Advance**.

- Advancing **toward or past** an opponent with Guard is a contested action.
- Advancing **away** from an opponent is safe unless surrounded or restrained.

The advancing character typically rolls **Athletics**.  
The difficulty is set by the defender's Guard strength, weapon, and situation.

---

## Multiple Guards

Multiple defenders may combine their Guard against a single advancing target.

- The first guard sets the base difficulty.
- Each additional guard increases the difficulty by **+2**.

**Example:**  
Four characters covering the same approach:  
DC = Base + 2 x (4 - 1)

### Failure Against Multiple Guards
- On a failed advance, **one guard of the defenders' choice** resolves the consequence.
- This prevents stacking damage while preserving group control.

Once an advance is resolved, Guard does **not** persist against subsequent advances in the same moment.

---

## Attention and Guard (The Head - H)

Guard requires **attention**, represented by the **Head (H)**.

### Actions That Break Guard
Any action that meaningfully commits the Head breaks Guard against other threats until the character's next turn. Examples include:
- Making an attack
- Aiming and firing at a specific target
- Casting a spell
- Searching or tracking
- Issuing complex commands
- Reacting to a different threat

### Actions That Do NOT Break Guard
Actions that do not require conscious focus do not break Guard, including:
- Walking or repositioning
- Backing away
- Raising a shield
- Drawing or stowing a weapon
- Routine reloads
- Blind manipulation of equipment

Magic is inherently dangerous; **all spellcasting requires H** and breaks Guard.

---

## Voluntarily Dropping Guard

A character may voluntarily drop Guard at any time by committing their Head (H) to another task.  
This requires no action and no roll.

---

## Covering Fire

**Covering Fire** is a deliberate attempt to disrupt an enemy's attention and space control.

### Requirements
- Requires: `LH`
- Expends ammo

### Effect
- Does **not** deal damage
- Select one enemy:
  - That enemy **loses Guard** until the start of their next turn

Covering Fire represents suppression, distraction, and forcing an opponent to seek cover.  
Using Covering Fire breaks the user's own Guard.

---

## Design Notes

- Guard is a **state**, not a passive aura
- Attention is a scarce resource
- Packs and flanking are dangerous by default
- Weapon choice meaningfully shapes space control
- Ranged and melee Guard follow the same rules

Range control emerges naturally from intent, positioning, and commitment.


## Guard (Refined Resolution)

When a character attempts to advance against an opponent with Guard and **fails**, the advancing character must choose one of the following outcomes:

- **Stop:**  
  The advance fails and the character remains at their current range.
- **Push Through:**  
  The character completes the advance but suffers the Guard attack or consequence.

### Critical Failure
On a **Critical Failure**, both outcomes occur:
- The advance fails
- The character also suffers the Guard attack or consequence

This represents reckless commitment, loss of footing, or overextension into danger.

---

## Covering Fire (Refined Resolution)

Covering Fire represents suppressive or distracting fire intended to disrupt an enemy's space control.

### Resolution
When Covering Fire succeeds against an opponent with Guard, the defender must choose one:

- **Take Cover:**  
  The defender loses Guard until the start of their next turn.
- **Stand Fast:**  
  The defender maintains Guard but suffers the covering fire attack.

### Partial Critical
On a **Partial Critical**, both outcomes occur:
- The defender loses Guard
- The defender also suffers the attack

Covering Fire always expends ammo and always breaks the user's own Guard.

---

## Design Intent

- Guard forces hard choices, not automatic damage
- Covering Fire mirrors Guard through attention pressure
- Partial Criticals escalate outcomes without adding conditions
- Critical Failures punish overcommitment, not mere bad luck
