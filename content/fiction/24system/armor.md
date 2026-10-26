# Armor

Armor is protective gear that turns wounds into stamina loss and gives survivors a chance to stay functional under violence.

The default 24-System armor rule uses one worn armor value for the whole character. Optional hit-location armor can be used when a table wants more gear detail.

## Default Armor

By default, armor is one worn unit.

When a character is hit, use the armor's tier no matter which body region was struck.

| Armor Tier | Wounds Converted per Hit | Movement |
|---|---:|---:|
| Light | 1 | no penalty |
| Medium | 2 | `-1 MR` |
| Heavy | 3 | `-2 MR` |

Armor converts wounds into stamina loss before wounds are applied.

Example: If Medium armor converts `2` wounds and an attack deals `2` wounds, the wearer loses `2 stamina` and suffers no wound from that hit.

## Armor Integrity

Armor has Integrity.

Integrity represents straps, plates, padding, seams, buckles, and overall protective reliability.

When armor loses Integrity, it becomes less reliable, damaged, or harder to keep properly fitted. The exact effect depends on the damage source and repair rules.

Default whole-set Integrity:

| Armor Tier | Integrity |
|---|---:|
| Light | 2 |
| Medium | 3 |
| Heavy | 5 |

Armor can be repaired with appropriate tools, time, materials, and a relevant check.

## Armor Pieces

Armor may be bought, described, or repaired as pieces even when using the default whole-armor rule.

Common pieces:

- Vest / torso
- Helmet
- Legs
- Left arm
- Right arm

Under the default rule, these pieces are descriptive. They explain what the armor looks like, what can be damaged in the fiction, and what repair materials are needed, but they do not create separate location armor during combat.

## Optional Rule: Hit-Location Armor

Use this only if the table wants armor to matter by body location.

Armor slots:

- Torso
- Head
- Legs
- Left arm
- Right arm

Each armor piece protects only its own location.

| Piece Tier | Wounds Converted on that Location | Piece Integrity |
|---|---:|---:|
| Light piece | 1 | 1 |
| Medium piece | 2 | 2 |
| Heavy piece | 3 | 3 |

This optional system makes armor more detailed but slower. Use the default whole-armor rule for faster play.

### Optional Armor Burden

If using hit-location armor, calculate armor burden only when gear changes.

Armor weight values:

- No armor: 0
- Light piece: 1
- Medium piece: 2
- Heavy piece: 3

Add all five armor-slot values, divide by `5`, and round normally.

| Average Burden | Movement |
|---:|---:|
| 0-1 | no penalty |
| 2 | `-1 MR` |
| 3 | `-2 MR` |

Example: Heavy vest only is `3 / 5 = 0.6`, rounded to `1`, so it counts as light burden and has no movement penalty.

## Design Note

The default armor model is "one armor to rule them all."

The optional piece system exists for tables that want targeted damage, partial armor, scavenged suits, or detailed repair play.
