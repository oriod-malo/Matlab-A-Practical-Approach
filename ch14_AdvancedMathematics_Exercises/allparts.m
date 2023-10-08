function out = allparts()
% ----------------------------------------------------------------------- %
% Write a function "allparts" that will read in lists of part numbers for 
% parts produced by two factories. These are contained in data files 
% called xyparts.dat and qzparts.dat. The function will return a vector of 
% all parts produced, in sorted order (with no repeats). For example, if 
% the file xyparts.dat contains
% 123 145 111 333 456 102
% and the file qzparts.dat contains
% 876 333 102 456 903 111
% calling the function would return the following:
% >> partslist = allparts
% partslist =
%  102 111 123 145 333 456 876 903
% ----------------------------------------------------------------------- %
    load xyparts.dat;
    load qzparts.dat;
    out = union(xyparts,qzparts);
end

