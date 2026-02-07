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

## Core Resolution (`core.md`)

- Roll skill dice plus Leverage dice (if any)
- Result is highest die
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

## Action Economy: RHLF / "Ralph" (`RLHF.md`)

Characters commit body anchors to perform actions:
- `L`: primary hand
- `R`: secondary hand
- `H`: head (attention, targeting, intent)
- `F`: feet (movement, balance, stance)

If an anchor is injured, related actions degrade. If disabled, those actions can become unavailable.

## Combat Overview (`combat.md`, `defense.md`, `movement.md`, `weapons.md`, `wounds.md`)

### Baseline Combat Concepts

- Warding is automatic when aware, unengaged, and not committing `H`
- Combat uses range states (Separated, Melee, Grappling), not grid distance
- Advancing into warded space is contested
- Multiple warders stack by `+2 DC` per extra warder

### Core Declared Actions

- Attack (`L`)
- Focused Attack (`L+H`)
- Full Martial Attack (`L(R)HF`)
- Advance (`F`)
- Move (`F`)
- Covering Fire (`L+H`, ammo, attention disruption)

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
- Primary properties: Precision, Chopping, Crushing
- Qualities: Reach, Parry, Brace, Improvised
- One-handed baseline: 1 wound
- Two-handed baseline: 2 wounds
- Ranged tools differentiated by limb commitment and reload friction

### Wounds, Armor, and Trauma

- Region tracks: each arm, head, shared legs, core
- Wound progression: OK -> Injured -> Disabled -> Missing (region-specific behavior)
- Armor is a single worn unit that converts wounds to stamina loss (Light/Medium/Heavy)
- Core wound thresholds drive failing, dying, death states

## Stress Model (`fear-and-madness.md`)

Fear track runs 0-6:
- Lower levels increase caution/hypervigilance
- Mid levels introduce hesitation entering hostile danger
- High levels reduce available anchor commitment
- Top level causes breakdown/withdrawal

Madness is emergent from accumulated survival scars (Banes), not a separate meter.

## Character Growth

### Character Creation (`charactercreation.md`)

- No attributes (no STR/DEX/INT)
- Assign 1 specialty, 1 strong, 2 competent skills
- Unassigned skills use vanilla roll (`2d12`)
- Choose 2 traits
- Add gear and narrative details

### Advancement (`advancement.md`)

- No XP or levels
- Advancement at story-arc boundaries
- Declare one training focus per arc (skill or trait)
- Gain one skill tier (pyramid-limited) or one earned trait per arc

## Skill Framework (`skills.md`)

Action-centric skills define what can be attempted:
- Athletics
- Melee
- Ranged
- Thievery
- Lore
- Social
- Magic
- Science (placeholder section)

## Perception Philosophy (`perception.md`)

No passive perception stat. Discovery is narrative and interaction-driven:
- Players ask specific questions and describe methods
- Guide seeds fair clues for secrets/traps
- Hidden features should be foreshadowed through sensory/environmental evidence

## Magic Model (`spells.md`)

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

- `playtest-packet.md`: player-facing quick rule packet and expectations
- `playtest-characters.md`: fast combat reference

## Setting / Thematic Documents

- `Atrocitas.md`: Atrocitas Sine Auctore concept (atrocity without authorship)
- `monsters/echo-born-other.md`: Echo-Born Other entity and stat block
- `authors-note.md`: design intent and authorship note
- `quote.md`: thematic line

## File Index

- `advancement.md`: arc-based training and progression
- `Atrocitas.md`: cognitive-horror theorem and ontology note
- `authors-note.md`: author statement and design philosophy
- `charactercreation.md`: chargen flow, skills, traits
- `combat.md`: warding, range states, core combat actions
- `core.md`: outcomes, push-your-luck, leverage/pressure
- `defense.md`: active defense options, cover/concealment
- `fear-and-madness.md`: fear track and emergent madness model
- `movement.md`: MR, encumbrance, terrain, sprinting
- `monsters/echo-born-other.md`: monster ecology, behavior, stat block
- `perception.md`: narrative discovery and secret-door guidance
- `playtest-characters.md`: quick combat cheat sheet
- `playtest-packet.md`: player onboarding packet
- `quote.md`: thematic quote
- `RLHF.md`: body-anchor action economy
- `skills.md`: skill action vocabularies
- `spells.md`: spell axioms and examples
- `weapons.md`: weapon properties, qualities, ranged action economy
- `wounds.md`: hit locations, trauma ladder, armor conversion

## Notes for Next Pass

Likely cleanup targets identified while compiling:
- Standardize anchor naming (`RHLF` vs `RLHF`, and `F` vs "Legs (L)" in one defense section)
- Resolve encoding artifacts (smart quotes/dashes rendering as mojibake in terminal output)
- Align push-your-luck language between `core.md` and `playtest-packet.md`
- Fill unfinished sections (`Blocking cover` heading, `Science` skill details)
- Unify terminology for Guide/GM and action labels across reference docs
