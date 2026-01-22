## Weapons & Weapon Properties

In the 24-System, weapons are defined less by abstract damage types and more by **how they apply pressure** in combat.

All weapons follow the same base rules for attacking, wounds, armor, stamina, and range.  
Weapons feel different because of their **properties**, especially what happens on a **Partial Critical**.

---

### Weapon Categories (Baseline)

Weapons are broadly categorized by how many hands they require and how many wounds they deal.

- **One-Handed Weapons**
  - Require: `L`
  - Deal: **1 wound**
- **Two-Handed Weapons**
  - Require: `L(R)`
  - Deal: **2 wounds**

This establishes the baseline risk–reward tradeoff:
greater commitment produces greater harm, but is harder to sustain when injured or fatigued.

---

## Weapon Properties

Each weapon has **at most one Primary Property** and may have additional **Qualities**.

### Primary Properties
Primary properties define what a weapon does on a **Partial Critical**.  
A weapon may only have **one** primary property.

---

### Precision

*Daggers, rapiers, stilettos, bayonets*

**Partial Critical Effect**
- Inflict **Bleed 1**
- Bleed is resolved as **immediate stamina loss**
- This stamina loss **ignores armor conversion**
- Armor does **not** lose integrity from this effect

**Fiction**
- Weak points
- Gaps in armor
- Shock, blood loss, or disrupted breathing

Precision weapons excel at exhausting or destabilizing opponents rather than breaking armor.

---

### Chopping

*Axes, cleavers, heavy blades*

**Partial Critical Effect**
- Target armor loses **+2 integrity** instead of the normal +1

**Fiction**
- Edge bites
- Structural damage
- Repeated stress fractures in armor

Chopping weapons are excellent at destroying protection, but less subtle than precision weapons.

---

### Crushing

*Maces, hammers, mauls*

**Partial Critical Effect**
- **Ignore one level of mitigation**
  - Armor converts one fewer wound to stamina
  - Or cannot fully absorb the blow

**Fiction**
- Concussive force
- Broken bones beneath armor
- Internal trauma

Crushing weapons punish heavy armor without needing to destroy it.

---

## Weapon Qualities

Qualities modify how a weapon behaves, but do not change its Partial Critical effect.

A weapon may have multiple qualities.

---

### Reach

- Weapon may **ward advances** from **Separated → Melee**
- Weapon may also ward **Melee → Grappling** and **Move-By attempts**
- Reach increases the difficulty of advancing past the wielder
- Reach weapons lose most advantages once grappling occurs

Typical reach weapons:
- Spears
- Polearms
- Pikes

---

### Parry

- Weapon may **attack while maintaining a prepared defense**
- Represents binding, redirection, and controlled engagement
- Common on swords and well-balanced polearms

Parry weapons favor control and survivability over raw damage.

---

### Brace

- Weapon gains benefits when set against a charge or advance
- Often increases warding effectiveness
- Common on spears, polearms, and bayonets

---

### Improvised

- Weapon is usable in unfavorable ranges or conditions
- Loses primary property
- Deals reduced damage
- Examples:
  - Haft strikes
  - Pommel strikes
  - Butt-end shoves

---

## Range Interaction Summary

Weapons interact with range through **warding**, not abstract distances.

- **Reach Weapons**
  - Ward Separated → Melee
  - Ward Melee → Grappling
- **Non-Reach Melee Weapons**
  - Ward Melee → Grappling only
- **Unarmed / Improvised**
  - Cannot ward advances

Backing away from an opponent is generally safe unless surrounded or restrained.

---

## Design Notes

- Weapons differ by **pressure profile**, not damage type
- Partial Critical effects create identity without added bookkeeping
- Armor remains meaningful without becoming absolute
- Injury, fatigue, and positioning naturally reshape weapon effectiveness over time

Weapon choice is tactical, situational, and narrative—not merely numeric.

---

*Specific weapon examples and stat blocks are provided in later sections.*


## Example Weapons

| Weapon        | Hands | Wounds | Primary Property | Qualities           | Notes |
|--------------|-------|--------|------------------|---------------------|-------|
| Dagger       | L     | 1      | Precision        | —                   | Excels at grappling range |
| Rapier       | L     | 1      | Precision        | Parry               | Dueling weapon |
| Sword        | L     | 1      | —                | Parry               | Balanced, defensive |
| Greatsword   | L(R)  | 2      | —                | Parry               | High commitment |
| Axe          | L     | 1      | Chopping         | —                   | Destroys armor |
| Greataxe     | L(R)  | 2      | Chopping         | —                   | Anti-armor brute |
| Mace         | L     | 1      | Crushing         | —                   | Punishes heavy armor |
| Maul         | L(R)  | 2      | Crushing         | —                   | Breaks through mitigation |
| Spear        | L(R)  | 1–2    | —                | Reach, Brace        | Superior space control |
| Pike         | L(R)  | 2      | —                | Reach, Brace        | Formation weapon |
| Bow          | L(R)  | 1      | Precision        | —                   | Separated range only |
| Firearm      | L(R)  | 1–2    | Precision        | —                   | Wards space, ammo-limited |


## Ranged Weapons – Action Economy & Tactical Role (24-System)

This table summarizes how each ranged weapon interacts with the **limb-based action economy**, followed by short design notes explaining *why each weapon exists* in play.

---

### Ranged Weapon Action Economy

| Weapon        | Fire Limbs Used | Reload Limbs Used        | Preloaded? | Indoor Use | Noise | Notes |
|---------------|----------------|--------------------------|------------|------------|-------|-------|
| Sling         | 1 Arm          | Other Arm                | No         | Yes        | Silent | Most flexible ranged weapon |
| Short Bow     | 2 Arms         | Included in attack       | No         | Yes        | Silent | Compact, mobile |
| Long Bow      | 2 Arms         | Included in attack       | No         | Poor       | Silent | Requires space |
| Crossbow (Light) | 1 Arm       | 2 Arms (+legs optional)  | Yes        | Yes        | Quiet  | Ambush-focused |
| Crossbow (Heavy) | 2 Arms      | 2 Arms + Legs            | Yes        | Poor       | Quiet  | High setup cost |
| Pistol        | 1 Arm          | 2 Arms                   | Yes        | Yes        | Loud   | Emergency lethality |
| Rifle         | 2 Arms         | 2 Arms                   | Yes        | Poor       | Loud   | Decisive, high commitment |

---

## Weapon Explanations

### Sling
- Fired with one arm, reloaded with the other.
- Can be used while injured, climbing, or defending.
- Lowest lethality, but highest flexibility.
- Ideal for harassment, hunting, and sustained skirmishing.
- Silent and cheap, but weak against armor unless crits occur.

**Design Role:**  
The sling is the *most ergonomic* ranged weapon, not the most deadly.

---

### Short Bow
- Requires both arms to fire.
- Drawing an arrow is part of the attack action.
- Compact enough for indoor or tight environments.
- Quiet, sustainable, and reliable.

**Design Role:**  
A balanced, mobile ranged weapon for scouts and skirmishers.

---

### Long Bow
- Requires both arms and space to operate.
- Awkward or disadvantaged indoors.
- Excellent at warding space at Separated range.
- Strong sustained pressure, but vulnerable to injury or crowding.

**Design Role:**  
The long bow rewards preparation and positioning.

---

### Crossbow (Light)
- May be carried cocked and loaded.
- Can be fired one-handed, but reload requires both arms.
- Reloading under pressure is difficult.
- Quiet, accurate, and lethal on the opening shot.

**Design Role:**  
An ambush weapon, not a sustained combat tool.

---

### Crossbow (Heavy)
- Requires both arms to fire.
- Reloading requires full-body commitment (arms + legs).
- Very slow under combat conditions.
- Often unusable once enemies close.

**Design Role:**  
A pre-planned, high-risk opening weapon.

---

### Pistol
- Fired with one arm.
- Reloading requires both arms and time.
- Loud, ammo-limited, but usable while moving or wounded.
- Crits can be immediately decisive.

**Design Role:**  
A panic button and finisher, not a primary solution.

---

### Rifle
- Requires both arms to fire and reload.
- Awkward in confined spaces.
- Loud and attention-drawing.
- Crits cause catastrophic outcomes.

**Design Role:**  
A fight-ending weapon used only when escalation is acceptable.

---

## Design Summary

- **Bows and guns are parity weapons until crits.**
- **Crits unlock armor bypass and trauma.**
- **Reload friction and limb commitment are the real balancing factors.**
- **Melee dominates chaos; ranged dominates preparation.**

This keeps firearms rare, terrifying, and never casually optimal.
