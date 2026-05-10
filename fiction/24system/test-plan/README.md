# 24-System Test Plan

This folder defines a structured playtest plan for the 24-System.

The goal is not to prove that every rule is perfect. The goal is to test whether each subsystem creates the intended decisions at the table:

- Competent characters under pressure
- Fast fictional adjudication
- Body commitment through `RHLF`
- Survival choices instead of action optimization
- Consequences that are legible before they happen
- Horror pressure without removing player agency

## Testing Method

Test the system in layers.

1. **Unit Tests**: one rule or subsystem in isolation.
2. **Interaction Tests**: two or three subsystems combined.
3. **Scene Tests**: complete scenes with a clear objective.
4. **Session Tests**: linked scenes with resource attrition and consequences.
5. **Campaign Tests**: advancement, repairs, economy, scars, and long-term survival.

Each test should record:

- Rule area tested
- Starting situation
- Characters and opposition
- Expected pressure points
- Actual table confusion
- Time to resolve
- Whether players felt they had meaningful choices
- Any rule that had to be invented mid-test

## Pass / Fail Criteria

A rule passes when:

- Players understand what choices are available.
- The Guide can set DC, Pressure, and consequences quickly.
- The rule creates the intended tension.
- The result changes the fiction in a useful way.
- The rule does not require repeated lookup after first use.

A rule needs revision when:

- Players cannot predict the risk well enough to choose.
- The Guide must invent too much procedure.
- The rule causes repeated argument or re-reading.
- The optimal choice is obvious every time.
- The rule removes agency when it should only apply pressure.
- The rule adds bookkeeping without changing decisions.

## Test Matrix

| Area | Primary Files | Test Type | Priority |
|---|---|---|---|
| Core Resolution | `core.md`, `skills.md` | Unit | High |
| Leverage / Pressure | `core.md` | Unit / Interaction | High |
| Push Your Luck | `core.md`, `playtest-packet.md` | Unit | High |
| RHLF Anchors | `RLHF.md`, `combat.md`, `movement.md` | Interaction | High |
| Initiative / Delay | `initiative.md` | Unit / Combat | Medium |
| Movement | `movement.md`, `skills.md` | Scene | High |
| Guard / Advance | `combat.md`, `weapons.md` | Scene | High |
| Attacks / Hit Locations | `combat.md`, `wounds.md` | Scene | High |
| Defense | `defense.md`, `combat.md` | Scene | High |
| Armor | `armor.md`, `wounds.md`, `Alhazred/armor.md` | Interaction | High |
| Wounds / Stamina | `wounds.md`, `core.md` | Scene / Session | High |
| Fear | `fear-and-madness.md`, `status-effects.md` | Scene / Session | High |
| Narrative Perception | `perception.md`, `skills.md` | Scene | High |
| Stealth | `skills.md`, `perception.md`, `light-levels.md` | Scene | High |
| Status Effects | `status-effects.md` | Unit / Interaction | High |
| Fire / Wet / Cold | `damage-types.md`, `status-effects.md` | Interaction | High |
| Equipment / Containers | `equipment.md`, `combat.md` | Interaction | Medium |
| Alhazred Economy | `Alhazred/economics.md`, `Alhazred/equipment.md` | Session | Medium |
| Rituals / Silver Wards | `Alhazred/rituals.md` | Scene / Session | Medium |
| Monsters | `monsters/*.md` | Scene | High |
| Advancement | `advancement.md`, `charactercreation.md` | Campaign | Medium |

## Unit Test List

### Core Resolution

Questions:

- Can players understand "roll skill dice, keep two highest, add flat bonus" after one explanation?
- Are DCs `8`, `10`, `12`, `14`, and `16` producing the expected feel?
- Does a Partial Critical feel useful even when the total is not high?
- Does Legendary success happen often enough to be exciting but not routine?

Tests:

- Roll 20 basic checks at DC `10` with untrained dice.
- Roll 20 competent checks at DC `12`.
- Roll 20 strong/specialty checks at DC `14`.
- Record success, miss, Partial Critical, and Legendary rates.

### Leverage and Pressure

Questions:

- Does Leverage feel like opportunity instead of raw power?
- Does Pressure make danger clearer without making players feel helpless?
- Are players able to name why they have Leverage or Pressure?

Tests:

- Same action with no modifier, then `+1 Leverage`, then `+2 Pressure`, then both.
- Ask players which situation felt better and why.

### Push Your Luck

Questions:

- Do players understand the cost before pushing?
- Does pushing feel tempting?
- Do complications move the scene forward?

Tests:

- Run five failed checks where pushing is available.
- Record how often players push and whether the complication changed their next choice.

## Interaction Test List

### RHLF Commitment

Scenario:

A survivor must cross a room, draw a weapon, open a door, and avoid a lunging attacker.

Test:

- Track which anchors are committed.
- Confirm players understand why Dodge, Guard, or manipulation is unavailable.
- Watch for anchor confusion, especially `H`.

Pass if:

- The player can explain what body part is overloaded.
- The rule creates a choice instead of a lookup pause.

### Movement, Guard, and Advance

Scenario:

One survivor with a spear holds a doorway while two enemies try to get through.

Test:

- Separated -> Melee Advance
- Guard contest
- Multiple attackers
- Reach interaction
- Moving past a guarded opponent

Pass if:

- The doorway feels tactically important.
- The spear user feels controlling without being invincible.
- The second attacker changes the decision space.

### Armor, Stamina, and Wounds

Scenario:

Run the same attack sequence against no armor, light armor, medium armor, and heavy armor.

Test:

- Wound conversion
- Stamina loss
- Negative stamina pressure
- Armor integrity loss

Pass if:

- Armor buys survival without making hits meaningless.
- Negative stamina changes choices.
- Players understand why they are not "fine" after armor absorbs a hit.

### Fire, Wet, and Cold

Scenario:

A survivor in wet clothes crosses a freezing street while carrying a lit weapon and a pack containing lamp oil.

Test:

- Wet cancels Flammable.
- Wet worsens effective cold exposure.
- Lit weapon reveals position and threatens Fear.
- Fire can end Wet but may cause burn effects.
- Pack / Gear hit can affect containers.

Pass if:

- Players understand the tradeoff between warmth, fire, stealth, and gear risk.

### Containers and Pack Hits

Scenario:

A survivor with a medium pack is hit by shrapnel or a Molotov.

Test:

- Random hit location produces Pack / Gear.
- Pack hit die selects pocket / attachment.
- Empty slot absorbs the hit.
- Sack spills contents but does not protect fragile contents.
- Careful Storage case protects fragile contents.
- Seal protects against Wet until breached.

Pass if:

- The procedure is fast enough to use during combat.
- Gear damage feels dramatic rather than punitive bookkeeping.

## Scene Test List

### Stealth Scene

Setup:

Survivors sneak through a warehouse occupied by one patrolling creature.

Include:

- Relaxed -> Alert -> Suspicious -> Aware ladder
- Dim light
- Noise distraction
- Hiding behind clutter
- Misdirection after Aware

Questions:

- Does one stealth check covering a scene feel good?
- Does awareness escalation create tension?
- Does "Aware requires misdirection" make sense?

### Narrative Perception Scene

Setup:

A trapped room contains a hidden panel, a smell clue, a sound clue, and one misleading but fair detail.

Include:

- Player prompt: "What clues do we have here?"
- No passive Perception roll.
- Specific method descriptions.
- Hidden danger with fair foreshadowing.

Questions:

- Do players feel tricked or fairly warned?
- Does the Guide know what clue to give?
- Does expertise matter without replacing player curiosity?

### Combat Tactics Scene

Setup:

A fight in a ruined kitchen with a door, slick floor, table cover, fire, and a pack hit risk.

Include:

- Door holding
- Slippery terrain
- Hazardous zone
- Cover
- Fire exposure
- Pack / Gear result

Questions:

- Does terrain change choices every round?
- Do hazards create positioning goals?
- Does the table remember ongoing start-of-turn effects?

### Cold Survival Scene

Setup:

Survivors must cross an exposed field during severe cold, one character becomes Wet.

Include:

- Effective temperature
- Onset interval
- Warm quality
- Exposed flesh adjustment
- False Warmth
- Frostbitten legs
- Frozen near-death consequence

Questions:

- Does cold feel like a timer?
- Does Wet feel dangerous but understandable?
- Does False Warmth preserve enough agency?

## Session Test List

### One-Night Survival

Premise:

The survivors must find shelter before night, decide whether to spend silver on a Latch-Star ward, and survive one hostile encounter.

Test areas:

- Economy
- Silver wards
- Fire
- Cold
- Food / water
- Pack access
- Fear
- Rest

Pass if:

- Spending a dime, quarter, or dollar on protection feels like a real tradeoff.
- Gear choices matter.
- The night has escalating tension without constant combat.

### Expedition Loop

Premise:

A three-scene expedition: travel, breach, escape.

Test areas:

- Encumbrance
- Packs
- Armor
- Ammunition
- Medical supplies
- Wounds carrying forward
- Fear recovery
- Salvage and barter

Pass if:

- Players care about what they packed.
- Retreat and salvage feel like valid success.
- Resource loss changes later decisions.

## Campaign Test List

### Advancement

Run three short sessions with the same characters.

Track:

- Skill growth
- Trait usefulness
- Injury recovery
- Fear scars / madness
- Gear repair
- Economic progression

Questions:

- Does advancement feel meaningful without levels?
- Do scars and gear history matter?
- Does the system support survivors who become more experienced but not invulnerable?

## Test Report Template

Use this template after each test.

```md
# Test Report

## Test Name

## Date / Players

## Rules Tested

## Scenario Summary

## What Worked

## What Broke

## Confusing Rules

## Slow Moments

## Strong Player Choices

## Weak or Obvious Choices

## Rules Invented at Table

## Recommended Changes

## Retest Needed
Yes / No
```

## Suggested First Tests

Start with these five tests before attempting a full session:

1. Core Resolution probability feel.
2. RHLF commitment room test.
3. Guard doorway test.
4. Armor / stamina / wound comparison.
5. Stealth and narrative perception warehouse scene.

These cover the core identity of the system: dice feel, body commitment, space control, survivability, and fair horror information.
