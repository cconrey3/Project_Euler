function pal = palindromeFactors(power)
intMax =(10^power)-1;
intMin =10^(power-1);

palList = [];
for n = intMax:-1:intMin
        for i = (10^power)-(mod(10^power,11)) :-11:intMin
            word = num2str(n.*i);
            if word == word(end:-1:1)
                palList = [palList n*i];
            end
        end
end
pal = max(palList);
end