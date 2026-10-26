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
  - Require: `LR`
  - Deal: **2 wounds**

Base damage is the number of wounds dealt by a normal successful hit, before mitigation. Use the hands required for the attack to determine the baseline. Listed weapon values override these baselines: **bows deal 1 wound**, **pistols deal 2 wounds**, and **rifles deal 3 wounds**.

**Weapon use while grappling:** Only **one-handed weapons** may be used to attack while the wielder is in Grappling.

**Critical damage:** On a **Partial Critical**, add **1 wound** to the weapon's listed base damage and apply its Partial Critical property effect. On a **Legendary Success**, first apply those Partial Critical bonuses, then **double all numerical values of the attack's effects**, including wounds, armor Integrity loss, additional stamina loss, and armor conversion penalties. Double these effects before resolving normal damage mitigation. Check each die for a Partial Critical against its own maximum before flat bonuses; the attack must still meet or beat its DC. For normal/Partial Critical/Legendary hits, a pistol deals **2/3/6 wounds**, and a rifle deals **3/4/8 wounds**.

**Example:** A two-handed axe deals **2 wounds** on a normal hit, **3 wounds** and **2 armor Integrity loss** on a Partial Critical, and **6 wounds** and **4 armor Integrity loss** on a Legendary.

This establishes the baseline risk–reward tradeoff:
greater commitment produces greater harm, but is harder to sustain when injured or fatigued.

---

## Weapon Properties

Each weapon has **at most one Primary Property** and may have additional **Qualities**.

### Primary Properties
Primary properties define a weapon's distinctive attack effect, usually on a **Partial Critical**. Knockback applies on any successful hit.

A weapon may only have **one** primary property.

---

### Precision

*Daggers, rapiers, stilettos, bayonets, spears*

**Partial Critical Effect**
- Inflict **Bleed 1**
- Bleed is resolved as **immediate stamina loss**
- This stamina loss **ignores armor conversion**
- Armor does **not** lose integrity from this effect

**Legendary Effect**
- Inflict **Bleed 2**, resolved as **2 immediate stamina loss** under the same rules.

**Fiction**
- Weak points
- Gaps in armor
- Shock, blood loss, or disrupted breathing

Precision weapons excel at exhausting or destabilizing opponents rather than breaking armor.

---

### Chopping

*Axes, cleavers, heavy blades*

**Partial Critical Effect**
- Target armor loses **2 Integrity** instead of the normal 1.

**Legendary Effect**
- Target armor loses **4 Integrity**.

**Fiction**
- Edge bites
- Structural damage
- Repeated stress fractures in armor

Chopping weapons are excellent at destroying protection, but less subtle than precision weapons.

---

### Penetrating

*Clubs, maces, hammers, mauls, morning stars, crossbows, pistols, rifles*

**Partial Critical Effect**
- Armor converts **1 fewer wound** to stamina for this hit, to a minimum conversion of **0**.
- This effect does not itself reduce armor Integrity.

**Legendary Effect**
- Armor converts **2 fewer wounds** to stamina for this hit, to a minimum conversion of **0**.
- This effect does not itself reduce armor Integrity.

**Fiction**
- Concussive force
- Concentrated impacts
- Broken bones or trauma beneath armor

Penetrating weapons punish armor without needing to destroy it.

---

### Knockback

*Shields, shotguns*

- On a successful hit against a creature engaged in **Melee**, push it out of that engagement to **Separated**.
- Resolve damage and armor conversion normally. Knockback triggers on the hit, even if armor converts all wounds to stamina.

---

## Weapon Qualities

Qualities modify how a weapon behaves, but do not change its Partial Critical effect.

A weapon may have multiple qualities.

---

### Grappling

- Gain **one advantage step** on attacks with this weapon while grappling with the target.
- In the playtest, this grants **+1 Leverage** on ordinary attack checks, following the normal reroll rules.
- Typical grappling weapon: dagger.

---

### Long Range

- Can attack a visible, identifiable target beyond the immediate encounter, such as someone on a distant rooftop or across a valley.
- Use the normal Ranged attack rules, including defense and cover.
- Rifles and long bows have this quality; other ranged weapons attack within the immediate encounter.

---

### Reloading

- Spend an **`LR` action** (both hands) to reload using suitable, accessible ammunition.
- One reload fills the weapon up to its ammo capacity, limited by the ammunition available.
- Each shot consumes **1 round or bolt**, whether it hits or misses. An empty weapon cannot fire.
- Crossbows have **ammo capacity 1** and must reload after every shot.
- Pistols, rifles, and shotguns have **ammo capacity 5** and can fire five shots from a full load before reloading.

---

### Reach

- Weapon may **ward advances** from **Separated → Melee**
- Weapon may also ward **Melee → Grappling** and **Move-By attempts**
- Reach increases the difficulty of advancing past the wielder
- Reach weapons lose most advantages once grappling occurs

Typical reach weapons:
- Staves
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

### Block

*Shields*

- Use the hand holding the shield (**`L` or `R`**) to Block.
- On an intercepted hit, absorb the **first wound free**; remaining wounds convert to **1 stamina loss each**.
- The blocking hand must be uncommitted unless a trait overrides the normal action rules. Blocking may reduce shield Integrity.

---

### Brace

- Weapon gains benefits when set against a charge or advance
- Often increases warding effectiveness
- Common on staves, spears, polearms, and bayonets

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

### Lit

- Weapon or projectile carries active Flame from `damage-types.md`.
- Direct threat may increase Fear by `1`.
- May trigger Light Exposure against creatures adapted to darkness.
- May ignite Flammable material.
- Does not add wound damage by default.
- Reveals the wielder's position.

Melee weapons with Lit lose `1 Integrity` at the end of the scene.

Projectiles with Lit take `+2 Pressure` beyond close range unless specially prepared.

Lit may be lost in water, heavy rain, strong wind, or hard impact.

---

## Ranged Weapon Rules

- Firing **from or into a Melee or Grappling engagement** adds **+2 DC** to the ranged attack.
- Apply this penalty **once per attack**, even if both the shooter and target are engaged. Other difficulty modifiers, including cover, stack normally.
- A wielder in **Grappling** may attack only with a **one-handed weapon**. Pistols and light crossbows can fire while grappling; rifles, shotguns, bows, and heavy crossbows require the wielder to leave Grappling first.

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
- **Long Range Weapons**
  - Can attack visible, identifiable targets beyond the immediate encounter

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

### Melee Weapons

| Weapon       | Hands  | Base damage | Primary Property | Qualities    | Notes                            |
| ------------ | ------ | ----------: | ---------------- | ------------ | -------------------------------- |
| Dagger       | L      |           1 | Precision        | Grappling    | Excels at grappling range        |
| Shield       | L or R |           1 | Knockback        | Block        | Bash to create space             |
| Rapier       | L      |           1 | Precision        | Parry        | Dueling weapon                   |
| Sword        | L      |           1 | —                | Parry        | Balanced, defensive              |
| Greatsword   | LR     |           2 | —                | Parry        | High commitment                  |
| Axe          | L      |           1 | Chopping         | —            | Destroys armor                   |
| Greataxe     | LR     |           2 | Chopping         | —            | Anti-armor brute                 |
| Mace         | L      |           1 | Penetrating      | —            | Punishes armor                   |
| Maul         | LR     |           2 | Penetrating      | —            | Breaks through mitigation        |
| Club         | L      |           1 | Penetrating      | —            | One-handed impact weapon         |
| Staff        | LR     |           2 | —                | Reach, Brace | Inexpensive space control (5c)    |
| Morning star | LR     |           2 | Penetrating      | —            | Rare armor breaker ($25+)        |
| Spear        | LR     |           2 | Precision        | Reach, Brace | Precise thrusts; space control    |
| Pike         | LR     |           2 | —                | Reach, Brace | Formation weapon                 |

### Ranged Weapons

| Weapon           | Hands | Base damage | Primary Property | Qualities             | Ammo capacity | Notes                                               |
| ---------------- | ----- | ----------: | ---------------- | --------------------- | ------------: | --------------------------------------------------- |
| Short Bow        | LR    |           1 | Precision        | —                     |             — | Separated range within the encounter                |
| Long Bow         | LR    |           1 | Precision        | Long Range            |             — | Can attack beyond the immediate encounter           |
| Crossbow (Light) | L     |           1 | Penetrating      | Reloading             |             1 | Can fire one-handed; reload after each shot         |
| Crossbow (Heavy) | LR    |           2 | Penetrating      | Reloading             |             1 | Requires both hands to fire; reload after each shot |
| Pistol           | L     |           2 | Penetrating      | Reloading             |             5 | Five shots between reloads                          |
| Rifle            | LR    |           3 | Penetrating      | Long Range, Reloading |             5 | Five shots between reloads                          |
| Shotgun          | LR    |           2 | Knockback        | Reloading             |             5 | Pushes targets out of Melee                         |


## Ranged Weapons – Action Economy & Tactical Role (24-System)

This table summarizes how each ranged weapon interacts with the **limb-based action economy**, followed by short design notes explaining *why each weapon exists* in play.

---

### Ranged Weapon Action Economy

| Weapon           | Fire Limbs Used | Reload Limbs Used  | Ammo capacity | Preloaded? | Indoor Use | Noise  | Notes                                      |
| ---------------- | --------------- | ------------------ | ------------: | ---------- | ---------- | ------ | ------------------------------------------ |
| Sling            | 1 Arm           | Other Arm          |             — | No         | Yes        | Silent | Most flexible ranged weapon                |
| Short Bow        | 2 Arms          | Included in attack |             — | No         | Yes        | Silent | Compact, mobile                            |
| Long Bow         | 2 Arms          | Included in attack |             — | No         | Poor       | Silent | Long Range; requires space                 |
| Crossbow (Light) | 1 Arm           | 2 Arms (`LR`)      |             1 | Yes        | Yes        | Quiet  | Reloading; ambush-focused                  |
| Crossbow (Heavy) | 2 Arms          | 2 Arms (`LR`)      |             1 | Yes        | Poor       | Quiet  | Reloading; both arms to fire               |
| Pistol           | 1 Arm           | 2 Arms (`LR`)      |             5 | Yes        | Yes        | Loud   | Reloading; emergency lethality             |
| Rifle            | 2 Arms          | 2 Arms (`LR`)      |             5 | Yes        | Poor       | Loud   | Long Range, Reloading; high commitment     |
| Shotgun          | 2 Arms          | 2 Arms (`LR`)      |             5 | Yes        | Yes        | Loud   | Knockback, Reloading; close combat control |

---

## Weapon Explanations

### Staff

- Two-handed melee weapon; base damage is **2 wounds**.
- Reach and Brace: ward approaches and hold enemies back when set against an advance.
- An inexpensive wooden weapon, priced at **5c** in the playtest.

---

### Spear

- Two-handed melee weapon; base damage is **2 wounds**.
- Precision: cause **1 additional immediate stamina loss** on a Partial Critical, or **2** on a Legendary.
- Reach and Brace: ward approaches and gain benefits when set against a charge or advance.

---

### Morning Star

- Two-handed melee weapon; base damage is **2 wounds**.
- Penetrating: armor converts **1 fewer wound** to stamina on a Partial Critical, or **2 fewer** on a Legendary, to a minimum conversion of **0**.
- Priced at **$25+** in the playtest. In this setting's 1920s Massachusetts, a functional antique or special commission is rare and costly; ordinary suppliers do not stock it.

---

### Shield

- One-handed melee weapon; base damage is **1 wound**.
- Knockback: on a successful hit, push a creature out of its Melee engagement to Separated.
- Block: absorb the first blocked wound free; remaining wounds convert to stamina loss.
- Bashing and blocking use the hand holding the shield, subject to the normal action commitment rules.

---

### Torch
- A torch has the Lit quality and uses the Flame rules in `damage-types.md`.
- A torch is usually a fear, light, and control tool, not a wound weapon.
- Against armor: usually no wound, but may increase Fear by `1`.
- Against exposed flesh, face, hair, Flammable material, oil, or dry gear: may burn or ignite.
- Against a creature adapted to darkness: may trigger Light Exposure if aimed at the eyes or face.
- Against a grabbed, pinned, or restrained target: sustained contact may escalate to Location On Fire if fiction supports it.

**Design Role:**  
The torch forces flinching, reveals darkness, and threatens ignition without being a reliable killing weapon.

---

### Molotov Cocktail
- A Molotov cocktail uses the Burning Fuel rules in `damage-types.md`.
- Requires a lit bottle of flammable fuel and enough space to throw safely.
- On a hit, the target is splashed with burning fuel and gains the Flammable quality where soaked.
- Roll on the Random Hit Location table in `combat.md`, then keep rolling for additional affected locations until a roll repeats.
- Each unique body location affected becomes Location On Fire.
- A Pack / Gear result means worn or carried equipment is soaked, ignited, damaged, or becomes Item On Fire.
- If several locations are affected, the Guide may treat the result as Body On Fire.
- Whether it hits or misses, a Molotov usually creates a Burning Surface where it breaks.

**Design Role:**  
The Molotov is an area-denial and panic weapon. It is unreliable as precision damage, but it can rapidly turn position, gear, and fear against a target.

---

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
- Requires both arms to fire; base damage is **1 wound**.
- Drawing an arrow is part of the attack action.
- Compact enough for indoor or tight environments.
- Quiet, sustainable, and reliable.

**Design Role:**  
A balanced, mobile ranged weapon for scouts and skirmishers.

---

### Long Bow
- Requires both arms and space to operate; base damage is **1 wound**.
- Awkward or disadvantaged indoors.
- Excellent at warding space at Separated range.
- Long Range: can attack visible, identifiable targets beyond the immediate encounter.
- Strong sustained pressure, but vulnerable to injury or crowding.

**Design Role:**  
The long bow rewards preparation and positioning.

---

### Crossbow (Light)
- May be carried cocked and loaded.
- Can be fired one-handed; base damage is **1 wound**.
- Reloading: ammo capacity 1; reload after each shot with an `LR` action.
- Quiet, accurate, and lethal on the opening shot.
- Penetrating: on a Partial Critical, armor converts 1 fewer wound to stamina.

**Design Role:**  
An ambush weapon, not a sustained combat tool.

---

### Crossbow (Heavy)
- Requires both arms to fire; base damage is **2 wounds**.
- Reloading: ammo capacity 1; reload after each shot with an `LR` action.
- Often unusable once enemies close.
- Penetrating: on a Partial Critical, armor converts 1 fewer wound to stamina.

**Design Role:**  
A pre-planned, high-risk opening weapon.

---

### Pistol
- Fired with one arm; base damage is **2 wounds**.
- Reloading: ammo capacity 5; an `LR` action reloads up to five rounds using available ammunition.
- Loud, ammo-limited, but usable while moving or wounded.
- Penetrating: on a Partial Critical, armor converts 1 fewer wound to stamina.
- Crits can be immediately decisive.

**Design Role:**  
A panic button and finisher, not a primary solution.

---

### Rifle
- Requires both arms to fire; base damage is **3 wounds**.
- Reloading: ammo capacity 5; an `LR` action reloads up to five rounds using available ammunition.
- Long Range: can attack visible, identifiable targets beyond the immediate encounter.
- Awkward in confined spaces.
- Loud and attention-drawing.
- Penetrating: on a Partial Critical, armor converts 1 fewer wound to stamina.
- Crits cause catastrophic outcomes.

**Design Role:**  
A fight-ending weapon used only when escalation is acceptable.

---

### Shotgun

- Requires both arms to fire; base damage is **2 wounds**.
- Reloading: ammo capacity 5; an `LR` action reloads up to five rounds using available ammunition.
- Knockback: on a successful hit, push a creature out of its Melee engagement to Separated.
- Attacks within the immediate encounter.
- Loud and attention-drawing.

**Design Role:** A shotgun breaks Melee engagements and creates space to retreat or prepare another attack.

---

## Design Summary

- **Bows favor quiet, sustained attacks; guns trade noise and scarce ammo for higher base damage and ammunition capacity.**
- **Rifles and long bows can attack beyond the immediate encounter; firearms hold five shots between reloads.**
- **Crits amplify armor bypass and trauma.**
- **Reload friction and limb commitment are the real balancing factors.**
- **Melee dominates chaos; ranged dominates preparation.**

This keeps firearms rare, terrifying, and never casually optimal.
