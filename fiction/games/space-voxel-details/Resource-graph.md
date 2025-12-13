# Hierarchical Resource Graph & Subgraph Model

## Purpose
Represent the entire economy as a **nested, hierarchical flow graph** that:
- Scales from galaxy to ground site
- Supports player policy at any level
- Aggregates cleanly upward
- Allows the Manager AI to reason locally and globally
- Remains readable and debuggable

This is not one giant graph, but a **graph of graphs**.

---

## Core Concept

Each node may **contain a subgraph**.
Edges at higher levels represent **aggregated flow** of all child edges below.

> Zooming in reveals structure.  
> Zooming out collapses it into intent and throughput.

---

## Graph Levels (Canonical Hierarchy)

### Level 0: Galaxy Graph
- **Nodes**: Star Clusters
- **Edges**: Inter-cluster logistics (jump lanes, bulk freighters)

Node summary:
- Aggregate production / consumption
- Net import / export
- Survey completeness
- Risk / control status

Edges represent:
- Total throughput capacity
- Average latency
- Policy constraints (allowed, preferred, exclusive)

---

### Level 1: Star Cluster Subgraph
- **Nodes**: Star Systems
- **Edges**: Intra-cluster routes

Node summary:
- Dominant resources
- Infrastructure maturity
- Depletion warnings
- Manager AI status (green/yellow/red)

Edges aggregate all system-level flows.

---

### Level 2: Star System Subgraph
- **Nodes**: Planets, stations, asteroid belts
- **Edges**: Orbital logistics

Node summary:
- Resource availability
- Exploitation level
- Storage capacity
- % surveyed

Edges encode:
- Orbital transport capacity
- Bottlenecks
- Transit delays

---

### Level 3: Planet Subgraph
- **Nodes**: Regions / biomes
- **Edges**: Ground or low-orbit transport

Node summary:
- Active vs dormant extraction
- Environmental hazards
- Infrastructure density

---

### Level 4: Ground Site Subgraph
- **Nodes**: Mines, refineries, depots
- **Edges**: Conveyors, drones, shuttles

Node summary:
- Output rate
- Remaining yield
- Efficiency modifiers
- AI-managed vs player-locked

This is the lowest level of manual interaction.

---

## Subgraph Aggregation Rules

### Upward aggregation
For any node \(N\):
- Production = sum(child production)
- Consumption = sum(child consumption)
- Storage = sum(child storage)
- Flow capacity = sum(child edge capacities)
- Latency = max(child latency along critical path)

These aggregated values define the node’s behavior in its parent graph.

---

### Downward constraint propagation
Policies applied at a node or edge:
- Are inherited by all child subgraphs
- May be overridden locally (with conflict warnings)
- Participate in precedence rules

Example:
- “Cluster B supplies 100% iron”
  - Applies to all systems, planets, and sites under B
  - Local locks may conflict and must be resolved

---

## Edge Semantics (All Levels)

Edges represent **resource flow contracts**, not physical pipes.

Each edge has:
- Max throughput
- Latency
- Allowed resource types
- Policy modifiers:
  - Allowed
  - Preferred
  - Exclusive
  - Capped
  - Locked

Edges collapse visually when zoomed out.

---

## Visualization Rules (Player-Facing)

### Nodes
- Fill color: net surplus / deficit
- Outline: survey completeness
- Icons: hazards, hostility, locks, AI alerts

### Edges
- Thickness: volume
- Color: resource category
- Pulse speed: urgency
- Dashed: planned / under construction

### Interaction
- Clicking a node expands its subgraph
- Clicking an edge opens flow policy panel
- Pinning a resource fades all others

---

## Manager AI Interaction with the Graph

### Bottom-up
- Aggregates state
- Detects shortages, depletion, bottlenecks
- Estimates capacity and timelines

### Top-down
- Enforces player policy
- Issues build / dismantle plans
- Rebalances flows
- Generates explanations

The AI never edits policies, only infrastructure.

---

## Debugging & Explanation Support

Every node and edge supports:
- “WHY is this failing?”
- “WHAT changed recently?”
- “WHAT is blocking flow?”

Explanations traverse the graph hierarchy and collapse into a single narrative.

---

## Design Guarantees

- Graph is always navigable in ≤2 zoom transitions
- Any failure can be traced along a single path
- No policy exists without a visible scope
- Aggregation is consistent and reversible

---

## Design Principle

**Intent lives high.  
Execution lives low.  
Understanding lives everywhere.**

This hierarchy is what allows a complex economy to feel *manageable* instead of overwhelming.
