# Fear and Initiative (24-System)

This document replaces [Initiative](initiative.md) and [Fear and Madness](fear-and-madness.md). Use these rules for Fear, initiative, and recovery.

Fear represents acute stress, dread, and cognitive overload. Track it from **0 to 6**. Higher Fear makes you react faster, but increasingly limits the actions you can take.

## Combat Start

At the beginning of any combat:

1. **Roll initiative.** Every player character and monster rolls **`2d12` with Leverage equal to their current Fear**. Complete optional single-die rerolls and record the two final dice and their total, including flat initiative modifiers once.
2. **Resolve enemy moves.** Resolve monsters' initiative critical movement first and record any Fear they cause.
3. **Resolve player moves.** Resolve players' initiative critical movement next, making any required Athletics checks, and record their Fear reductions.
4. **Set new Fear levels.** Apply the recorded Fear gains and reductions, using traits and Banes. Keep tracked Fear at a minimum of 0, then resolve any mental break at Fear 6.
5. **Set turn order.** Use the recorded initiative scores, from highest to lowest. Players win ties against monsters; tied players decide their order among themselves, and the Guide orders tied monsters.

The Leverage available for the roll comes from Fear at the beginning of combat. Fear changes during setup affect subsequent actions; the recorded initiative scores stay the same.

Actions readied before combat can trigger during setup movement. Resolve them at their declared Interrupt or Follow-up timing, then continue the remaining setup steps; see [Interrupts and Follow-ups](#interrupts-and-follow-ups).

**Example:** You begin combat at Fear 2 and roll `2d12` with **Leverage 2**. Your final dice are `12, 7`, for **19**; a zombie's are `12, 4`, for **16**. Both are Partial Criticals. Resolve the zombie's advance to Melee first and record **+2 Fear** for you. Then resolve your bonus move, making any required Athletics checks, and record **-2 Fear**. Your Fear remains **2** after these changes. Your score of 19 beats the zombie's 16, so you act first.

## Rolling Initiative

At the beginning of combat, every player character and monster rolls **`2d12` with Leverage equal to their current Fear**, using the [playtest's Leverage rule](2026-08-playtest.md#dice-resolution).

After seeing the dice, you may use up to that many **single-die rerolls**. Choose either d12 and replace its result with the new face, **even if worse**. You may reroll the same die again or stop at any time. Add the **two final dice**, then apply initiative modifiers once and record the score. Resolve setup movement and Fear changes before using these scores to begin turns.

| Fear | Initiative roll |
|---:|---|
| 0 | `2d12`; no Fear Leverage. |
| 1 | `2d12` with Leverage 1: up to 1 single-die reroll. |
| 2 | `2d12` with Leverage 2: up to 2 single-die rerolls. |
| 3 | `2d12` with Leverage 3: up to 3 single-die rerolls. |
| 4 | `2d12` with Leverage 4: up to 4 single-die rerolls. |
| 5 | `2d12` with Leverage 5: up to 5 single-die rerolls. |
| 6 | Resolve a mental break immediately; Fear drops to 0. |

Fear grants its Leverage anew at the beginning of each combat. Unused rerolls from an earlier combat do not carry over.

Once combat begins, Fear gains, recovery, and mental breaks update Fear restrictions while the current initiative order continues.

### Initiative Modifiers

| Condition | Modifier |
|---|---:|
| Surprised | `-2` |
| Low Light | `-1` |
| Darkness | `-2` |
| Distracted | `-1` |
| Severely Distracted | `-2` |

Applicable modifiers stack as flat bonuses or penalties. These modifiers do not grant additional Leverage or Pressure. Fear is already represented by its Leverage rerolls; there is no additional Fear 1 or Paranoia flat initiative bonus.

For example, a character at Fear 1 who is surprised in darkness rolls `2d12` with **Leverage 1**, may reroll either die once and keep the new result, adds the two final dice, then subtracts 4 (`-2` for surprise and `-2` for darkness).

### Ties and Order of Play

Players win ties against monsters. Players who tie choose their order among themselves; the Guide orders tied monsters.

After setup movement and Fear changes, act from highest initiative to lowest, then return to the first combatant. Once turns begin, only each combatant's position matters. Delay and other effects move combatants within the rotation without comparing the original scores again.

### Initiative Criticals

Check only the **two final dice** after all Leverage rerolls: a final d12 showing **12** grants a **Partial Critical**; a final initiative total of **24** grants a **Legendary**. A Legendary uses its outcome instead of also granting the Partial Critical outcome.

Resolve these outcomes during **combat setup**, with **all enemy moves before player moves**. Record the Fear changes and apply them after both groups finish moving:

| Combatant | Partial Critical | Legendary |
|---|---|---|
| Monster | Advance to **Melee** range with a chosen character, if possible; record **+2 Fear** for that character. | Advance to **Grappling** range with a chosen character, if possible; record **+4 Fear** for that character. |
| Player character | Take one bonus move up to **MR**, making any required **Athletics checks**; record **-2 Fear**. | Take a bonus move up to **twice MR**, making any required **Athletics checks**; record **-4 Fear**. |

Use [normal movement rules](movement.md), including terrain, Guard, engagement, injuries, and the Fear restrictions in effect during setup movement. Bonus movement does not spend the combatant's normal `F` action. A monster already at the indicated range or closer does not move away; record its Fear effect even if its advance is blocked or unnecessary.

After all setup movement, apply each character's net Fear change, with Fear traits applied to incoming Fear and applicable Bane modifiers still in effect. Resolve any mental break, then use the recorded initiative scores to determine turn order.

**Act before being attacked:** At the start of a player character's first turn in combat, reduce their Fear by **1** if no attack has been attempted against them since combat began. This benefit applies once per combat; an attack counts even if it misses.

## Fear Restrictions

Use the row for your current Fear. Pressure values are totals from Fear, not additions to the previous row. Concentration Pressure applies to skills such as **Lore, Science, Social, and Magic**. Hostile-action Pressure applies to **Melee and Ranged actions against a source of your Fear**.

### Which Source Determines Movement?

Only **one source** determines the direction you can or cannot move: the source with the **highest Fear rating**. If sources have equal ratings, use the **most recently encountered** source. A newer, weaker source adds Fear but does not override a stronger source's movement direction.

Use your **total current Fear** to determine the severity of movement restrictions, and this **controlling source** to determine their direction. Other sources do not impose additional directional restrictions. This selection applies to movement; hostile-action Pressure still applies against sources of your Fear.

| Fear | State | Concentration Pressure | Hostile-action Pressure | Movement and action restrictions |
|---:|---|---:|---:|---|
| 0 | Steady | 0 | 0 | No Fear restrictions. |
| 1 | Unease | 0 | 0 | No Fear restrictions. |
| 2 | Tension | 1 | 0 | Movement toward the controlling source is at half speed. |
| 3 | Strain | 1 | 1 | You cannot move toward the controlling source. |
| 4 | Panic | 2 | 2 | You cannot move toward the controlling source and must actively move at least one step away from it on your turn. |
| 5 | Overwhelm | 3 | 3 | You cannot move toward the controlling source and must use all available movement to move away from it on your turn. |
| 6 | Mental Break | — | — | Fear immediately drops to 0; gain a permanent Bane tied to the source of your Fear. |

### Fear Traits

- **Commander:** Use your `H` action and make a Social check at DC `13 + the target's current Fear`. On a success, reduce the target character's Fear by 1 level; on a Partial Critical success, reduce it by 2 levels instead.
- **Psychologist:** Once per session, make a Science check at DC `18` to address one specific Bane affecting another character. Track successes across sessions for that character and Bane. After you accumulate 3 successes, that character can ignore that Bane at will.
- **Foolhardy:** You rarely appreciate danger until it is already happening. Reduce incoming Fear by 1.
- **Cowardly:** Your imagination races ahead of you. Increase Fear gained by 1.
- **Brave:** Use your `H` action to treat your Fear as 2 levels lower for determining movement restrictions for the remainder of your turn.

## Fear Recovery

In the **beat (round) immediately after you gain Fear**, you may take a **full `RLHF` action** to reduce Fear by **1 point**, at most **once per scene**. This commits both hands, head, and feet. The recovery action is only available in that following beat; it cannot be saved for a later round. Gaining Fear again creates another following-beat recovery window, but does not reset the once-per-scene limit.

Distance from the threat, shelter, reassurance, escape, or evidence that the danger has ended can provide an opportunity to take this action within its recovery window. A scene ending does not automatically remove Fear. Initiative criticals and acting before being attacked reduce Fear under their own rules without using this recovery action or its once-per-scene allowance. Commander reduces Fear according to its own trait rules.

During a **full rest**, Fear resets to **0**. This reset does not require the recovery action and is not limited to the beat after gaining Fear. Permanent Banes remain; any situational Fear modifier from a Bane still applies while its trigger is present.

A mental break resets Fear immediately without requiring a recovery action. Normal recovery does not remove the resulting permanent Bane.

## Investigation Rhythm

A typical investigation alternates **scare → rest → scare → rest**. When a threat begins combat, use the combat-start procedure above. After characters gain Fear, give them an opportunity to take the recovery action in the following beat, subject to movement restrictions and available anchors. Further Fear gains update restrictions during play; the combat's initiative order continues. Repeat this rhythm through the investigation, rolling initiative at the beginning of each new combat.

- **Typical:** One scare, followed by an opportunity to rest and recover.
- **Occasional:** Two consecutive scares before recovery.
- **Rare:** Three consecutive scares before recovery.
- **Four consecutive scares:** Never the normal pacing; reserve this for players who are really pushing onward without rest.

The recovery action removes only 1 Fear per scene, so a larger scare can leave lingering Fear after a brief pause. A full rest resets Fear to 0.

## Delaying Your Turn

When your turn comes up, you may delay. Choose a later position in the circular initiative order and move yourself there. This costs one available `RHLF` anchor on the delayed turn, reflecting lost combat timing. Act with your remaining anchors when that position arrives.

Delaying does not create a second start of your turn. Resolve start-of-turn effects only at your original position; the delayed turn changes only your action timing. Your actions remain subject to your current Fear restrictions.

## Interrupts and Follow-ups

You may ready an action **before combat**, while actively waiting for a specified condition, or **on your turn during combat**. Declare the exact trigger, your response, its timing, the required anchors, and any ammunition or stamina costs:

- **Interrupt:** Resolves when the trigger starts, before the triggering action fully resolves.
- **Follow-up:** Resolves when the trigger finishes, after the triggering action resolves.

Readying either requires committing at least `H`, plus all anchors the declared action normally requires. Those anchors are unavailable for defense while the action is readied. Other combatants can see that you are waiting, even if they do not know your trigger or response.

**Trigger wording matters:** Resolve the trigger exactly as declared. "If something enters, I shoot it" includes any entrant; "If a man in a purple hat enters, I shoot him" specifies a narrower condition. Once the condition is met, the declared response fires at its chosen timing, even if the result is now undesirable.

Before combat, the declaration remains active while you maintain your attention and preparation. It carries into combat, including setup movement, until the start of your first turn. During combat, a declaration expires at the start of your next turn if its trigger has not occurred; you may ready it again on that turn.

When the trigger occurs, resolve the response at its declared timing, even if the trigger starts combat or occurs during combat setup. Apply normal action costs, checks, and current Fear restrictions. The response uses its committed anchors. Then continue setup or the existing turn order; a triggered action does not change initiative order.

### Abort

You may cancel the declaration before its trigger occurs. To abort a **readied attack after the trigger occurs**, use the existing combat rule:

- Roll **`2d12`** against the attack's normal DC to resolve the attack.
- **On a hit**, choose either normal damage or **no damage and a Minor Complication** instead.
- **On a miss**, the attack misses.

Resolve the attack's usual ammunition and stamina costs. The Minor Complication represents pulling away from an already committed response.

## Mental Breaks and Permanent Banes

When Fear reaches **6**, the character suffers a **mental break**. Immediately reduce their Fear to **0** and give them a **permanent Bane related to the source of that Fear**. During combat setup, resolve this when setting the new Fear levels, before using the recorded scores to determine turn order. During combat, resolve it when the threshold is reached and continue the current initiative order.

**Madness and Banes are cumulative.** Each mental break adds a permanent Bane; resetting Fear does not remove earlier Banes. Applicable Bane effects stack, including repeated instances of the same Bane. Each Fear-increasing Bane adds **+1 Fear** while its trigger is present: two applicable Banes add **+2 Fear**, three add **+3**, and so on.

Record each Bane's trigger, effect, and number of times gained. For example:

> **Fear of Small Dogs:** In the presence of small dogs, your Fear level is 1 point higher.

Suffering two mental breaks tied to small dogs gives **Fear of Small Dogs 2**: your Fear is **2 points higher** while small dogs are present. Different Fear-increasing Banes also stack when their triggers are present together.

These are situational increases to Fear while their triggers are present, not additional points gained every round. They affect both initiative and Fear restrictions. Fear reductions and resets lower tracked Fear to a minimum of 0; active Bane modifiers remain in effect. After a reset, Fear of Small Dogs 2 makes your effective Fear 2 while small dogs remain present.

Fear is temporary and situational, but cumulative Banes remain after rest and recovery. Repeated mental breaks add lasting scars tied to what the character has survived.
