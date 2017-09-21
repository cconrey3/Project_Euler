%Problem 23
%Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.
%It is known that above 28123, all numbers can be written as a sum of two
%abundant numbers.

%An abundant number n is one st the sum of all the proper divisors
%(divisors excluding n) exceeds n. e.g. 1+2+3+4+6 = 16 > n = 12.

%{
thoughts
List all abundant numbers, then find all numeric combinations of abundant
numbers, and ismember all numbers below 28123.
%}

%Find all abundant numbers below 28123/2
function [out,t] = Euler23
t = tic;
abNos = getabnos(28123);
s = [];
abnosR = abNos(ones(1,length(abNos)),:);
abnosC = abNos'; abnosC = abnosC(:,ones(1,length(abNos)));
s = abnosR+abnosC; %once again, matrix operators save the day. This took forever as a nested for loop.

s = unique(s);
out = 0;
for n = 1:28123
    if ~ismember(n,s)
        out = [out n];
    end
end
t = toc(t);
end

function abnovec = getabnos(p)
abnovec = [];
for n = 1:p
   if isabno(n)
       abnovec = [abnovec n];
   end
end
end

function bool = isabno(n)
divs = 1;
for i = 2:sqrt(n)
    if mod(n,i) == 0
        divs = [divs i n/i];
    end
end
bool = sum(unique(divs)) > n;
end
    
    
    