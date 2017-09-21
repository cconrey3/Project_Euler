Fibs = [1 2];
while Fibs(end) < 4000000
   Fibs(end+1) = Fibs(end-1) +Fibs(end);    
end
evenFibs = Fibs(mod(Fibs,2) == 0);
finalFibSum = sum(evenFibs)