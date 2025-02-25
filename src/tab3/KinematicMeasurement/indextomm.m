function [mm] = indextomm(index,X,Y)

% index =   [v_index,h_index;...
%            v_index,h_index;...
%            v_index,h_index;...
%            ...]

% mm =      [X1,X2,X3,...;...
%            Y1,Y2,Y3]

mm = zeros(size(index))';
len = size(index,1);

for i = 1:len
    mm(1,i) = X(index(i,1),index(i,2));
    mm(2,i) = Y(index(i,1),index(i,2));
end

end

