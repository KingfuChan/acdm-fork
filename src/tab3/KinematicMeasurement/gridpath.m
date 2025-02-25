function [P] = gridpath(P1,P2)
% This function returns the most direct grid path from P1 to P2

% P1 and P2 in form: 
% [v_index , h_index] 

% P in form:
% [v_index , h_index ;...
% [v_index , h_index ;...
% [v_index , h_index ;...
% [v_index , h_index ;...
% ...]

% vertical and horizontal differences btw points
d_v = P2(1)-P1(1);
d_h = P2(2)-P1(2);

% create minimum sized matrix for grid
A = zeros(abs(d_v)+1,abs(d_h)+1);
A(1,1)=1;
A(end,end)=1;

start = [1,1]; % start refers to P1
if d_v<0
    A = flipud(A);
    start(1)=size(A,1);
end
if d_h<0
    A = fliplr(A);
    start(2)=size(A,2);
end

% trace convex hull from start
T = bwtraceboundary(bwconvhull(A),start,'S');
T(ceil(end/2)+1:end,:)=[];

% add P1 in order: a(1,1) = P1
P = T+P1-start;
end

