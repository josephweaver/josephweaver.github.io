
---
title: Wind Flow Simulation
layout: default
---



# Wind Flow Simulation

This concept explores atmospheric wind flow as a function pressure differentials in variety of coordinates systems, such as grid system, point cloud, and gaussian spheriods in order to quantify the strength of the wind and its direction at an arbitrary point.

## Wind Factors

Heating differentials, Coriolis effect, terrain influence, and atmospheric pressure gradients are some of the key factors that influence wind flow. These factors can be incorporated into the simulation to enhance its accuracy.

- Coriolis Effect: The Coriolis effect, caused by the Earth's rotation, influences wind direction and speed. 
- Solar Heating: Differential heating of the Earth's surface leads to pressure gradients that drive wind flow.
- Terrain Influence: The presence of mountains, valleys, and other terrain features can alter wind patterns by creating obstacles and channels for airflow.
- Atmospheric Pressure Gradients: Variations in atmospheric pressure across different regions lead to wind flow from high-pressure areas to low-pressure areas.
- Air Composition and Moisture Content: Variations in air composition and moisture content can affect air density and wind behavior.

In the end, these factors can be modeled as variables that influence the pressure differentials in the simulation, thereby affecting the resulting wind flow patterns.

## Known Issues
- Caterision grid can cause wind flow to align with grid axes, leading to unrealistic patterns.
- High computational cost for high-resolution simulations, especially in 3D grids.
- Air is compressible in reality, but many simulations assume incompressibility for simplicity, which can lead to inaccuracies.
- Boundary conditions can significantly affect the simulation results, and improper handling can lead to artifacts in wind flow patterns.
- 

## Features under consideration
- Planetary Rotation
- Planetary Tilt 
- Gravity Variations
  - Sun and Moon
  - Planertary size and mass (density).
- Land features
  - Mountains
  - Valleys
  - Water Bodies    
- Frictional Effects
  - Surface roughness
  - Vegetation cover
- Solar Radiation
  - Sun angle
  - Absorbtion rate 
    - Weather conditions
    - Land type: water, forest, desert, urban
- Ground heat
  - Material type
    - Albedo  - reflectivity
      - Cloud cover - high albedo
      - Snow - high albedo
      - Forest - low albedo
      - Water - variable albedo depending on angle
    - Heat capacity - soil, water, rock
    - Thermal conductivity - soil, water, rock (sand heats and cools quickly, water and rock slowly)
    - Weather conditions
      - Precipitation - cools the ground, releasing heat into the air
      - Snow cover - insulates ground, prevent heat escaping.
  - Geothermal activity (typically tiny effect)
- Humidity Levels
  - Evaporation rates
  - Cloud formation
- Natural Disasters
  - Fire
  - Explosions
    - volcanic activity
    - Meteor impacts
    - Nuclear detonations
  - Landslides/Tsunamis
- Air composition
  - Pollution levels
  - Particulate matter
  - Base molecular composition
    - Nitrogen, Oxygen, Argon, CO2, etc.
  - Altitude effects (density variations)
    - Troposphere
    - Stratosphere
    - Mesosphere
    - Thermosphere
    - Exosphere
  - Moisture content
    - Humidity
    - Dew point
    - Precipitation effects

Units of Measurement:
- Wind Speed: meters per second (m/s)
- Pressure: Pascals (Pa)
  - 1 Pa = 1 N/m²
  - 1 millibar (mb) = 100 Pa = 1 hectopascal (hPa)
  - Examples:
    - Standard atmospheric pressure at sea level: 1013.25 hPa
    - Low-pressure systems: < 1000 hPa
    - High-pressure systems: > 1020 hPa
- Temperature: Kelvin (K) or Celsius (°C)

Primary Equations:
- f=ma (Force = mass x acceleration)
- f/m = a =-1/ρ ∇P (Acceleration due to pressure gradient)
    - where f is force, m is mass, a is acceleration, ρ is air density, and ∇P is the pressure gradient.
- Velocity updates equation: v = v0 + a*t
  - where v0 is the initial velocity, a is acceleration, and t is time.
- Change in Pressure
  - ΔP = -ρ * (v · ∇)v * Δt 
    - where ΔP is the change in pressure, ρ is air density, v is velocity vector, ∇ is the gradient operator, and Δt is the time step.
  - p = ρRT (Ideal Gas Law)
    - where p is pressure, ρ is density, R is the specific gas constant, and T is temperature. 
 - Air Density
   - ρ = p / (R_specific * T)
     - where ρ is air density, p is pressure, R_specific is the specific gas constant for dry air (approximately 287 J/(kg·K)), and T is temperature in Kelvin. 

Examples results:
- Wind speed of 5 m/s from a pressure gradient of 10 Pa/m in a low-density atmosphere (ρ = 1.2 kg/m³).


## Grid System

### 1D Grid

Here we consider a one-dimensional grid where wind flow is simulated along a straight line. The pressure differential between adjacent grid points determines the wind speed and direction.

#### 1D Grid - 1D Circular

In a one-dimensional circular grid, the endpoints are connected, forming a loop. This setup allows for the simulation of wind flow in a continuous manner, where the pressure differential wraps around the circle.

### 2D Grid

In a two-dimensional grid, wind flow is simulated over a flat surface. The pressure differentials across the grid points influence the wind vectors, allowing for the visualization of wind patterns over an area.

### 2D Grid - Cube-map Sphere

In a cube-map sphere, the 2D grid is projected onto the surface of a sphere using a cube mapping technique. This allows for the simulation of wind flow over a spherical surface, such as the Earth, while minimizing distortion.

### 2D Grid - Uniform Spherical point cloud



### Subcase 3: 3D Grid

In a three-dimensional grid, wind flow is simulated in a volumetric space. The pressure differentials in all three dimensions determine the wind vectors, enabling the analysis of wind patterns in a more complex environment.

### Subcase 3: 3D Grid - Multilevel Cubemap-Sphere

In a multilevel cubemap-sphere, the 3D grid is represented on a spherical surface using multiple levels of cube mapping. This approach allows for detailed wind flow simulations over a sphere, capturing variations at different altitudes.


## Case 2: Point Cloud

## Case 3: Gaussian Spheroids   
