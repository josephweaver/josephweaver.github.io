## Monster Rules

This file defines reusable monster-side rules that can be referenced by individual stat blocks.

---

## Generic Swarm Rule

Use this rule for swarms of rats, bats, insects, or similar creatures.

### Swarm Body

- A swarm is treated as a single creature while cohesive.
- Called shots do not apply to a cohesive swarm.
- A cohesive swarm is not a valid target for grapple, pin, or disarm effects unless a specific ability says otherwise.

### Area and Zone Attacks vs Cohesive Swarm

Area or zone attacks are especially effective against cohesive swarms.

- Apply **weakness base wound increase** (`+1` base wound), then escalate by outcome.
- On a Legendary, no further upgrade applies.

Weakness damage escalation (damage only, no extra rider effects):
- One-handed baseline (`1`) becomes `2`, then follows `2 -> 3 -> 6`
- Two-handed baseline (`2`) becomes `3`, then follows `3 -> 4 -> 8`

If the area effect is fictionally disruptive (fire, smoke, caustic cloud, sonic shock, etc.), it also counts as disruption for reform rules while the effect persists.

### Disperse on Break

When a swarm is reduced to `0 Core`, it is not automatically dead.

- It **disperses** into a number of individual creatures equal to its **Disperse Value** (`N`).
- Place dispersed individuals in nearby valid spaces.
- Dispersed individuals use their own normal stat block.

Default baseline:
- `N = 3`

### Reform

Dispersed individuals may reform into one swarm when both are true:

- The number of nearby individuals is at least the **Reform Threshold** (`M`).
- They are not under active disruption (fire, smoke, loud shock, area denial, or similar fiction).

Default baseline:
- `M = 6`

Timing baseline:
- Reform occurs at end of round (or equivalent scene beat), and costs the reforming group its action for that beat.

### Rule of Thumb for Tuning

- Lower `N` if the swarm should be easier to clear permanently.
- Lower `M` if the swarm should return quickly.
- Raise `M` or strengthen disruption conditions if reforming happens too often in play.

---

## Generic Monster Trait: Exploitable Weakness

Use this trait when a specific source is especially harmful to a monster (for example: silver vs werewolf, fire vs swarm-like creatures, sanctified tools vs certain entities).

### Trait Format

**Exploitable Weakness (Tag):**  
When this monster is hit by a source with the matching tag, apply weakness damage escalation.

### Weakness Damage Escalation

Escalation affects **damage only**. It does not grant extra Partial/Legendary special riders.

- First apply **weakness base wound increase** (`+1` base wound).
- On a hit: use the first value of the adjusted ladder.
- On a Partial Critical: use the second value of the adjusted ladder.
- On a Legendary: no further upgrade applies.

Damage ladders:
- One-handed baseline (`1`) becomes `2`, then `2 -> 3 -> 6`
- Two-handed baseline (`2`) becomes `3`, then `3 -> 4 -> 8`

Limit:
- Only one weakness escalation source may apply to a hit.
