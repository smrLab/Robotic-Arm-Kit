function [j1, j2, j3, error_status] = inv_kin(x, y, z, d1, l2, l3)
%   Summary of this function
%   x,y,z    - end effector position in mm
%   d1,l2,l3 - robotic arm link lengths in mm
%   j1,j2,j3 - robotic arm joint angles in degrees, **round to the nearest
%   degree
%   error_status -  1 - nominal 
%                   2 - outter workspace boundary
%                   3 - inner workspace boundary
%                   4 - singularity


%%% define joint limits in degrees %%%
j1_limits = [-90 90];
j2_limits = [0 125];
j3_limits = [0 135];

% robotic arm joint angles in degrees
%  **round to the nearest degree** 
j1 = 
j2 = 
j3 = 

% once inv kin is working create if/elseif/else statements to determine if
% the given x,y,z is outside the reachable workspace
error_status = 1; % nominal

end