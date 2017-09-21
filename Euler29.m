%problem 29
%how many unique numbers a^b are there for a,b = 2~100;
vec = [];
for a = 2:100
    for b = 2:100
        vec = [vec a^b];
    end
end
vec = unique(vec);
out = length(vec);