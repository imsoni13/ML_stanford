## Copyright (C) 2020 Shubh
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} GradientDescent (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Shubh <Shubh@SHUBHAM>
## Created: 2020-04-23

function [theta,cost] = gradientDescent(X, y, theta, alpha, num_iters)

%GRADIENTDESCENT Performs gradient descent to learn theta

%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by

%   taking num_iters gradient steps with learning rate alpha



% Initialize some useful values

m = length(y); % number of training examples

J_history = zeros(num_iters, 1);

theta_history = theta;



for iter = 1:num_iters

    h = sigmoid(X*theta);

    grad = (X'*(h - y))/m;

    theta = theta - alpha*grad;               

end

[cost,gradient] = costFunction(theta,X,y);