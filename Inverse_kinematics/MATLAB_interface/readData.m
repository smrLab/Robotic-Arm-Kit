%% function that reads data from arduino when available
function readData(src, ~)
    % Read the ASCII data from the serialport object to console.
    data = readline(src);
    disp(data);
end