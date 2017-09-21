%Problem 49: Prime Permutations
%find the arithmetic sequence(a3-a2 = a2-a1) of 3 4-digit numbers st all numbers are
%permutations of the same digits. e.g. the other is 1487, 4817, 8147.
finalVec = {};
%pv = 1478; %%%%%%%%%%%%
pv = primes(9999);
pv = pv(pv>1000);
while ~isempty(pv) %length(finalVec) < 10 && ~isempty(pv)
    matched = false;
    p = pv(1);
    ps = num2str(p);
    if isarith(ps) %if true, then it's possible to get an arithmetic sequence.
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
                            %pv = pv(~ismember(pv,checklist));
                            matched = true;
                        end
                        k = k+1;
                    end
                    j = j+1;
                end
                i = i+1;
            end
        end
    end
%     if ~matched
%         pv(1) = [];
%     end
pv(1) = [];
    matched = false;
end
                        
                        