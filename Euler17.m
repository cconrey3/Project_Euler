%Problem 17
%Number-count. For 1-1000, find how many letters it would take to write all
%words in english? 999=NineHundredAndNinetyNine.
%It'd be faster to just use string lengths isntead of the entire strings,
%but I feel it's clearer to build the string then get the lengths at the
%very end. Easier to debug, too.
function [len,str] = Euler17
str = '';
for i = 1:999
    bit = num2word(i)
    str = [str bit];
end
str = sprintf([str,'OneThousand']);
len = length(str) - 2*length(find(str == sprintf('\b')));
end
function str = num2word(num)
if num > 99
    h = num2str(num); rest = str2num(h(2:end)); h = str2num(h(1));%123 -> h = 1;rest = 23.
    str = [num2word(h),'hundredAnd',num2word(rest)];
elseif num >19
    t = num2str(num);o = t(2);t = t(1);
    str = [selectTens(t),selectOnes(o)];
elseif num >= 0
    str = b4_19(num);
end
end
function str = selectTens(t)
switch t
    case '2' %starts with 2 because 1-19 are taken care of by b4_19
        str = 'Twenty';
    case '3'
        str = 'Thirty';
    case '4'
        str = 'Forty';
    case '5'
        str = 'Fifty';
    case '6'
        str = 'Sixty';
    case '7'
        str = 'Seventy';
    case '8'
        str = 'Eighty';
    case '9'
        str = 'Ninety'; 
end
end
function str = selectOnes(o)
switch o
    case '0'
        str = '';
    case '1'
        str = 'One';
    case '2'
        str = 'Two';
    case '3'
        str = 'Three';
    case '4'
        str = 'Four';
    case '5'
        str = 'Five';
    case '6'
        str = 'Six';
    case '7'
        str = 'Seven';
    case '8'
        str = 'Eight';
    case '9'
        str = 'Nine';
end
end
function str = b4_19(num)
switch num
    case 0 
        str = '\b\b\b';
    case 1
        str = 'One';
    case 2
        str = 'Two';
    case 3
        str = 'Three';
    case 4
        str = 'Four';
    case 5
        str = 'Five';
    case 6
        str = 'Six';
    case 7
        str = 'Seven';
    case 8
        str = 'Eight';
    case 9
        str = 'Nine';
    case 10
        str = 'Ten';
    case 11
        str = 'Eleven';
    case 12
        str = 'Twelve';
    case 13
        str = 'Thirteen';
    case 14
        str = 'Fourteen';
    case 15
        str = 'Fifteen';
    case 16
        str = 'Sixteen';
    case 17
        str = 'Seventeen';
    case 18
        str = 'Eighteen';
    case 19
        str = 'Nineteen';
end
end