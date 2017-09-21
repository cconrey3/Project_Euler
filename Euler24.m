%Euler24
%lexicographic order.
%if all numbers are listed in ascending magnitude, what is the 1 millionth
%permutation of the numbers 0 1 2 3 4 5 6 7 8 9?

%easy way with built-ins:
tic
P = (perms('0123456789'));
P = P(end:-1:1,:);
P = P(1000000,:)
toc %usually about 0.7 s.