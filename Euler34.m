%problem 34
%find the sum of all numbers who are the sum of the factorial of their
%digits.
%145! = 1! + 4! + 5! = 1 + 24 + 120 = 145
function s = Euler34
s = 0;
for n = 10:50000 %1e7 is formal end. apparantly 50000 is a real upperbound too.
    ns = num2str(n);
    ph = char(' '*ones(1,2*length(ns)));
    ph(1:2:end) = ns;
    vec = str2num(ph);
    if sum(fact19(vec)) == n
        s = s + n;
    end
end
end


function in = fact19(in)
nvec = [1 2 6 24 120 720 5040 40320 362880];
for n = 1:length(in)
    if in(n) == 0
        in(n) = 1;
    else
        in(n) = nvec(in(n));
    end
end
end