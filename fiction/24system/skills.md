# Skills

Skills define **what kinds of actions a character can attempt**, not passive bonuses.
Each skill grants explicit actions players may declare.

Use this format for every action:
- `RLHF:` Required body anchors (`R`, `L`, `H`, `F`).
- `Check:` Which skill roll is used.
- `DC:` Typical target numbers for non-contested actions.
- `On Success:` What the action does.

If an action is contested, the initiator rolls against a DC equal to the defender's average result for the relevant defensive skill/tier (meet or beat).
Apply wound penalties from `wounds.md` using the action's required anchors.

### Reaction Commitment Rule

By default, reactions do **not** require `H`.

- A reaction can only use anchors the character did **not** spend on their own turn.
- If a reaction needs `L`, `R`, or `F`, that anchor must be uncommitted from the character's last declared action.
- A reaction only requires `H` if a specific rule explicitly says it does.
- Dodge exception: spending `F` on normal movement/reposition does not consume Dodge.
- High-commitment footwork (`Sprint`/`Leap`) does consume Dodge unless a trait explicitly allows otherwise.


### Skill Duration

Use these duration tags to pace actions without stopwatch tracking:
- `Instant`: resolves in the current action/beat.
- `Short`: about one focused action (can stretch under pressure).
- `Extended`: multiple actions/beats; usually interrupted by danger.
- `Scene`: remains relevant for the current scene unless fiction breaks it.
- `Sustained`: lasts while actively maintained by the user.

Duration can shift by fiction:
- Partial Critical may reduce one duration step for time-sensitive actions.
- Legendary Success can reduce two steps when numerically sensible.

---

## Skill Rank Dice

Use the skill's rank when rolling that skill:

| Rank | Roll | Average Result | Contested DC (Rounded Up) |
|---|---|---|---|
| 0 | `2d12` | `13` | `13` |
| 1 | `d10 + d12 + 2` | `14` | `14` |
| 2 | `2d10 + 4` | `15` | `15` |
| 3 | `d8 + d10 + 6` | `16` | `16` |
| 4 | `2d8 + 8` | `17` | `17` |
| 5 | `d6 + d8 + 10` | `18` | `18` |
| 6 | `2d6 + 12` | `19` | `19` |

Roll all dice, keep the two highest dice, then add the flat bonus.
Leverage and Pressure from `core.md` still apply.

### Contested Checks (Explicit Rule)

For any action marked contested:
- Identify the defender's relevant skill tier.
- Use that tier's **Average Result** from the table, rounded up, as the DC.
- Initiator rolls normally and must meet or beat that DC.

Example:
- Attacker Shove at Rank 2 rolls `2d10 + 4`.
- Defender has Rank 3 Athletics (`d8 + d10 + 6`), average `16`.
- Shove DC is `16`, so attacker needs `16+`.

---

## Difficulty Benchmarks

| DC | Difficulty |
|---|---|
| 6 | Trivial |
| 8 | Easy |
| 10 | Average |
| 12 | Moderate |
| 14 | Hard |
| 16 | Very Hard |
| 18+ | Nearly Impossible |

Guideline for declared actions:
- If task is routine and low risk, no roll.
- If task has danger, time pressure, or meaningful consequence, roll.

### Rule of Cool DC Offset

To keep play fast and cinematic, apply a `-2 DC` offset to all **non-contested** DCs in this document.
- Minimum adjusted DC is `6`.
- Contested checks do **not** use this offset; they still use defender average rounded up.

### Legendary Conversion Rule

`Legendary Success:` gain all listed Partial Critical effects and double all numeric values in those effects. The Guide may add one cinematic rider when fiction strongly supports it.
### Blindness Reference

Blindness and other scene conditions are defined in `status-effects.md`.

---

## Athletics

**Theme:** Whole-body exertion, balance, force, terrain.

### Core Actions

- **Sprint**  
  `RLHF: F`  
  `Check: Athletics`  
  `Duration: Instant`
  `DC: 10` rough terrain, `12` crowded or unstable ground, `14+` hazards while sprinting.  
  `On Success:` Spend 1 stamina, gain `+2 MR` this round. Rank 2: first sprint each scene is free. Rank 4: first two are free. Rank 6: first three are free.
  `Partial Critical (choose one):` gain +2 MR this round; or ignore difficult terrain this move; or refund stamina cost.
  `On Miss`: Spend 1 stamina, but move normally.

- **Leap**  
  `RLHF: FH`  
  `Check: Athletics`  
  `Duration: Instant`
  `DC by distance:`  
  Horizontal: `8`=5 ft, `10`=8 ft, `12`=10 ft, `14`=12 ft, `16`=15 ft, `18`=20 ft, `20`=25 ft.  
  Vertical: `8`=1.5 ft, `10`=2 ft, `12`=3 ft, `14`=4 ft, `16`=6 ft, `18`=8 ft, `20`=10 ft.  
  `On Success:` Clear the gap/height.  
  `Partial Critical (choose one):` land in ideal footing; or add +5 ft horizontal or +1 ft vertical; or carry one adjacent ally/item without penalty.
  `On Miss:` Land short, hang at edge, or fall per terrain danger.

- **Climb**  
  `RLHF: LRFH`  
  `Check: Athletics`  
  `Duration: Short`
  `DC: 8` ladder/rope, `12` rough wall, `16` slick wall, `18+` overhang/no holds.  
  `On Success:` Move up to half MR vertically (or full MR with fixed gear).
  `Partial Critical (choose one):` climb at full MR this action; or leave a stable route granting one advantage step to next climber; or ignore one hazard on the route.

- **Swim**  
  `RLHF: LRFH`  
  `Check: Athletics`  
  `Duration: Short`
  `DC: 10` calm water, `12` current, `14` storm/drain pull, `16+` armor or injury in strong current.  
  `On Success:` Move half MR in water (full MR if unarmored and calm).
  `Partial Critical (choose one):` move full MR in water this action; or avoid breath loss/panic cost this round; or tow one creature one range step.

### Contested / Tactical Actions

- **Shove / Bullrush**  
  `RLHF: LHF`  
  `Check: Athletics (contested vs Athletics or Melee)`  
  `Duration: Instant`
  `On Success:` Push target 5 ft or break their engagement. Beat by 4+: push 10 ft or knock prone.
  `Partial Critical (choose one):` push +5 extra ft; or choose push, prone, and off-guard (instead of one); or you remain in strong stance and gain one advantage step on next grapple/shove.

- **Tumble**  
  `RLHF: FH`  
  `Check: Athletics (contested vs opponent Melee)`  
  `Duration: Instant`
  `On Success:` Move through threatened space without giving free melee response.
  `Partial Critical (choose one):` move an additional 5 ft; or deny target reaction until end of round; or end in cover or flanking position.

- **Break Free**  
  `RLHF: L(R)F`  
  `Check: Athletics (contested vs grappler Athletics/Melee)`  
  `Duration: Instant`
  `On Success:` End one grapple/restraint lock on self.  
  `Partial Critical (choose one):` break one additional lock; or reposition 5 ft immediately; or impose +2 DC on grappler next maintain attempt.
  `Note:` `H` is not required for Break Free.

### Environmental Actions

- **Navigate Dangerous Terrain**  
  `RLHF: FH`  
  `Check: Athletics`  
  `Duration: Short`
  `DC: 10` rubble, `12` ice/mud, `14` collapsing footing, `16+` moving hazard.  
  `On Success:` Cross without falling or losing action tempo.
  `Partial Critical (choose one):` cross at full speed; or grant one ally one advantage step to follow same path; or avoid triggering latent terrain hazard.

---

## Melee

**Theme:** Close-range violence, weapon control, physical dominance.

### Core Actions

- **Strike**  
  `RLHF: L(R)H`  
  `Option`: Add R, to strike with two-handed weapon, or a weapon with the versatile quality.
  `Check: Melee (vs target defense DC)`  
  `Duration: Instant`
  `On Success:` Deal normal weapon wound(s).
  `Partial Critical (choose one):` gain +1 wound or force off-Guard; or shift 5 ft after hit; or deny one reaction from target this round.

- **Full Martial Strike**  
  `RLHF: L(R)HF`  
  `Option`: Add R, to strike with two-handed weapon, or a weapon with the versatile quality.
  `Check: Melee` vs target defense DC plus one step advantage.
  `Duration: Instant`
  `On Success:` Deal normal weapon wound(s).
  `Partial Critical (choose one):` add +1 wounds instead of baseline bonus; or force prone/off-Guard together; or immediately pressure a second adjacent target.

### Defensive / Reactive Actions

- **Parry**  
  `RLHF: L(R)H`  
  `Check: Melee (contested vs incoming melee roll)`  
  `Duration: Instant (Reaction)`
  `On Success:` Negate hit. Beat by 4+: negate and gain +1 Leverage on next melee action.
  `Partial Critical (choose one):` immediately riposte at +2 DC; or disarm or bind on the deflection; or retain Guard against one additional approach.

- **Bind Weapon**  
  `RLHF: LRHF`  
  `Check: Melee (contested)`  
  `Duration: Short`
  `On Success:` Target cannot use bound weapon for its next action unless it wins a Break Free/Disengage contest.
  `Partial Critical (choose one):` target needs two successes to free weapon; or you may reposition target 5 ft while maintaining bind; or next allied melee action gains one advantage step vs bound target.

### Control Actions

- **Disarm**  
  `RLHF: LHF`  
  `Check: Melee (contested)`  
  `Duration: Instant`
  `DC/Modifier: +2 DC if target uses two hands.`  
  `On Success:` Target drops or loses ready access to weapon.
  `Partial Critical (choose one):` weapon lands in a space you choose within 10 ft; or target also becomes off-Guard; or you may immediately seize or kick away the weapon.

- **Grapple**  
  `RLHF: L or R (minimum one free limb)`  
  `Check: Melee or Athletics (contested)`  
  `Duration: Instant`
  `On Success:` Establish one limb lock on target and enter Grappling state.
  `Partial Critical (choose one):` apply one additional lock if you have a free limb; or inflict disoriented on target until end of next turn; or establish lock and reposition target 5 ft.

- **Maintain Grapple**  
  `RLHF: L or R (locked limb must remain committed)`  
  `Check: Melee or Athletics (contested each round control is challenged)`  
  `Duration: Sustained`
  `On Success:` Existing lock(s) remain in place with an option to commit additional limbs.
  `Partial Critical (choose one):` add one new lock without separate grapple roll; or deal 1 wound from crushing control; or deny target all non-break reactions this round.

- **Throw**  
  `RLHF: L or R (requires at least one active lock)`  
  `Check: Athletics or Melee (contested)`  
  `Duration: Instant`
  `On Success:` Move target 5-10 ft and knock prone. Into hazard adds situational consequence.
  `Partial Critical (choose one):` increase throw distance by 5 ft; or target takes +1 wound from impact; or you may remain standing and ready without losing stance.

### Grapple Framework

- One committed limb restrains one target anchor (`L`, `R`, `F`, or `H`).
- Additional successful Grapple actions add additional locks by committing additional limbs.
- If a target has one or more locks on them, their speed is `0`.
- A restrained anchor cannot be used for other actions; it can only be used to attempt `Break Free`.
- You cannot initiate a grapple with `H`, but `H` can be restrained.
- If you have no active lock on the target, attacks or grapple attempts without `H` are blind and use the Blind status rules from `status-effects.md`.
- Once you have at least one active lock on that target, you are not blind against them: additional grapples and attacks do not require `H` and take no blind penalty.
- If 3 of the target's limbs/anchors are restrained, the target is fully restrained; their remaining unrestrained limb/anchor is treated as unusable until they remove a lock.

---

## Ranged

**Theme:** Precision, timing, and distance control.

### Core Actions

- **Aim**  
  `RLHF: LH`  
  `Check: Ranged`  
  `Duration: Short`
  `DC: 10` under light pressure, `12+` if target partially obscured.  
  `On Success:` Gain +1 Leverage die on next `Fire`/`Called Shot` before end of next turn.
  `Partial Critical (choose one):` also reduce one cover penalty tier; or carry aim benefit through your next turn if not fired; or gain one extra advantage step on next Fire/Called Shot.

- **Fire**  
  `RLHF: L(R)H`  
  `Check: Ranged (vs target defense DC)`  
  `Duration: Instant`
  `On Success:` Deal weapon wound(s).
  `Partial Critical (choose one):` conserve ammo; or force target off-Guard; or gain immediate 5 ft reposition without penalty.

- **Rapid Fire**  
  `RLHF: L(R)H`  
  `Check: Ranged at +2 DC`  
  `Duration: Instant`
  `On Success:` Two hits at -1 wound each (minimum 0), or split fire across two close targets.
  `Partial Critical (choose one):` both hits deal full weapon wounds; or suppress both targets you engaged; or do not suffer the rapid-fire accuracy increase next time this scene.

### Tactical Actions

- **Suppress**  
  `RLHF: L(R)H`  
  `Check: Ranged`  
  `Duration: Short`
  `DC: 12` doorway/choke, `14` open lane, `16+` wide lane.  
  `On Success:` Enemies crossing lane take +2 DC on move/advance or risk immediate attack.
  `Partial Critical (choose one):` cover a second adjacent lane; or duration extends one additional round; or targets crossing also lose one reaction.

- **Called Shot**  
  `RLHF: LH`  
  `Check: Ranged`  
  `Duration: Instant`
  `DC Modifier:` Core +0, Arms/Legs +2, Head +2 (per `combat.md`).  
  `On Success:` Apply wound to called location.
  `Partial Critical (choose one):` ignore called-shot modifier; or apply a status effect tied to hit location; or also force target to drop/lose one held item.

- **Cover Fire**  
  `RLHF: LH`  
  `Check: Ranged`  
  `Duration: Short`
  `DC: 12`  
  `On Success:` One ally moving this round ignores one enemy reaction from your covered direction.
  `Partial Critical (choose one):` affect one additional ally movement; or also pin target attention (+2 DC to their next offensive action); or conserve ammo on this covering action.

---

## Thievery

**Theme:** Stealth, fine motor control, covert manipulation.

### Stealth Procedure (Scene Rule)

- One successful stealth check can cover an entire scene.
- No additional stealth roll is needed unless the character takes an overt action or the fiction changes sharply.
- Overt actions include loud violence, open sprinting in view, breaking obvious cover, or direct interaction with a guarded target.
- When a new stealth check is required, resolve it immediately at the point of exposure risk.

NPCs track awareness as:
- `Relaxed -> Alert -> Suspicious -> Aware`

On a failed stealth check:
- Increase affected NPCs by one awareness step.
- At `Aware`, they can actively engage, call out, and normal stealth is uncontestable.

Breaking `Aware` requires misdirection, not simple concealment:
- Hiding behind nearby cover alone is insufficient if they already know your location.
- You must create a believable false lead (noise, decoy movement, staged trail, etc.), then re-enter stealth.
- Example: opening a manhole to imply escape there, then hiding under a tarp can justify a new stealth check.

### Core Actions

- **Sneak**  
  `RLHF: FH`  
  `Check: Thievery (opposed by observer Perception/Lore as appropriate)`  
  `Duration: Scene`
  `On Success:` Move quietly without drawing attention.
  `Partial Critical (choose one):` move an extra short distance while hidden; or leave no trace for immediate trackers; or create a brief opening for one ally to follow unseen.

- **Hide**  
  `RLHF: FH`  
  `Check: Thievery`  
  `Duration: Scene`
  `DC: 10` cluttered area, `12` sparse cover, `14+` brief concealment windows.  
  `On Success:` Break line of sight and remain concealed until fiction changes.
  `Partial Critical (choose one):` remain hidden despite brief exposure; or gain one advantage step on first action from hiding; or create a decoy sign that misdirects searchers.

- **Pick Lock**  
  `RLHF: L(R)H`  
  `Check: Thievery`  
  `Duration: Short (Extended on hard locks)`
  `DC: 10` simple, `12` common, `14` quality lock, `16+` reinforced/security design.  
  `On Success:` Open lock quietly.
  `Partial Critical (choose one):` open lock silently and quickly; or do not leave tamper evidence; or keep mechanism intact for clean relock.

- **Disable Device**  
  `RLHF: L(R)H`  
  `Check: Thievery`  
  `Duration: Short (Extended on complex traps)`
  `DC: 12` known trap, `14` unfamiliar mechanism, `16+` complex/booby-trapped device.  
  `On Success:` Device is safely disarmed.
  `Partial Critical (choose one):` disarm and learn reset method; or convert trap into one-use advantage for your side; or disable adjacent linked trigger as well.

### Combat-Relevant Actions

- **Steal**  
  `RLHF: LHF`  
  `Check: Thievery (contested vs target Awareness/Lore)`  
  `Duration: Instant`
  `On Success:` Remove one small carried item.
  `Partial Critical (choose one):` take one additional small item; or target does not realize loss until scene changes; or plant minor false clue while lifting item.

- **Sabotage**  
  `RLHF: L(R)H`  
  `Check: Thievery`  
  `Duration: Short (Extended on reinforced targets)`
  `DC: 10` simple gear, `12` weapon, `14` armor fitting, `16+` reinforced mechanism.  
  `On Success:` Target object gains a failure condition on next use.
  `Partial Critical (choose one):` failure effect is severe (breaks on first use); or sabotage remains hidden until triggered; or affect one adjacent connected component.

- **Plant Object**  
  `RLHF: LHF`  
  `Check: Thievery`  
  `Duration: Short`
  `DC: 10` distracted target, `12` alert target, `14+` active search conditions.  
  `On Success:` Object remains unnoticed until searched or triggered.
  `Partial Critical (choose one):` placement is undetectable without focused search; or object can be triggered remotely/simple condition; or also create false evidence trail.

### Reaction Actions

- **Slip Away**  
  `RLHF: FH`  
  `Check: Thievery (contested vs nearest threat Awareness)`  
  `Duration: Instant (Reaction)`
  `On Success:` Exit engagement without immediate pursuit response.
  `Partial Critical (choose one):` also break line of sight immediately; or pursuer chooses wrong direction; or you may move full speed while disengaging.

- **Feign Innocence**  
  `RLHF: H`  
  `Check: Thievery or Social`  
  `Duration: Short`
  `DC: 10` casual suspicion, `14` active accusation, `16+` direct witness.  
  `On Success:` Delay or redirect suspicion.
  `Partial Critical (choose one):` shift suspicion to alternate plausible target; or buy one full round before renewed scrutiny; or observers lower alertness one tier.

---

## Lore

**Theme:** Knowledge, recognition, inference.

### Core Actions

- **Recall Knowledge**  
  `RLHF: H`  
  `Check: Lore`  
  `Duration: Instant`
  `DC: 8` common fact, `12` specialized, `16` obscure, `20+` forbidden/esoteric.  
  `On Success:` Learn a correct useful fact.
  `Partial Critical (choose one):` gain one extra actionable fact; or fact includes immediate tactical application; or reduce next related check DC by 2.

- **Analyze Threat**  
  `RLHF: H`  
  `Check: Lore`  
  `Duration: Short`
  `DC: 12`  
  `On Success:` Learn one practical weakness, behavior trigger, or likely tactic.
  `Partial Critical (choose one):` identify both weakness and behavior trigger; or grant one ally one advantage step vs this threat; or predict target next likely action.

- **Interpret Signs**  
  `RLHF: FH`  
  `Check: Lore`  
  `Duration: Short`
  `DC: 10` clear clues, `12` mixed traces, `14+` degraded scene.  
  `On Success:` Establish what happened and direction/timing.
  `Partial Critical (choose one):` determine exact timing and direction; or spot hidden secondary clue; or grant group one advantage step on next tracking/search action.

### Preparatory Actions

- **Formulate Plan**  
  `RLHF: H`  
  `Check: Lore`  
  `Duration: Short`
  `DC: 12`  
  `On Success:` Grant one ally +1 Leverage die on first related action.
  `Partial Critical (choose one):` grant two allies one advantage step each; or also reduce one foreseeable complication; or plan remains valid for one extra scene beat.

- **Predict Outcome**  
  `RLHF: H`  
  `Check: Lore`  
  `Duration: Instant`
  `DC: 14`  
  `On Success:` Guide states one likely consequence before commitment.
  `Partial Critical (choose one):` receive best and worst likely branch; or gain one advantage step if acting on prediction immediately; or identify hidden cost before commitment.

### Reactive Actions

- **Recognize Pattern**  
  `RLHF: H`  
  `Check: Lore`  
  `Duration: Instant (Reaction)`
  `DC: 12` repeating behavior, `14` subtle setup, `16+` highly concealed pattern.  
  `On Success:` Act before trap/ambush fully resolves.
  `Partial Critical (choose one):` interrupt the pattern before it triggers; or identify controller/source behind pattern; or grant party one free reposition before resolution.

---

## Science

**Theme:** Medicine, engineering, chemistry, physics.

### Core Actions

- **Diagnose**  
  `RLHF: H`  
  `Check: Science`  
  `Duration: Short`
  `DC: 10` obvious injury/fault, `12` mixed symptoms, `14+` rare or hidden cause.  
  `On Success:` Identify root cause and best immediate intervention.
  `Partial Critical (choose one):` determine root cause and best treatment path; or identify one hidden complication early; or grant one advantage step to next treatment/check.

- **Treat Wound**  
  `RLHF: L(R)H`  
  `Check: Science`  
  `Duration: Short (Extended for severe trauma)`
  `DC: 10` basic first aid, `12` stabilize severe bleed, `14+` field surgery conditions.  
  `On Success:` Stabilize target and remove one immediate complication from the wound state.
  `Partial Critical (choose one):` remove one additional immediate complication; or restore functional use of a recently impaired anchor for this scene; or treatment holds longer under pressure.

- **Engineer Bypass**  
  `RLHF: L(R)H`  
  `Check: Science`  
  `Duration: Short (Extended on hardened systems)`
  `DC: 12` simple mechanism, `14` secured system, `16+` hardened system.  
  `On Success:` Temporarily bypass lockout/power/control issue.
  `Partial Critical (choose one):` bypass lasts for full scene; or leave no forensic sign of bypass; or create safe fallback route if bypass collapses.

- **Analyze Substance**  
  `RLHF: H`  
  `Check: Science`  
  `Duration: Short`
  `DC: 10` common substance, `14` mixed compounds, `18+` exotic/occult contamination.  
  `On Success:` Learn key properties, hazard, and safe handling.
  `Partial Critical (choose one):` identify exact composition and immediate antidote/neutralizer route; or detect trace contamination source; or grant one advantage step on next handling/use.

- **Improvise Tool**  
  `RLHF: L(R)H`  
  `Check: Science`  
  `Duration: Short`
  `DC: 12` simple, `14` precise, `16+` high-pressure improvised build.  
  `On Success:` Create temporary tool usable for a single action.
  `Partial Critical (choose one):` tool functions for full scene instead of one use; or tool grants one extra advantage step on first use; or build time is halved.

---

## Social

**Theme:** Influence, pressure, and presence.

### Core Actions

- **Persuade**  
  `RLHF: H`  
  `Check: Social (contested for resistant targets)`  
  `Duration: Short`
  `DC: 10` receptive, `12` uncertain, `14` resistant, `16+` hostile.  
  `On Success:` Target accepts a reasonable request or concession.
  `Partial Critical (choose one):` target also offers useful concession; or effect lasts one additional scene beat; or one bystander becomes favorable too.

- **Deceive**  
  `RLHF: H`  
  `Check: Social (contested vs target Lore/Social)`  
  `Duration: Short`
  `On Success:` Target believes false claim until contradictory evidence appears.
  `Partial Critical (choose one):` lie survives immediate verification attempt; or target repeats lie to others as truth; or gain one advantage step on follow-up social action.

- **Intimidate**  
  `RLHF: HF`  
  `Check: Social`  
  `Duration: Instant`
  `DC: 10` weaker foe, `14` equal foe, `16+` disciplined foe.  
  `On Success:` Target hesitates, yields space, or accepts short-term compliance.
  `Partial Critical (choose one):` target withdraws or yields space immediately; or target loses next reaction; or nearby weaker witness also hesitates.

- **Command**  
  `RLHF: H`  
  `Check: Social`  
  `Duration: Instant`
  `DC: 10` ally subordinate, `12` ally peer under stress, `14+` contested authority.  
  `On Success:` One ally may immediately adjust position or clear a fear hesitation.
  `Partial Critical (choose one):` ally acts immediately and gains one advantage step; or order also steadies fear by 1; or two allies can take minor reposition instead of one.

### Tactical / Combat-Adjacent Actions

- **Distract**  
  `RLHF: H`  
  `Check: Social`  
  `Duration: Instant`
  `DC: 12`  
  `On Success:` Target loses one reaction or suffers +2 DC on next action.
  `Partial Critical (choose one):` target loses both reaction and focus bonus; or create opening granting one ally one advantage step; or target misreads your next move.

- **Provoke**  
  `RLHF: H`  
  `Check: Social (contested)`  
  `Duration: Instant`
  `On Success:` Target commits to an aggressive or suboptimal action chosen by Guide within fiction.
  `Partial Critical (choose one):` target commits to a predictable line; or target suffers +2 DC on defense until end of turn; or nearby enemies hesitate before assisting.

- **Rally**  
  `RLHF: H`  
  `Check: Social`  
  `Duration: Short`
  `DC: 12` in cover/safety, `14` under active threat, `16+` panic conditions.  
  `On Success:` One ally reduces fear by 1 step or gains +1 Leverage on next defense.
  `Partial Critical (choose one):` affect one additional ally; or also clear one minor complication tied to panic/fatigue; or all rallied allies gain one advantage step on next defense.

### Consequence-Driven Actions

- **Posture**  
  `RLHF: HF`  
  `Check: Social`  
  `Duration: Scene`
  `DC: 12`  
  `On Success:` Establish local dominance; first opposed social check this scene gains +1 Leverage.
  `Partial Critical (choose one):` establish dominance over a wider audience; or first two opposed social checks this scene gain one advantage step; or opponent must answer your framing or cede ground.

- **Undermine**  
  `RLHF: H`  
  `Check: Social`  
  `Duration: Short`
  `DC: 12` fragile cohesion, `14` disciplined group, `16+` fanatic loyalty.  
  `On Success:` Reduce enemy morale/cohesion and impose +2 DC on their next coordinated action.
  `Partial Critical (choose one):` enemy coordination penalty lasts one extra round; or fracture one key relationship in opposing group; or their next leader command carries +2 DC.

---

## Magic

**Theme:** Controlled violation of natural rules. Availability is setting-dependent.

### Core Actions

- **Cast**  
  `RLHF: LH`  
  `Check: Magic`  
  `Duration: Instant`
  `DC:` Set by spell profile in `spells.md`.  
  `On Success:` Spell manifests as intended.
  `Partial Critical (choose one):` add one minor rider effect consistent with spell type; or reduce immediate backlash by one step; or gain one advantage step on next Sustain/Focus.

- **Sustain**  
  `RLHF: H`  
  `Check: Magic`  
  `Duration: Sustained`
  `DC: 10` stable effect, `12` contested zone, `14+` high-pressure scene.  
  `On Success:` Ongoing effect continues without escalation.
  `Partial Critical (choose one):` extend duration by one tier; or free one anchor normally tied up by sustain strain; or stabilize effect against one disruption source.

- **Focus**  
  `RLHF: H`  
  `Check: Magic`  
  `Duration: Instant`
  `DC: 12`  
  `On Success:` Gain +1 Leverage die on next magic action or reduce backlash severity by one step.
  `Partial Critical (choose one):` gain two advantage steps on next magic action; or also cancel one pending backlash complication; or retain Guard-equivalent awareness against one approach.

### Defensive / Reactive Actions

- **Counter**  
  `RLHF: LH`  
  `Check: Magic (contested vs caster)`  
  `Duration: Instant (Reaction)`
  `On Success:` Interrupt incoming magical effect.
  `Partial Critical (choose one):` counter and reflect minor portion of effect; or counter without losing your next planned action; or impose +2 DC on enemy next cast.

- **Dispel**  
  `RLHF: LH`  
  `Check: Magic`  
  `Duration: Instant`
  `DC: 12` minor effect, `14` sustained effect, `16+` entrenched ritual effect.  
  `On Success:` End or suppress target effect.
  `Partial Critical (choose one):` dispel and learn signature/source; or suppress nearby related effect for one round; or convert residual energy to one advantage step for ally.

- **Ward**  
  `RLHF: LH`  
  `Check: Magic`  
  `Duration: Scene`
  `DC: 12` personal ward, `14` area ward, `16+` layered ward.  
  `On Success:` Protected target gains +2 DC versus one defined threat category.
  `Partial Critical (choose one):` ward covers one extra adjacent target/zone; or ward gains one additional trigger/use; or ward also imposes minor backlash on first attacker.

### Risk Actions

- **Overchannel**  
  `RLHF: LH`  
  `Check: Magic at +2 DC`  
  `Duration: Instant`
  `On Success:` Increase one spell parameter (range, duration, or potency) by one tier.  
  `Partial Critical (choose one):` gain two spell parameter tiers instead of one; or avoid immediate backlash step increase; or retain one free follow-up Focus this round.
  `On Miss:` Spell still manifests in type, but backlash escalates one step.

- **Ritualize**  
  `RLHF: LRFH`  
  `Check: Magic`  
  `Duration: Extended`
  `DC: 14` prepared circle/text, `16` partial prep, `18+` rushed/hostile conditions.  
  `On Success:` Complete long-form effect with reduced immediate backlash.
  `Partial Critical (choose one):` ritual time reduced by one tier; or effect gains strong stability and duration; or participants gain one advantage step on immediate aftermath actions.

---

## Design Notes

- Skills define available actions, not static passive bonuses.
- RLHF anchor commitment keeps consequences grounded in body state.
- Rank changes both dice quality and flat bonus, making skill growth reliable under pressure.
- For edge cases, use the nearest action here as baseline, then tune DC by fiction.


