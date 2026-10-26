## Wounds, Trauma, and Disability (24-System)

Wounds represent lasting physical trauma. Unlike stamina, wounds do not recover quickly and have escalating consequences. Wounds are tracked by body region and progress through defined states.

### Wound States

Each wound advances the affected location one step. Head and limb tracks have **4 wound steps**; the Core has **6**, matching the [current playtest](2026-08-playtest.md#wounds).

- **Limbs:** OK → Injured → Severe injury → Disabled → Crippled.
- **Head:** OK → Injured → Severe injury → Disabled → Unconscious.
- **Core:** OK → Bruised → increasingly severe injuries → Unconscious.

Reaching the final step of any track causes **Bleeding 3**. Tracks stop at their final step; excess wounds cause that step's consequences rather than automatic death or dismemberment. Head and Core collapse leaves the character unconscious and unable to act or defend. Limb injuries disable that limb without automatically causing unconsciousness.

---

## Body Regions & Wound Tracks

### Arms (Left / Right)

Each arm tracks wounds independently.

| Wounds | State | Effect |
|------|------|-------|
| 0 | OK | Full use |
| 1 | Injured | +1 DC on actions involving the arm |
| 2 | Severe injury | +2 DC on actions involving the arm |
| 3 | Disabled | Arm unusable for attacks, blocking, warding, or two-handed actions |
| 4 | Crippled | Arm remains attached but unusable; Bleeding 3 |

Notes:
- If either arm is Disabled, two-handed weapons cannot be used.
- A second Disabled arm leaves the character effectively unarmed.
- Crippled arms have the same action restrictions and can recover through medical care.

---

### Head (Special Case)

The Head follows the playtest's four-step injury track.

| Wounds | State | Effect |
|------|------|-------|
| 0 | OK | No effect |
| 1 | Injured | +1 DC on actions involving the Head |
| 2 | Severe injury | +2 DC on actions involving the Head |
| 3 | Disabled | Head disabled |
| 4 | Unconscious | Cannot act or defend; Bleeding 3 |

Notes:
- Reaching or exceeding 4 Head wounds causes unconsciousness rather than immediate death.
- Excess Head wounds remain at this track's final step; they do not spill into the Core.

---

### Legs (Shared Track)

Legs use a shared wound pool representing both legs together.

| Wounds | State | Effect |
|------|------|-------|
| 0 | OK | Normal movement |
| 1 | Injured | +1 DC on actions involving the legs |
| 2 | Severe injury | +2 DC on actions involving the legs |
| 3 | Disabled | Cannot run, dodge, or stand unaided |
| 4 | Crippled | Legs remain attached but unusable; Bleeding 3 |

Notes:
- Disabled legs reduce the character to crawling or immobility.
- Crippled legs have the same movement restrictions and can recover through medical care.

---

### Core (Torso / Vital Mass)

The core represents vital organs and systemic trauma.

| Core Wounds | Condition | Effect |
|------------|----------|--------|
| 0 | OK | No effect |
| 1 | Bruised | No DC penalty |
| 2 | Injury | +1 DC on actions involving the Core |
| 3 | Injury | +2 DC on actions involving the Core |
| 4 | Injury | +3 DC on actions involving the Core |
| 5 | Injury | +4 DC on actions involving the Core |
| 6 | Unconscious | Cannot act or defend; Bleeding 3 |

Notes:
- Core wounds come from hits or effects that damage the Core. Bleeding causes stamina loss under the rules below.
- Reaching or exceeding 6 Core wounds causes unconsciousness rather than immediate death.

---

## Unconsciousness and Bleeding

An unconscious character is **Incapacitated and unaware** and cannot act or defend; see [status-effects.md](status-effects.md#unconscious).

- **Bleeding X** causes **X stamina loss per round**, including while unconscious.
- At **-5 stamina**, a character falls unconscious even without a final-step wound.
- If bleeding continues after unconsciousness, roll `1d6` once for the death threshold: **-5 - 1d6 stamina**. The character dies when bleeding reduces stamina to or below it.
- **Diehard** uses `1d12` instead: **-5 - 1d12 stamina**.
- **Stop Bleeding:** Make a **Science check at DC 7 + 2 × the Bleeding value**: Bleed 1 is **DC 9**, Bleed 2 is **DC 11**, Bleed 3 is **DC 13**, and so on. Success removes the Bleeding condition entirely; on failure, bleeding continues normally. Use the Treat Wound action (`L(R)H`) in [skills.md](skills.md#science).
- Stopping the bleeding prevents further bleeding loss; it does not heal wounds or restore lost stamina.

Death remains possible from unattended bleeding. A powerful hit can end the fight while leaving time for rescue.

---

## Armor and Wounds

Armor is worn as a **single unit**, not by location.

Armor converts wounds to stamina loss when hit.

| Armor Type | Wounds Converted per Hit |
|-----------|--------------------------|
| Light | 1 |
| Medium | 2 |
| Heavy | 3 |

Rules:
- Armor converts wounds **before** they are applied to a body region.
- Excess wounds beyond the armor’s conversion capacity are suffered as normal wounds.
- Armor does not prevent disability or unconsciousness when the remaining wounds reach a track's threshold.
- Armor may lose Integrity or effectiveness based on attack results and weapon properties; see [weapons.md](weapons.md).

---


## Medical Care & Recovery

- **Injured**: Can recover with rest and basic medical attention.
- **Disabled**: Requires significant treatment, splinting, or surgery.
- **Crippled**: The limb remains attached and can recover with serious medical care.
- **Unconscious from wounds**: The character can wake once the Head is below 4 wounds, the Core is below 6 wounds, and stamina is above -5. Healing one cause does not remove another.
- **Core wounds**: Require urgent care; failure to stabilize may result in death.

Use the [playtest's healing and medical care rules](2026-08-playtest.md#healing-and-medical-care) for nightly recovery. Stopping active bleeding uses the **Stop Bleeding** check above.
