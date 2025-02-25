function w = weights(P,C,sigma)
% w: vector: weight for each point of P

% P = set of undeformed reference points (indices)
% C = undeformed crack location (indices)
% sigma = sigma field of deformed state
% 
w = 1./vecnorm(P-C);
end
