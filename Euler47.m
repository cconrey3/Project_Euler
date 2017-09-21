%Euler47
function out = Euler47(n) %n is the number of consec no.s and number of required prime factors.
%this problem calls for n = 4. euler's examples listed n = 2,3
tic
k = 1:n;
found = false;
while ~found
    k = k + 1;
    found = all(myfact(k)>=n);
end
out = k(1);
toc % 37 s for n = 4.
end

function out = myfact(kvec)
out = [];
for i = 1:length(kvec)
    out = [out length(unique(factor(kvec(i))))];
end
end