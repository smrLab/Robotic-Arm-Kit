function [sendString] = encodeString(position)
    % grab a 3-digit number padded with zeroes on the left from each entry
    % in position, and turn it into a 3-character string. Then concatenate
    % the strings and return as sendstring.
    J0 = num2str(position(1), '%03i');
    J1 = num2str(position(2), '%03i');
    J2 = num2str(position(3), '%03i');
    EE = num2str(position(4), '%03i');
    sendString = append(J0,J1,J2,EE);
end