# MATLAB Interface
The following repository contains codes for solving the inverse kinematics problem using MATLAB. The determined joint angles will then be sent to the microcontroller to control of the robotic arm.  

## Programming the inverse kinematic equations
1. Confirm your MATLAB installation is version R2022a or newer. 

2. In the MATLAB script [`inv_kin.m`](inv_kin.m), compute the inverse kinematics of the robotic arm on lines 19 to 21. **The final solution should be rounded to the nearest degree.** 

3. In Arduino sketch [`Arduino_joint_control.ino`](Arduino_joint_angle_control\Arduino_joint_angle_control.ino), modify the min/max pulselength and corresponding angle measurement in degrees on lines 12 to 33. Then upload the Arduino sketch to your Arduino Mega board.

## Using the robotic arm
1. Open the MATLAB Application *array_angle_control_GUI_IK.mlapp*. 

2. Find the Arduino port. Instructions can be found [here](https://www.mathworks.com/help/supportpkg/arduinoio/ug/find-arduino-port-on-windows-mac-and-linux.html). 
Change the COM port in the MATLAB Application. The port number should be something like *COM3* for Windows or */dev/tty.usbmodem11301* for Mac. 

3. Select the *Connect* button. Once connected the application will state *Connected to Arduino* and the arm should move to the home position. If it does not, or the robot starts making loud grinding noises or alarming motions, turn it off by unplugging the USB cable and seek assistance.
If the *Connect* button is unresponsive, make sure the green and red LED on the servo shield is on. If either LED is off, check to make sure the USB cables are connected or try another USB port. 

4. Once connected, you can move the X, Y, and Z sliders to move the robot in Cartesian space. The grasper can also be controlled. There is a slight delay between the application and the robotic arm. 
The MATLAB Application will also display the current joint angle in degrees and show the location of the arm in the Z-XY and X-Y plane. 
