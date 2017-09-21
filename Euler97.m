%Euler97

num = 1;
i = 0;
while i < 7830457-16
    i = i+16;
    num = num*65536;
    numstr = num2str(num);
    if length(numstr)>10
        num = str2num(numstr(end-9:end));
    end
end
while i < 7830457
    i = i+1;
    num = num*2;
    numstr = num2str(num);
    if length(numstr)>10
        num = str2num(numstr(end-9:end));
    end
end
num = num*28433 +1;
numstr = num2str(num);
num = str2num(numstr(end-9:end));