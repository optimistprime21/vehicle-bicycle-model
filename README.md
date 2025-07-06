# Simulink-Based Vehicle Dynamics Simulation
This repository contains a simulation project focused on modeling and analyzing the dynamics of a ground vehicle using MATLAB Simulink.

## Project Overview
The model is based on the bicycle model of vehicle dynamics and includes:
- Kinematic, longitudinal, and lateral dynamics
- Linear tire model for simulating lateral tire forces
- Inputs: steering angle (δf) and front axle torque (Tf)
- Outputs: vehicle position (X, Y) and orientation (Ψ)

## Repository Structure
- Simulink model (car_model2.slx)
- MATLAB parameter and input scripts
- MATLAB script for output plotting

## Technical Details
For numerical stability, the following solver configurations are recommended:

![Solver Config](images/solver_config.png)


