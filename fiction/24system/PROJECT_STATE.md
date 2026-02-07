# 24-System Project State

Last updated: 2026-02-07

## Current Focus

Primary work is on combat language and trigger-based reactions in `fiction/24system/combat.md`.

## Key Decisions Finalized

- Core space-control term is now **Guard**.
- Official definitions:
  - **Default Guard**: automatic, unspoken baseline state.
  - **Triggered Action**: spoken, conditional response.
- Initiative is not manipulated by Triggered Actions.
- Trigger wording is binding:
  - What is declared is exactly what triggers.
  - Broader trigger wording creates broader risk.
- Abort safety valve is enabled:
  - If a trigger fires and the player aborts, resolve with `2d12`.
  - On a hit, player chooses either:
    - deal damage normally, or
    - deal no damage and take a Minor Complication.

## Combat Rules Added/Updated

In `fiction/24system/combat.md`:

- Replaced prior space-control wording with **Guard** terminology.
- Added and defined **Triggered Action (Spoken)** under Guard rules.
- Added trigger-language examples:
  - "If something enters, I shoot it."
  - "If a man in a purple hat enters, I shoot him."
- Added hit-location targeting section:
  - Default target: Core
  - Called targets: Left Arm, Right Arm, Legs, Head
  - Head shots: `+2 DC`

## Known Consistency Gaps

Other documents still use older wording (for example, "warding") and need alignment to Guard terminology:

- `fiction/24system/playtest-packet.md`
- `fiction/24system/playtest-characters.md`
- `fiction/24system/weapons.md`
- `fiction/24system/README.md`
- potentially other references discovered during pass

## Open Design Questions

- Should Triggered Action include a hard requirement for player-visible trigger wording precision (for example, no implicit hostility assumptions)?
- Should there be a separate perception/identification check before trigger resolution in ambiguous cases, or is abort + consequence enough?
- Should there be a cap on how many triggers can be covered by one Guard state in edge cases?

## Suggested Next Steps

1. Run a terminology sync pass across all `fiction/24system/*.md` to replace outdated space-control wording with Guard/Triggered Action.
2. Add a short "Trigger Writing Guidelines" subsection in `combat.md` with 3-5 canonical examples.
3. Update the player-facing quick references (`playtest-packet.md`, `playtest-characters.md`) to match the latest combat language.
4. Rebuild `fiction/24system/README.md` summary after terminology sync.

## Working Style Preference Recorded

- User prefers proactive spelling correction in edited text.
