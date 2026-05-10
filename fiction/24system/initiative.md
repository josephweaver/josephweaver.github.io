# Initiative

Initiative determines play order when combat begins.

Initiative is rolled once at the start of an encounter. The order remains fixed unless a rule, status effect, or declared combat consequence explicitly changes it.

---

## Rolling Initiative

At the start of combat, every player character and monster rolls:

`2d12 + initiative modifiers`

Act from highest result to lowest result. Once this order is established, the actual initiative numbers no longer matter; only each combatant's place in the order matters.

Initiative modifiers are flat bonuses or penalties. They do not add Leverage dice, Pressure, or keep-highest/keep-lowest dice.

---

## Quantified Conditions

Some conditions make it easier or harder to act quickly at the start of a fight. Apply these directly to the initiative roll.

### Common Initiative Modifiers

| Condition | Modifier | Meaning |
|---|---:|---|
| Surprised | `-2` | You were not ready for immediate danger. |
| Low Light | `-1` | You can see enough to act, but not clearly. |
| Darkness | `-2` | You cannot visually assess the fight quickly. |
| Distracted | `-1` | Your attention is partly committed elsewhere. |
| Severely Distracted | `-2` | You are split between multiple threats or urgent demands. |
| Paranoia (Fear Level 1) | `+1` | Fear makes you hypervigilant and quick to react. |

Modifiers stack. Add all positive and negative modifiers together for the final initiative modifier.

Examples:
- Surprised in darkness: `-2 + -2 = -4`
- Paranoid in low light: `+1 + -1 = 0`

---

## Ties

Players always win ties against monsters.

Players who tie may choose their order among themselves.

If monsters tie with each other, the Guide chooses their order.

---

## Order of Play

After everyone rolls, act in order from highest initiative to lowest initiative.

Initiative order is circular. After the last combatant acts, play returns to the first combatant in the order.

Initiative order is set at the start of the encounter and does not change unless an effect says otherwise. Once set, effects that change initiative move combatants within the rotation; they do not compare the original initiative roll again.

---

## Delaying Your Turn

When your turn comes up, you may delay instead of acting immediately.

Choose a later position in the circular initiative order and move yourself there. This costs one available `RHLF` anchor on the delayed turn, reflecting the loss of combat timing.

When your delayed turn arrives, act normally with the remaining available anchors.

Delaying does not create a second "start of your turn." If a creature is under an effect that resolves at the start of its turn, resolve that effect only when the creature's original turn comes up. The delayed turn is only the creature's action timing.

---

## Interrupts and Follow-ups

On your turn, you may ready an action as either an **Interrupt** or a **Follow-up**.

You must name a specific trigger and the action you will take. Trigger wording must make timing clear:
- **Interrupt:** occurs when the trigger starts, before the triggering action fully resolves.
- **Follow-up:** occurs when the trigger finishes, after the triggering action resolves.

Readying an Interrupt or Follow-up requires committing at least `H`, because the creature is watching, waiting, and timing its response.

The readied action also commits the anchors the declared action would normally require. Those anchors are not available for defense while the action is readied.

A creature with an Interrupt or Follow-up is visibly waiting. Other combatants can tell that something is being held in reserve, even if they do not know the exact trigger or action.

If the specified trigger occurs before your next turn, resolve the declared action immediately.

If the trigger does not occur before your next turn, the Interrupt or Follow-up expires.

---

## Example

A character is Surprised (`-2`) and in Darkness (`-2`).

- Total modifier: `-4`
- Roll: `2d12 - 4`

A character has Paranoia (`+1`) and is in Low Light (`-1`).

- Total modifier: `0`
- Roll: `2d12`
