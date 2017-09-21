%changes: instead of matrix operations, used a better for loop with
%logicals and indices. make a vector of logicals from 1:28123 (highest
%number that can be the sum of abundant numbers in our range) and change
%the values of the vector to true for each sum that works at its
%corresponding index. i.e.
%(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25...30..
% 0 0 0 0 0 0 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0  0  0  1  0...  1...
%then sum the indices of where the vector is false. cuts time down to about
%1.67 s.

%-getabnos section takes about 1.27 s, by far the slower section
%-summation and searching section takes 0.37. much better than in original
%   version, but still longer than others' entire program times. 

function [out,t1,t2] = Euler23
t1 = tic;
abNos = getabnos(28123);
t1 = toc(t1);
t2 = tic;
ph = false(1,28123*2+1);
for i = 1:length(abNos)
    for j = 1:i
        ph(abNos(i)+abNos(j)) = true;        
    end
end
out = sum(find(~ph(1:28123)));
t2 = toc(t2);
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