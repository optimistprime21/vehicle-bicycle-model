# Simulink-Based Vehicle Dynamics Simulation
This repository contains a simulation project focused on modeling and analyzing the dynamics of a ground vehicle using MATLAB Simulink.

## Project Overview
The model is based on the bicycle model of vehicle dynamics and includes:

Kinematic, longitudinal, and lateral dynamics

Linear tire model for simulating lateral tire forces

Inputs: steering angle (δf) and front axle torque (Tf)

Outputs: vehicle position (X, Y) and orientation (Ψ)

## Key Features
Fully modular Simulink implementation

Parameterized using a dedicated MATLAB script

Validated against a predefined input scenario with visual output plots

A custom test scenario inducing drift/spin behavior, with analysis of slips, tire forces, and chassis dynamics

## Repository Structure
Simulink models (.slx)

MATLAB parameter and input scripts

## Technical Details
Developed and tested in MATLAB R2023a-compatible format

Solver configurations optimized for numerical stability
