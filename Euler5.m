function evenDiv = Euler5(endNumber)

list = [];
for i = 2:endNumber
    if isprime(i)
        list = [list i];
    elseif any(lpf(i).^(1:endNumber^.5) == i)
        list = [list lpf(i)];
    end
end
evenDiv = prod(list);

end