# Rotary Inverted Pendulum

## Overview
The **Rotary Inverted Pendulum** 
is a classic control systems project designed to model, simulate, and control a challenging mechanical system.
The system combines mechanical, electrical, and software components to achieve stabilization through advanced control techniques.

---

## Objectives
1. Develop a rotary inverted pendulum system as a demonstration of control engineering principles.
2. Model the system dynamics using Newton's Laws(for Simulation) and Euler-Lagrange(for HIL) methods.
3. Accurately estimate system parameters for reliable control.
4. Design and integrate mechanical components with an electronic control system.
5. Implement a Linear Quadratic Regulator (LQR) for stabilization.
6. Validate through simulation and Hardware-in-the-Loop (HIL) testing.
   
![image](https://github.com/user-attachments/assets/fc2c69f7-d329-4f5c-9913-02576dd4d7d7)

---

## Components
### Hardware
- **Arduino Uno**: Central processing unit for signal processing and control.
- **DC Motor with Encoder**: Provides rotational motion with position feedback.
- **Rotary Incremental Encoder**: Measures angular displacement and velocity.
- **H-Bridge**: Motor driver for bidirectional control.
- **Batteries, Bearings, and Couplings**: Supporting hardware for the system.
- **3D-Printed Parts**: Custom components like brackets and spacers.

  ![image](https://github.com/user-attachments/assets/cc26d900-9ec1-4162-afee-263d26c26ae2)

---

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

![image](https://github.com/user-attachments/assets/896768da-438c-418f-b9ea-f0ab97c370ad)

---

## Hardware Circuit
The circuit integrates all components, ensuring seamless communication and precise control. Key considerations include:
- Proper grounding to minimize noise.
- Organized wiring for reduced interference.
- Overcurrent protection and thermal management.
  
  ![image](https://github.com/user-attachments/assets/56a4471b-4bab-40ba-99e8-a61e092935f3)

---

## Parameter Estimation
System parameters were estimated by:
1. Collecting voltage and angular velocity data.
2. Using MATLAB's Parameter Estimation Toolbox.
3. Modeling and validating results in Simulink.
   
   ![image](https://github.com/user-attachments/assets/0c94baa1-16df-49ae-8c34-a0e4a6ea70e6)
   
   ![image](https://github.com/user-attachments/assets/c160f6f5-ab1e-45f6-b35b-ebc04c53515c)


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

https://github.com/user-attachments/assets/a0bc8a6b-0416-4e09-b2ac-d904dfb135ff

---
## Hardware-in-the-Loop (HIL)

Hardware-in-the-Loop (HIL) testing was used to validate the system’s performance by integrating the control algorithm with real-world hardware. Using Simulink and the Arduino support package, the following steps were undertaken:
1. **Real-Time Simulation**: The controller algorithm was executed on a Simulink model interfaced with the Arduino.
2. **Hardware Validation**: Physical components, including the motor, encoder, and pendulum, were tested under real-world conditions.
3. **Testing and Refinement**: The results were analyzed to refine the control strategy and improve system stability.

   ![Capture](https://github.com/user-attachments/assets/c7ddca3c-49a6-4f43-94e6-b379598171cf)

### Video Demonstration

https://github.com/user-attachments/assets/2c234a89-eb0c-4679-b708-453d3e55b6c0

---

## Resources
1. Research Paper: [Modeling and control of a rotary inverted pendulum](https://ieeexplore.ieee.org/document/5589450)
2. MATLAB Documentation: [LQR Control](https://www.mathworks.com/help/control/ref/lti.lqr.html)
3. Video Resources:
   - [Classic Inverted Pendulum - Equations of Motion](https://www.youtube.com/watch?v=5qJY-ZaKSic)
   - [LQR Controller Implementation](https://www.youtube.com/watch?v=E_RDCFOlJx4)

---

## Acknowledgments
I would like to extend my heartfelt gratitude to **Eng.Ahmed Farag** and **Eng.Ibrahim Abdelghafar** and **Eng.Mohab Ahmed Ali** for their invaluable guidance, support, and expertise throughout the project. Their assistance played a pivotal role in the successful completion of this work.

