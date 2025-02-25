function [error] = errorSVD(P,Q,R,t,w)

% Remove nan values
[~,TF]=rmmissing(P+Q,2);

% % Remove nan values from input
P = P(:,~TF);
Q = Q(:,~TF);
w = w(:,~TF);

% Calculate error
% error_old = sum(vecnorm(w.*(R*P+t-Q)))/sum(w);

% RMSE
error_i_squared = (R*P+t-Q).^2;
error = sqrt(sum(sum(w.*error_i_squared,1),2)/sum(w));

end

