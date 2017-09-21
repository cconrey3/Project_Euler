function [S,vec] = Euler36
vec = [];
for n = 1:999999
    if ispali(n)
        if ispali(myd2b(n))
            vec = [vec n];
        end
    end
end
S = sum(vec)
end

function bool = ispali(N)
ns = num2str(N);
bool = ns == ns(end:-1:1);
end
function Bstr = myd2b(D)
Bstr = '';
while D > 0
   rem = mod(D,2);
   D = floor(D/2);
   Bstr = [num2str(rem) Bstr];
end 
end