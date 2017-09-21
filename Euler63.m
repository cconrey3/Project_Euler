%Euler63

%Lower Limit:
%the lowest possible 3-digit number is 100, so in order to have a number n,
%such that n^3 is 3-digit, n must be > 100^(1/3) ~~ 4.6
%4^3 = 64 doesn't cut it,
%5^3 = 125 makes it.

%Upper limit:
%the highest possible 3-digit number is 999, so to have n such that
%n^3 is 3-digit, n must be < 999 ^(1/3) ~~ 10
%9^3 = 729 which is 3-digit
%10^3 is 1000 which is too far.

%How far does this go?
%we'll reach and ending point to this trend when the lower limit
%(10^(n-1))^(1/n) is above 9.
%to show an out-there example,
%10^50 is the lowest possible 51-digit number.
%for a number to be 51-digit, it needs to be greater than
%(10^50)^(1/51) ~~ 9.55
%the upper limit is ((10^51)-1)^(1/51) ~~ 9.999999...
%since there are no integers between 9.55 and 9.9999..., there are no
%integers n such that n^51 is 51-digit, all will be too short.

%By running: d = 10.^n; d = d.^(1./(n+1)) in matlab, we see the first
%number of digits to have no integers with this property is 22. that is,
%(10^21)^(1/22) ~~ 9.006.
%9^22 = 9.8e20 (i.e. only 21 digits, not 22) all of 1:8 .^ 22 will be under
%22 digits as well.


%SO! Now we know that all n s.t. n^d is d-digits long are below 10^21.
count = 0;
ref = 1:9;
for n = 1:21
    v = (10^(n-1))^(1/n);
    count = count + length(ref(ref>=v));
end
%0.126 ms. :D




