# 24-System

A tactical survival-horror tabletop RPG framework centered on body commitment, positional control, and consequence-forward play.

This README compiles the current markdown rules and setting notes in `fiction/24system`.

## Design Premise

The 24-System is built around these ideas:
- Competent characters under escalating pressure
- Choices about commitment and risk, not action-point optimization
- Injuries that degrade capability over time
- Fear that biases behavior without removing agency
- Fiction-first resolution with fast adjudication

## Core Resolution ([`core.md`](core.md))

- Roll skill dice plus Leverage dice (if any)
- Result is sum of the two highest dice, plus flat bonus
- Compare against DC (raised by Pressure)
- Outcome bands:
  - Legendary Success (24+)
  - Partial Critical (any die at max)
  - Success
  - Miss
- Optional push-your-luck reroll:
  - Accept Minor Complication and reroll
  - If reroll still fails, escalate to Critical Failure and Major Complication

Leverage/Pressure replacement for advantage/disadvantage:
- Leverage adds a bonus die by tier (`d4` to `d12`)
- Pressure increases DC instead of removing dice

## Action Economy: RHLF / "Ralph" ([`RLHF.md`](RLHF.md))

Characters commit body anchors to perform actions:
- `L`: primary hand
- `R`: secondary hand
- `H`: head (attention, targeting, intent)
- `F`: feet (movement, balance, stance)

If an anchor is injured, related actions degrade. If disabled, those actions can become unavailable.

## Combat Overview ([`combat.md`](combat.md), [`defense.md`](defense.md), [`movement.md`](movement.md), [`weapons.md`](weapons.md), [`wounds.md`](wounds.md))

### Baseline Combat Concepts

- Guard is automatic when aware, unengaged, and not committing `H`
- Combat uses range states (Separated, Melee, Grappling), not grid distance
- Advancing into guarded space is contested
- Multiple guards stack by `+2 DC` per extra defender
- Dodge is preserved after normal movement, but Sprint/Leap normally consumes Dodge until next turn

### Core Declared Actions

- Attack (`L`)
- Focused Attack (`L+H`)
- Full Martial Attack (`L(R)HF`)
- Advance (`F`)
- Move (`F`)
- Covering Fire (`L+H`, ammo, attention disruption)
- Interrupts and Follow-ups: ready a specific trigger and response before combat or on your turn, committing `H` and the response's anchors; precombat declarations can trigger during setup
- Abort: cancel before the trigger; after a readied attack triggers, roll `2d12` and, on a hit, choose normal damage or no damage with a Minor Complication

### Reactive Defenses

- Base defense (no active defense): attack DC 13
- Dodge: athletics-based avoidance, stamina cost
- Parry: melee-based interception/deflection, weapon risk
- Block: interception/absorption, strongest with shields

### Cover and Concealment

- Concealment primarily affects perception/hit chance
- Cover at range increases DC
- Cover in melee is mostly active/interposed and depends on committed limbs/position
- Cover stacks with active defenses where applicable

### Movement

- Movement Rate (MR) baseline 6 (human, unencumbered)
- Armor/packs apply only worst movement penalty source
- Sprint costs stamina for temporary MR increase
- Leg injuries reduce MR cumulatively

### Weapons and Identity

Weapon identity is driven by partial-critical behavior and qualities:
- Primary properties: Precision, Chopping, Penetrating, Knockback
- Qualities: Reach, Parry, Brace, Improvised
- One-handed baseline: 1 wound
- Two-handed baseline: 2 wounds
- Ranged tools differentiated by limb commitment and reload friction

### Wounds, Armor, and Trauma

- Region tracks: each arm, head, shared legs, core
- Limb wound progression: OK -> Injured -> Severe injury -> Disabled -> Crippled
- Head and Core tracks end in Unconsciousness rather than automatic death
- Armor is a single worn unit that converts wounds to stamina loss (Light/Medium/Heavy)
- Final wound steps cause Bleeding 3; unattended bleeding can still kill an unconscious character

## Fear and Initiative ([`fear-and-initiative.md`](fear-and-initiative.md))

Fear track runs 0-6:
- At the beginning of combat, roll `2d12` with Leverage equal to current Fear: optional single-die rerolls that replace the previous result, even if worse
- Resolve enemy initiative critical moves, then player moves with required Athletics checks; set new Fear levels, then use the recorded scores to order turns highest to lowest
- Players win ties against monsters; tied players decide their order among themselves
- Initiative criticals grant monsters Melee/Fear +2 or Grappling/Fear +4; players gain one move/Fear -2 or double move/Fear -4
- Acting before any attack is attempted against you reduces Fear by 1 on your first turn, once per combat
- Later Fear changes update restrictions while the current initiative order continues
- Fear 2–5 increases Pressure and restricts movement toward the source of Fear
- Only the strongest Fear source determines movement direction; ties use the most recent source
- Fear 4–5 requires retreat; Fear 6 causes a mental break, immediately resetting Fear to 0 and adding a permanent Bane tied to its source
- Recover 1 Fear with a full `RLHF` action only in the round after gaining Fear, at most once per scene; a full rest resets Fear to 0

Madness and Banes are cumulative: each mental break adds a permanent Bane, including repeats. Each triggered Fear-increasing Bane adds +1 Fear; two applicable Banes add +2, and so on.

## Status Effects ([`status-effects.md`](status-effects.md))

Common tactical conditions are defined in one place:
- Blind
- Prone
- Grabbed
- Pinned
- Restrained
- Disoriented
- Stunned
- Silenced
- Incapacitated
- Unconscious
- Bleeding

## Character Growth

### Character Creation ([`charactercreation.md`](charactercreation.md))

- No attributes (no STR/DEX/INT)
- Assign 1 specialty, 1 strong, 2 competent skills
- Competent tier is `d10 + d12 + 2` (Rank 1)
- Unassigned skills use vanilla roll (`2d12`)
- Choose 2 traits
- Add gear and narrative details

### Advancement ([`advancement.md`](advancement.md))

- No XP or levels
- Advancement at story-arc boundaries
- Declare one training focus per arc (skill or trait)
- Gain one skill tier (pyramid-limited) or one earned trait per arc

## Skill Framework ([`skills.md`](skills.md))

Action-centric skills define what can be attempted:
- Athletics
- Melee
- Ranged
- Thievery
- Lore
- Social
- Magic
- Science

Key framework updates:
- Contested checks: initiator rolls against defender average (rounded up)
- Unified legendary conversion rule
- Per-action duration tags (`Instant`, `Short`, `Extended`, `Scene`, `Sustained`)
- Stealth awareness ladder and scene-based stealth handling

## Perception Philosophy ([`perception.md`](perception.md))

No passive perception stat. Discovery is narrative and interaction-driven:
- Players ask specific questions and describe methods
- Guide seeds fair clues for secrets/traps
- Hidden features should be foreshadowed through sensory/environmental evidence

## Magic Model ([`spells.md`](spells.md))

Spellcasting axioms:
- Magic always works in type
- Rolls determine manifestation quality and consequence, not binary success/fizzle
- Failures escalate through backlash, danger, and cost

Current spell writeups:
- Elder Sign
- The Colour Out of Space
- The Call
- Pseudo-Apotheosis
- The Unveiling

## Playtest Materials

- [`playtest-packet.md`](playtest-packet.md): player-facing quick rule packet and expectations
- [`playtest-characters.md`](playtest-characters.md): fast combat reference

## Setting / Thematic Documents

- [`Atrocitas.md`](Atrocitas.md): Atrocitas Sine Auctore concept (atrocity without authorship)
- `monsters/echo-born-other.md`: Echo-Born Other entity and stat block
- [`authors-note.md`](authors-note.md): design intent and authorship note
- [`quote.md`](quote.md): thematic line

## File Index

- [`advancement.md`](advancement.md): arc-based training and progression
- [`Atrocitas.md`](Atrocitas.md): cognitive-horror theorem and ontology note
- [`authors-note.md`](authors-note.md): author statement and design philosophy
- [`charactercreation.md`](charactercreation.md): chargen flow, skills, traits
- [`combat.md`](combat.md): warding, range states, core combat actions
- [`core.md`](core.md): outcomes, push-your-luck, leverage/pressure
- [`defense.md`](defense.md): active defense options, cover/concealment
- [`fear-and-initiative.md`](fear-and-initiative.md): Fear track, encounter order, action restrictions, recovery, and lasting scars
- [`fear-and-madness.md`](fear-and-madness.md): deprecated historical Fear rules
- [`initiative.md`](initiative.md): deprecated historical initiative rules
- [`light-levels.md`](light-levels.md): visibility categories from dim light through pitch darkness
- [`movement.md`](movement.md): MR, encumbrance, terrain, sprinting
- `monsters/echo-born-other.md`: monster ecology, behavior, stat block
- [`perception.md`](perception.md): narrative discovery and secret-door guidance
- [`playtest-characters.md`](playtest-characters.md): quick combat cheat sheet
- [`playtest-packet.md`](playtest-packet.md): player onboarding packet
- [`quote.md`](quote.md): thematic quote
- [`RLHF.md`](RLHF.md): body-anchor action economy
- [`skills.md`](skills.md): skill action vocabularies
- [`status-effects.md`](status-effects.md): common tactical conditions and their mechanical effects
- [`spells.md`](spells.md): spell axioms and examples
- [`weapons.md`](weapons.md): weapon properties, qualities, ranged action economy
- [`wounds.md`](wounds.md): hit locations, trauma ladder, armor conversion

## Notes for Next Pass

Likely cleanup targets identified while compiling:
- Standardize anchor naming (`RHLF` vs `RLHF`, and `F` vs "Legs (L)" in one defense section)
- Resolve encoding artifacts (smart quotes/dashes rendering as mojibake in terminal output)
- Align push-your-luck language between [`core.md`](core.md) and [`playtest-packet.md`](playtest-packet.md)
- Fill unfinished sections (`Blocking cover` heading)
- Unify terminology for Guide/GM and action labels across reference docs
