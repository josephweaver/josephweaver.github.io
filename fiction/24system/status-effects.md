# Status Effects

Status effects are temporary or scene-level conditions that change what a character can do.
They stack with wounds, fear, and pressure unless a rule says otherwise.

Use this format:
- **How it starts**
- **Effect**
- **How it ends**

Poison and disease are intentionally excluded here and handled separately.

---

## Blind

**How it starts**
- No functional visual targeting (darkness, smoke, sensory damage, blindfold, etc.).

**Effect**
- Apply blind action penalties by task type:
  - `+2 DC`: gross movement on known ground (short move, simple footing check).
  - `+4 DC`: contact/precision actions (strike, grapple, disarm, called placement, lock manipulation).
  - `+6 DC` or disallow: high-risk navigation (long leap, unstable climb, hazard crossing).
- Guide chooses the nearest category by fiction.

**How it ends**
- Visual targeting is restored, or another valid sense/ability explicitly replaces sight.

---

## Prone

**How it starts**
- Knockdown, failed footing, throw, blast force, or voluntary drop.

**Effect**
- Speed is `0` until you stand.
- Melee attacks against you gain one advantage step (see `core.md` Advantage Step Rule).
- Your melee attacks while prone take `+2 DC` unless using an explicit prone-capable action.
- You cannot use Dodge actions that require full footwork.

**How it ends**
- Spend a movement action to stand (requires usable `F` and no status preventing rise).

---

## Grabbed

**How it starts**
- At least one anchor (`L`, `R`, `F`, or `H`) is restrained by a grapple lock.

**Effect**
- Speed is `0`.
- Restrained anchors cannot be used except to attempt `Break Free`.
- If you have no active lock on your grappler and act without `H`, use Blind penalties as appropriate.

**How it ends**
- Remove all locks affecting you (usually via `Break Free`, forced separation, or grappler release).

---

## Pinned

**How it starts**
- Three of your anchors are restrained.

**Effect**
- You are fully restrained.
- Your remaining unrestrained anchor is treated as unusable.
- You cannot move, stand, advance, or reposition.
- You may only attempt `Break Free` or other explicitly allowed minimal actions.

**How it ends**
- Reduce restraints to fewer than three anchors.

---

## Restrained

**How it starts**
- Environmental bindings, tools (cuffs/rope), or effects that physically limit action.

**Effect**
- Speed is `0` unless the restraint explicitly allows partial movement.
- Any anchor bound by restraint cannot be used for normal actions.
- Actions requiring bound anchors are unavailable until freed.

**How it ends**
- Break, pick, cut, or otherwise remove the restraint.

---

## Disoriented

**How it starts**
- Head trauma, flash effects, violent motion, fear spikes, or sensory overload.

**Effect**
- `+2 DC` to actions requiring precise targeting, planning, or rapid reassessment.
- You cannot take Triggered Actions that depend on fine identity discrimination unless you first re-acquire target certainty.

**How it ends**
- End of next turn by default, or earlier with successful stabilization/recovery effect.

---

## Stunned

**How it starts**
- Severe impact, electrical shock, concussion effect, or major interruption.

**Effect**
- Lose your next declared action.
- You may still take minimal reflexive defense if an anchor is available.

**How it ends**
- After the skipped action resolves.

---

## Silenced

**How it starts**
- Gagged, choking hold, vacuum/no air, magical suppression, or severe throat trauma.

**Effect**
- Cannot perform speech-dependent actions (many Social actions, verbal spell components, clear command calls).
- Nonverbal actions are unaffected unless other anchors are also constrained.

**How it ends**
- Airway/speech pathway restored.

---

## Incapacitated

**How it starts**
- Collapse, extreme trauma, unconsciousness, shock, or explicit effect.

**Effect**
- Cannot take voluntary actions.
- Cannot maintain Guard, Triggered Actions, or active defenses.
- Usually treated as defenseless in direct conflict.

**How it ends**
- Stabilization, recovery, or external intervention returns functional action capacity.

---

## Unconscious

**How it starts**
- Usually from severe head/core trauma or sedation.

**Effect**
- You are Incapacitated and unaware.
- Cannot defend, move, speak, or perform checks.

**How it ends**
- Wake by medical intervention, recovery, or fiction-appropriate trigger.

---

## Bleeding

**How it starts**
- Open trauma judged by the Guide as ongoing blood loss.

**Effect**
- At end of your turn, take escalating pressure or 1 progress toward additional harm (Guide chooses model for scene).
- Strenuous actions while bleeding may add `+2 DC`.

**How it ends**
- Bleeding is staunched (first aid, compression, cauterization, or equivalent effect).

---

## On Fire

**How it starts**
- Flame attaches to a carried item, worn item, hit location, or the creature's body.
- Usually caused by Flammable material, burning fuel, sustained fire contact, or a specific fire effect.

**Effect**
- Use the On Fire rules in `damage-types.md`.
- Mark the scope: Item On Fire, Location On Fire, or Body On Fire.
- Burn effects resolve at the start of the affected creature's turn.
- Complex actions while On Fire take at least `+2 Pressure`.
- On Fire may damage gear, spread from Flammable material into Burnable areas, or escalate if the creature remains in fire.

**How it ends**
- The fire is extinguished, smothered, doused, deprived of fuel, or the burning item is removed.
- Becoming Wet may end On Fire if the water is sufficient for the fire's size and fuel source.

---

## Wet

**How it starts**
- Soaked by rain, immersion, thrown water, burst pipes, flooding, or similar exposure.
- May also apply to specific items, hit locations, or surfaces instead of the whole creature.

**Effect**
- Wet cancels the Flammable quality while the target remains wet.
- Wet does not remove Burnable; exposed flesh can still be burned by direct heat or flame.
- Electrical damage may spread through Wet creatures, items, or surfaces.
- Wet counts as `20°C` colder for cold exposure while the target remains wet.
- Wet may impose Pressure on actions where slick grip, soaked gear, weight, or chill matters.

**How it ends**
- The target dries out, changes gear, is warmed, is wiped down, or the scene moves beyond the wet condition.
- Strong heat or fire may end Wet on a location or item, but may also expose it to burn effects.

---

## Cold Exposure

**How it starts**
- Prolonged exposure to freezing air, ice water, deep snow, supernatural cold, or similar conditions.
- Some monsters or hazards may accelerate cold exposure instead of waiting for normal environmental time.
- Cold Exposure abstracts both hypothermia and local cold injury. It is not a medical model; it is a survival-horror timing model.
- Environmental severity is determined by onset time. Use effective temperature, including wind chill, wetness, exposure, altitude, accumulation, and similar conditions.
- Exposure is measured from the least protected important area. If most of the body is protected but one important area is exposed, use that exposed area to determine effective temperature.

Typical onset interval:

| Effective Temperature | Onset Time |
|---|---:|
| 10°C to 0°C | 24 hours |
| 0°C to -10°C | 8 hours |
| -10°C to -20°C | 1 hour |
| -20°C to -30°C | 10 minutes |
| -30°C and below | 1 minute |

**Effect**
- Effective temperature adjustments:
  - Exposed flesh counts as `10°C` colder.
  - Equipment with the Warm quality counts as `10°C` warmer for covered locations.
  - Example: a sealed suit without a helmet still suffers the exposed flesh adjustment because the head is the least protected important area.

- Cold Exposure is a status track:
  - Chilled
  - Hypothermic
  - False Warmth
  - Frostbitten
  - Frozen
- At each onset interval of continued exposure, worsen Cold Exposure by one step.

Cold state effects:
- Chilled: `+1 Pressure` on fine manipulation, steady aim, and quiet movement.
- Hypothermic: `+2 Pressure` on physical actions; recovery requires warmth or shelter.
- False Warmth: cold Pressure ends, but judgment fails. At the start of the character's turn while still exposed to cold, roll `1d4`:
  1: Lose H. Mumbles, stares, misunderstands danger, or acts by habit.
  2: Lose one arm. Fumbles straps, loosens gear, drops something, or loses grip.
  3: Collapse Prone.
  4: Act normally.
- Frostbitten: The legs suffer cold damage or impairment by default.
- Frozen: The creature is Incapacitated until thawed or rescued. This is a near-death experience and should cause madness or a lasting survival scar.

If an ally physically guides, restrains, warms, or clearly commands a character in False Warmth, the Guide may allow a recovery check or suppress the random behavior for that turn.

**How it ends**
- Chilled may end with warmth, dry clothing, movement, or shelter.
- Hypothermic or worse requires meaningful warmth, shelter, treatment, or scene-level recovery.
- Frostbitten may leave cosmetic or fictional marks such as skin discoloration, numb patches, or missing fingers, but no long-lasting game effect by default.
- Frozen may leave wounds, madness, or lasting survival scars at Guide discretion.

---

## Priority Rule

If multiple status effects conflict:
1. The most restrictive action limit applies.
2. Apply the highest DC increase from statuses that affect the same action.
3. If two effects both set speed, use the lower speed.
