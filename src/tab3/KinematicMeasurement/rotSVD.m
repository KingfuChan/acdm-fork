function [R,t] = rotSVD(P,Q,w)
% @misc{SorkineRabinovich:SVD-rotations:2016,
% author = {Olga Sorkine-Hornung and Michael Rabinovich},
% title = {Least-Squares Rigid Motion Using SVD},
% institution = {ETH Zurich, Department of Computer Science},
% year = {2016},
% note = {Technical note},
% }

% R: rotation matrix
% t: translation vecotr

% Minimum amount of non-nan values = 3
len_min = 3;

% Initiate variables
R=nan;
t=nan;

% Remove nan values
[~,TF]=rmmissing(P+Q,2);

% Length of non-nan values 
len = length(TF)-sum(TF);

% Criterion to return 
if len<len_min
    return
end

% Remove nan values from input
P = P(:,~TF);
Q = Q(:,~TF);
w = w(:,~TF);

% Get least-squares rigid motion using SVD
p_bar = sum(w.*P,2)/sum(w);
q_bar = sum(w.*Q,2)/sum(w);

X = P-p_bar;
Y = Q-q_bar;
W = diag(w);

S = X*W*transpose(Y);

[U,~,V] = svd(S);

h=eye(size(P,1));
h(end,end) = det(V*transpose(U));

R = V*h*transpose(U);
t = q_bar-R*p_bar;

end

