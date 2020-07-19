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
## @deftypefn {} {@var{retval} =} ynew (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Shubh <Shubh@SHUBHAM>
## Created: 2020-04-29

function k = ynew (label, m)
label = 3;
m=10;
y=[50:60]';
ynew = zeros(label, m); % 10*5000
for i=1:m,
  y_new(y(i),i)=1;
  k= y_new;
end
endfunction
