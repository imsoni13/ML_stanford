function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

tTheta = theta;
tTheta(1) = 0; %first elemet of theta =o %
h = sigmoid (X * theta);
J = (-1 / m) * sum(y.*log(h) + (1 - y).*log(1 - h)) + (lambda / (2 * m))*sum(tTheta.^2);
grad = (1 / m) * (X' * (h-y)) + (lambda/m)*tTheta; % x'*(h-y) gives answer in rows while sum((h-y).*X) gives answer in columns while the answer is same%



% =============================================================

end
