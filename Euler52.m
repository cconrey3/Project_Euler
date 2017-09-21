%Euler52
%find the smallest integer n such that n*[1 2 3 4 5 6] all use the exact
%same list of digits. 125874, and its double, 251748 both use the same
%digits the same number of times.

%for each multiple to have the same digits, they need to have the same
%number of digits, so the first digit*6 has to be 1, else 2xxx*6 = 12xxx.
%then after that, we know the next digit has to be 1-6 since 1.6*6 < 10.
function n = Euler52
tic
found = false;
s = 100;e = 166;
while ~found
    [found n] = TestRange(s,e);
    s = s*10; e = e*10+6;
end
toc %8 seconds
end
function [worksSoFar n] = TestRange(s,e)
for n = s:e
    vec = sort(num2str((n*(1:6))'),2);
    check = zeros(1,6);
    [~,col] = size(vec);
    c = 1;
    worksSoFar = true;
    while worksSoFar && c <=col
        worksSoFar = isequal((vec(1,c)*ones(1,5))',vec(2:6,c));
        c = c+1;
    end
    if worksSoFar
        break;
    end
end
end