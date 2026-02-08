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

## Priority Rule

If multiple status effects conflict:
1. The most restrictive action limit applies.
2. Apply the highest DC increase from statuses that affect the same action.
3. If two effects both set speed, use the lower speed.
