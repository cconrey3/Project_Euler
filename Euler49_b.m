%Euler49_b
tic
finalVec = {};
pv = primes(9999);
pv = pv(pv>1000);
while ~isempty(pv)
    matched = false;
    p = pv(1);
    ps = num2str(p);
    list = str2num(perms(num2str(ps)));
    checklist = unique(sort(list(isprime(list))));
    if length(checklist) > 2
        len = length(checklist);
        i = 1;found = false;
        while ~found && i <= len
            j = i + 1;
            while ~found && j <= len
                k = j+1;
                while ~found && k <= len
                    vec = checklist([i j k]);
                    if diff(diff(vec)) == 0 && ~any(diff(vec)==0)
                        found = true;
                        finalVec = [finalVec;{vec}];
                        matched = true;
                    end
                    k = k+1;
                end
                j = j+1;
            end
            i = i+1;
        end
    end
pv(1) = [];
matched = false;
end
toc



