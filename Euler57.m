%Euler57:  Square root convergents
%work from farthest expansion back to the top
%third expansion has fractional part 
%____1_____
%    __1___  
%       _1_  
%2 + 2+  2

[num den] = deal(1,2); %start with the deepest, 1000th 1/2
num = num + 2*den; % add the 2 under the fraction
[num den] = deal(den,num); %1 over (2+1/2) by swapping num and den.
%1 + num/den gives our second expansion. If we keep going, we could get a
%third expansion by doing the above again, then adding 1, and so on.


%goal of this problem: find how many expansions have the numerator with
%more digits than the denominator. Using syms since the fractions get
%intense later on, like 2E+383. This takes some time but is perfectly
%accurate.
num = sym(num);
den = sym(den);
    count = 0;
for i = 3:1000
    num = num + 2*den;
    [num den] = deal(den,num);
    if length(char(num+den)) > length(char(den))
        count = count+1;
    end
end %2.21 seconds.


