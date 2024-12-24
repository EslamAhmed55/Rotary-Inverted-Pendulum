# Rotary Inverted Pendulum

## Overview
The **Rotary Inverted Pendulum** 
is a classic control systems project designed to model, simulate, and control a challenging mechanical system.
The system combines mechanical, electrical, and software components to achieve stabilization through advanced control techniques.

---

## Objectives
1. Develop a rotary inverted pendulum system as a demonstration of control engineering principles.
2. Model the system dynamics using Newton's Laws and Euler-Lagrange methods.
3. Accurately estimate system parameters for reliable control.
4. Design and integrate mechanical components with an electronic control system.
5. Implement a Linear Quadratic Regulator (LQR) for stabilization.
6. Validate through simulation and Hardware-in-the-Loop (HIL) testing.

---

## Components
### Hardware
- **Arduino Uno**: Central processing unit for signal processing and control.
- **DC Motor with Encoder**: Provides rotational motion with position feedback.
- **Rotary Incremental Encoder**: Measures angular displacement and velocity.
- **H-Bridge**: Motor driver for bidirectional control.
- **Batteries, Bearings, and Couplings**: Supporting hardware for the system.
- **3D-Printed Parts**: Custom components like brackets and spacers.

### Software
- **SolidWorks**: For mechanical design and CAD modeling.
- **MATLAB & Simulink**: For simulation, parameter estimation, and HIL testing.

---

## Mechanical Design
The system includes:
1. **Base Structure**: Ensures stability and minimal vibration.
2. **Pendulum & Coupling**: Designed for smooth motion transmission.
3. **Bearing Assembly**: Reduces friction and aligns mechanical components.
4. **Motor and Encoder Mounts**: Ensures precise alignment and feedback.

---

## Control Design
The project employs an **LQR Controller**:
1. Models the system dynamics and ensures controllability.
2. Minimizes a cost function to balance state performance and control effort.
3. Stabilizes the pendulum by placing system poles in the left-hand plane.

---

## Simulation
Simulations were conducted in MATLAB to:
1. Verify the system’s unstable dynamics.
2. Test the LQR controller for stability and performance.
3. Validate results with HIL testing using real hardware.

---

## Hardware Circuit
The circuit integrates all components, ensuring seamless communication and precise control. Key considerations include:
- Proper grounding to minimize noise.
- Organized wiring for reduced interference.
- Overcurrent protection and thermal management.

---

## Hardware-in-the-Loop (HIL)
Hardware-in-the-Loop (HIL) testing was used to validate the system’s performance by integrating the control algorithm with real-world hardware. Using Simulink and the Arduino support package, the following steps were undertaken:
1. **Real-Time Simulation**: The controller algorithm was executed on a Simulink model interfaced with the Arduino.
2. **Hardware Validation**: Physical components, including the motor, encoder, and pendulum, were tested under real-world conditions.
3. **Testing and Refinement**: The results were analyzed to refine the control strategy and improve system stability.

### Video Demonstration
*A video demonstration of the Hardware-in-the-Loop testing will be added here soon.*

---

## Parameter Estimation
System parameters were estimated by:
1. Collecting voltage and angular velocity data.
2. Using MATLAB's Parameter Estimation Toolbox.
3. Modeling and validating results in Simulink.

---

## Testing
- **HIL Testing**: Combines Simulink models with Arduino for real-time testing.
- **Simulation Results**: Demonstrated system stability with LQR implementation.

---

## Resources
1. Research Paper: [Modeling and control of a rotary inverted pendulum](https://ieeexplore.ieee.org/document/5589450)
2. MATLAB Documentation: [LQR Control](https://www.mathworks.com/help/control/ref/lti.lqr.html)
3. Video Resources:
   - [Classic Inverted Pendulum - Equations of Motion](https://www.youtube.com/watch?v=5qJY-ZaKSic)
   - [LQR Controller Implementation](https://www.youtube.com/watch?v=E_RDCFOlJx4)

---

## Acknowledgments
I would like to extend my heartfelt gratitude to **Engineer Ibrahim Abdelghafar** for his invaluable guidance, support, and expertise throughout the project. 
His assistance played a pivotal role in the successful completion of this work.
