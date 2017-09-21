%ProjectEuler48

%Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.
%{
tic
v=sym(1:1000);
v=char(sum(v.^v));
c=v(end-9:end)
toc
%}
%Elapsed time is 0.087124 seconds. Lol, but this is cheating...
tic
vec = 1:1000;
S = 0;
for i = vec
    val = 1;
    for num = (1:i)
        val = val * i;
        if length(num2str(val)) > 10
            val = num2str(val);
            val = str2num(val(end-9:end));
        end
    end
    S = S+val;
end
S = num2str(S);
S = str2num(S(end-9:end));
toc 
