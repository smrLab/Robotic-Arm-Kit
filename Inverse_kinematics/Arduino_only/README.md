# Standalone Arduino sketch
The Arduino sketch can be used to solve the inverse kinematics problem and control of the robotic arm.

## Programming the inverse kinematic equations
1. In the [`inverse_kinematics_skeleton.ino`](inverse_kinematics_skeleton/inverse_kinematics_skeleton.ino) Arduino sketch, modify the min/max pulselength and corresponding angle measurement in degrees, lines 12 to 33.

2. Compute the inverse kinematics of the robotic arm on lines 126 to 141. 

## Using the robotic arm
1. Upload the Arduino sketch *inverse_kinematics_skeleton.ino* to your Arduino Mega board.

2. When you load the program, the arm should move to a neutral position at a safe location between the limits of each joint. If it does not, or the robot starts making loud grinding noises or alarming motions, turn it off by unplugging the USB cable and seek assistance.

3. If the robot reaches a neutral position, open the serial monitor (Tools > Serial Monitor) and set the baud rate to *115200 baud*, located at the bottom right of the serial monitor. 
    
4. Now you can enter commands in the window at the top of the serial monitor to move by small increments in Cartesian space: 

- 'q' will move in x +5 [mm] and 'a' will move in x -5 [mm]. 
- 'w' will move in y +5 [mm] and 's' will move in y -5 [mm]. 
- 'e' will move in z +5 [mm] and 'd' will move in z -5 [mm]. 
- 'r' will move the gripper +5 and 'f' will move the gripper -5. 
- 'h' will move the robot to the original position. 