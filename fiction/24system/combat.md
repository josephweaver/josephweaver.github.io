## Basic Combat Actions (RHLF)

This section presents the **default combat actions** available to all characters.  
These actions are designed for fast play and do not require players to assemble body anchors manually.

Advanced options, custom assemblies, and special feats are presented in later sections.

---

## Automatic Actions (Always Available)

The following actions do **not** require declaration unless otherwise noted.  
They represent instinctive, trained, or reflexive behavior.

---

### Warding (H)

- Requires: `H`
- Automatic while:
  - You are aware of danger
  - You are not currently engaged
  - You are not committing your Head (H) to another task

**Effect**
- You threaten space and contest enemy advances
- Warding is directional and limited to one approach by default
- Warding ends immediately if you commit `H` elsewhere (attack, cast a spell, aim, etc.)

Warding represents attention, posture, and readiness, not an attack.

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

### Attack

- Requires: `L`
- Optional: `(R)` for two-handed weapons
- Effect:
  - Make a standard attack with your weapon
  - Deal wounds according to weapon type
  - Apply weapon properties on Partial Criticals

Attacking commits your Head (H) and ends warding against other threats.

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
  - Leaves you unable to ward additional approaches

This represents total commitment of body and intent.

---

### Advance

- Requires: `F`
- Effect:
  - Attempt to move one range state closer to a target
  - May be contested by warding

Advance is used to close distance or force engagement.

---

### Move

- Requires: `F`
- Effect:
  - Reposition, back away, or change facing
  - Backing away is safe unless surrounded or restrained

Movement does not break warding unless it commits the Head (H).

---

### Covering Fire

- Requires: `LH`
- Expends ammo
- Effect:
  - Does not deal damage
  - Forces a warding opponent to choose between:
    - Breaking warding
    - Taking the attack
  - On Partial Critical, both occur

Covering fire disrupts attention and space control.

---

## Summary for New Players

If you are unsure what to do:

- If enemies are approaching → **You are already warding**
- If attacked → **Dodge, Parry, or Block**
- If you want to hit something → **Attack**
- If you want to hit hard → **Full Martial Attack**
- If you want to close distance → **Advance**

The system assumes competence.  
You only need to think harder when you choose to.

---

*Advanced combat options, custom RHLF assemblies, and special feats are covered in later sections.*


## Range & Warding

Combat in the 24-System is resolved using **range states** and **warding**, not measurements or grids.  
Range determines what actions are possible, while warding determines whether movement is contested.

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

## Warding (Space Control)

**Warding** represents actively threatening space and preventing reckless movement.

### Default State
- A character who is **aware** and **not engaged** is automatically warding.
- Warding requires no declaration and no action.

### Direction and Scope
- Warding is **directional** and **attention-limited**.
- By default, a character may ward **one approach**.

### Engagement
- A character is **engaged** when an enemy is in Melee or Grappling range with them.
- Once engaged, a character **cannot ward additional advances** unless a special ability allows it.

---

## Weapon Interaction with Warding

- **Reach Weapons** (spears, polearms):
  - May ward advances from **Separated → Melee**
  - May ward advances from **Melee → Grappling**
  - May ward **Move-By attempts**
- **Non-Reach Melee Weapons** (swords, axes, maces):
  - May ward advances from **Melee → Grappling**
  - May ward **Move-By attempts**
  - Do **not** ward Separated → Melee
- **Unarmed or Improvised Weapons**:
  - Cannot ward advances

---

## Advancing Range

To move closer to an enemy, a character must attempt an **Advance**.

- Advancing **toward or past** a warding opponent is a contested action.
- Advancing **away** from an opponent is safe unless surrounded or restrained.

The advancing character typically rolls **Athletics**.  
The difficulty is set by the defender’s warding strength, weapon, and situation.

---

## Multiple Warders

Multiple defenders may combine their warding against a single advancing target.

- The first warder establishes the base difficulty.
- Each additional warder increases the difficulty by **+2**.

**Example:**  
Four characters warding the same approach:  
DC = Base + 2 × (4 − 1)

### Failure Against Multiple Warders
- On a failed advance, **one warder of the defenders’ choice** resolves the consequence.
- This prevents stacking damage while preserving group control.

Once an advance is resolved, warding does **not** persist against subsequent advances in the same moment.

---

## Attention and Warding (The Head – H)

Warding requires **attention**, represented by the **Head (H)**.

### Actions That Break Warding
Any action that meaningfully commits the Head breaks warding against other threats until the character’s next turn. Examples include:
- Making an attack
- Aiming and firing at a specific target
- Casting a spell
- Searching or tracking
- Issuing complex commands
- Reacting to a different threat

### Actions That Do NOT Break Warding
Actions that do not require conscious focus do not break warding, including:
- Walking or repositioning
- Backing away
- Raising a shield
- Drawing or stowing a weapon
- Routine reloads
- Blind manipulation of equipment

Magic is inherently dangerous; **all spellcasting requires H** and breaks warding.

---

## Voluntarily Dropping Warding

A character may voluntarily drop warding at any time by committing their Head (H) to another task.  
This requires no action and no roll.

---

## Covering Fire

**Covering Fire** is a deliberate attempt to disrupt an enemy’s attention and space control.

### Requirements
- Requires: `LH`
- Expends ammo

### Effect
- Does **not** deal damage
- Select one enemy:
  - That enemy **loses warding** until the start of their next turn

Covering fire represents suppression, distraction, and forcing an opponent to seek cover.  
Using covering fire breaks the user’s own warding.

---

## Design Notes

- Warding is a **state**, not a passive aura
- Attention is a scarce resource
- Packs and flanking are dangerous by default
- Weapon choice meaningfully shapes space control
- Ranged and melee warding follow the same rules

Range control emerges naturally from intent, positioning, and commitment.


## Warding (Refined Resolution)

When a character attempts to advance against a warding opponent and **fails**, the advancing character must choose one of the following outcomes:

- **Stop:**  
  The advance fails and the character remains at their current range.
- **Push Through:**  
  The character completes the advance but suffers the warding attack or consequence.

### Critical Failure
On a **Critical Failure**, both outcomes occur:
- The advance fails
- The character also suffers the warding attack or consequence

This represents reckless commitment, loss of footing, or overextension into danger.

---

## Covering Fire (Refined Resolution)

Covering Fire represents suppressive or distracting fire intended to disrupt an enemy’s space control.

### Resolution
When Covering Fire succeeds against a warding opponent, the defender must choose one:

- **Take Cover:**  
  The defender loses warding until the start of their next turn.
- **Stand Fast:**  
  The defender maintains warding but suffers the covering fire attack.

### Partial Critical
On a **Partial Critical**, both outcomes occur:
- The defender loses warding
- The defender also suffers the attack

Covering Fire always expends ammo and always breaks the user’s own warding.

---

## Design Intent

- Warding forces hard choices, not automatic damage
- Covering Fire mirrors warding through attention pressure
- Partial Criticals escalate outcomes without adding conditions
- Critical Failures punish overcommitment, not mere bad luck
