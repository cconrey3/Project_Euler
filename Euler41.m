%problem 41
%find the largest pandigital prime

%{
notes
by the 3 or 9 divisibility rule, no 9-digit singly pandigital number (1~9
once each) can be prime:
    3 divisibility rule: if the sum of the digits is divisible by three, then
    the number itself is divisible by three.

all 1-9 pandigital numbers sum to 45, which is divisible by three.
the same logic follows that any 1-8 pandigital number cannot be prime.
This one rule narrows our search from wading through 4e+7 primes to only
5e+5.

%}
vec = primes(7654321);
vec = vec(vec >= 1234567);
vec = vec';
vecstr = num2str(vec);
vecsrtd = sort(vecstr,2);
vecCell = mat2cell(vecsrtd,ones(1,length(vecsrtd)),7);
log = strcmp(vecCell,'1234567');
ind = find(log);
ind = ind(end);
panPrime = str2num(vecstr(ind,:));




