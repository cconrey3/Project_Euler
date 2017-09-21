%Problem 30
%Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

%{
limitations/bounds of numbers
1^5 is not a sum. All 1-digit numbers are discounted; start at 10.
1112 creates 1 + 1 + 1 + 32

Note: highest value for each length is all nines. for one digit, 9^5 =
59049 is way higher than nine, so it's "possible" for one-digit numbers to
sum this way.

for 5 digits, 99,999 -> 9^5 + 9^5 + 9^5 + 9^5 +9^5 = 5*9^5 = 295,245, a six
digit number, so other 5 digit numbers could totally fit this summing criterion.

for a 7 digit number though, 7*9^5 = 413,343, a six-digit number, so no 7
digit number could have the sum of its digits raised to the fifth power
equal itself-- they'd always be at least one digit short. 
Thus we know we only have to check up to the highest 6-digit number, 999999.
%}

function [Sum, SumVec] = Euler30
SumVec = [];
for n = 10:999999
    if sof(n)
        SumVec = [SumVec n];
    end
end
Sum = sum(SumVec);
end

function bool = sof(n)
nVec = digvec(n);
bool = n == sum(nVec.^5);
end

function nVec = digvec(n)
ns = num2str(n);
nVec = ' '*ones(1,2*length(ns));
nVec(1:2:end) = ns;
nVec = str2num(char(nVec));
end

