# Equipment

Equipment rules are meant to make gear matter without turning inventory into accounting.

## Packs

Packs serve two purposes:

- Create a lightweight encumbrance system, matching `movement.md`.
- Give Pack / Gear hits a concrete way to determine what is damaged.

### Object Sizes

Objects are grouped by carried size:

- Large
- Medium
- Small
- Tiny

Size conversion:

| Conversion | Equivalent |
|---|---:|
| `2` Medium | `1` Large |
| `10` Small | `1` Medium |
| `100` Tiny | `1` Small |

### Pack Categories

Use the same pack categories as `movement.md`.

| Pack | Movement | Pack Hit Die | Capacity |
|---|---:|---:|---|
| Light Pack | no penalty | `d6` | 1 Large attachment, 1 Medium pocket, 3 Small pockets |
| Medium Pack | `-1 MR` | `d8` | 1 Large attachment, 2 Medium pockets, 4 Small pockets |
| Heavy Pack | `-2 MR` | `d12` | 2 Large attachments, 3 Medium pockets, 6 Small pockets |

### Pack Slots

Each attachment point or pocket is a numbered pack slot.

Slot `1` is always the pack itself.

When a Pack / Gear result is hit, roll the pack's hit die:

- Light Pack: `d6`
- Medium Pack: `d8`
- Heavy Pack: `d12`

The result indicates which pack slot is hit. If the slot is empty, only that pocket or attachment point is damaged; the player lucked out.

### Accessing Pack Gear

Attachments are exposed and ready. An item on an attachment point can be accessed immediately if the relevant hand is free.

Holsters, sheaths, loops, straps, and clips are the normal way weapons and tools attach to attachment points. They are assumed to be generally available unless the fiction says otherwise.

Items inside backpack pockets require a Hand action to retrieve.

Nested storage is allowed, but each layer must be opened or searched. Retrieving an item from a sack inside a backpack pocket requires digging through the backpack, then the sack.

### Light Pack Slots

Roll `1d6`:

| Roll | Slot |
|---:|---|
| 1 | Pack itself |
| 2 | Large attachment |
| 3 | Medium pocket |
| 4 | Small pocket |
| 5 | Small pocket |
| 6 | Small pocket |

### Medium Pack Slots

Roll `1d8`:

| Roll | Slot |
|---:|---|
| 1 | Pack itself |
| 2 | Large attachment |
| 3 | Medium pocket |
| 4 | Medium pocket |
| 5 | Small pocket |
| 6 | Small pocket |
| 7 | Small pocket |
| 8 | Small pocket |

### Heavy Pack Slots

Roll `1d12`:

| Roll | Slot |
|---:|---|
| 1 | Pack itself |
| 2 | Large attachment |
| 3 | Large attachment |
| 4 | Medium pocket |
| 5 | Medium pocket |
| 6 | Medium pocket |
| 7 | Small pocket |
| 8 | Small pocket |
| 9 | Small pocket |
| 10 | Small pocket |
| 11 | Small pocket |
| 12 | Small pocket |

### Pack Damage

When the pack itself is hit, the pack may be torn, soaked, burned, contaminated, or forced open depending on the source.

When a pocket or attachment is hit, the pocket or attachment is torn open and its contents spill out.

Spilled contents land nearby. Fragile contents may break when they hit the ground, depending on the item, surface, and source of the hit.  Flamable contents exposed to fire, ignite.

Examples:
- Fire may ignite Flammable contents or damage the pack.
- Water may make contents Wet.
- Acid may destroy a container and then affect nearby contents.
- Impact may scatter loose gear or break fragile spilled items.

### Doffing Packs

A pack may be doffed as a Hand action, as described in `movement.md`.

## Belts and Bandoliers

Belts and bandoliers keep small gear accessible without using pack space.

A belt or bandolier may be equipped with either:

- Up to `4` Small attachment points, or
- Up to `100` Tiny attachment points

Small attachment points are for items like knives, pouches, vials, tools, ammunition bundles, or compact supplies.

Tiny attachment points are for very small repeated items like individual rounds, pins, matches, beads, tabs, or similar tiny objects.

### Belt / Bandolier Hits

Belts and bandoliers can be hit when an attack affects torso equipment.

Roll based on how the belt or bandolier is organized:

- Small attachment points: roll `1d4`
- Tiny attachment points: roll `1d100`

The result indicates which attachment point is hit.

If the attachment point is empty, only that belt loop, pouch, strap, or tiny holder is damaged; the player lucked out.

If the attachment point contains an item, the item is affected first. Fragile items may break, Flammable items may ignite, Wet items may spread dampness, and loose items may scatter.

## Sacks

Sacks are flexible containers used to hold loose gear.

An empty sack is one size smaller than the pocket or attachment point it creates:

| Sack | Empty Size | Creates |
|---|---|---|
| Small Sack | Tiny | Small loose pocket |
| Medium Sack | Small | Medium loose pocket |
| Large Sack | Medium | Large loose pocket |

When used, a sack turns a hand, pocket, or attachment point of the sack's created size into a loose pocket for carrying gear.

Sacks may be:

- Carried by hand, if the sack's created size is reasonable for that hand.
- Placed inside a matching pocket.
- Attached to a matching attachment point.

A hand-carried sack occupies the carrying hand. Actions requiring that hand are unavailable until the sack is dropped, set down, or transferred.

An attached sack uses the matching attachment point and functions like a pocket at that point. If that attachment point is hit, the sack is hit first.

When a sack is hit, it may tear open and spill its contents. Fragile contents may break when they hit the ground, depending on the item, surface, and source of the hit.

A sack does not create extra pack capacity; it organizes or contains what the hand, pocket, or attachment point could already carry.

Retrieving an item from a sack requires a Hand action. If the sack is nested inside another container, the outer container must be accessed first.

A sack inside another container keeps its contents together if spilled, but it does not protect fragile contents from breaking.

## Rigid Containers

Rigid containers include cases, chests, boxes, tubes, tins, and similar protective storage.

Rigid containers come in all sizes.

A rigid container stores items one size category smaller than itself:

| Container Size | Stores |
|---|---|
| Large | Medium or smaller items |
| Medium | Small or smaller items |
| Small | Tiny items |

Rigid containers protect contents from ordinary falling, spilling, crushing, and rough handling better than sacks or pockets.

Example: a firebomb stored in a rigid case inside a backpack pocket may fall out when the pocket tears, but the firebomb remains intact unless the case itself breaks or the source directly affects it.

When a rigid container is hit, the container is affected first. If it breaks, opens, burns, leaks, or is breached, then resolve effects against the contents.

### Careful Storage Quality

Careful Storage is a quality for rigid containers designed to protect fragile contents.

Cases, chests, tubes, padded boxes, and similar rigid containers may have the Careful Storage quality.

When a pocket or pack slot containing a Careful Storage container is torn open, the container falls out first. The contents are not immediately scattered or broken unless the container itself breaks or the source directly affects its contents.

Only one layer of Careful Storage applies. If the Careful Storage container is later hit, dropped hard, burned, soaked, crushed, or breached, resolve damage to the container and its contents normally.

## Seal Quality

Seal is a quality for containers that protect their contents from water, dust, gas, contamination, and leakage.

Cases, chests, sacks, bottles, tubes, and similar containers may have the Seal quality if made for it.

While sealed:

- Contents do not become Wet from ordinary rain, splashing, or brief immersion.
- Liquids inside do not leak out under normal handling.
- Contaminants do not enter unless the seal is broken, opened, punctured, burned, or overwhelmed.

A sack with the Seal quality functions like a waterskin mechanically.

## Waterskin

A waterskin is a sealed flexible container for liquid.

Mechanically, treat it as a sack with the Seal quality.

- Empty waterskin: Small item.
- Filled waterskin: usually Medium item.
- A filled waterskin allows `1` survivor to camp/rest without a nearby water source.
- If punctured, torn, or opened, it leaks and may make nearby contents or surfaces Wet.
- If filled with fuel instead of water, it may carry the Flammable quality by contents.
