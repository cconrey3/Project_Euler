%Euler92
%Sum of Squares Chain
%In repeatedly summing the squares of each digit of any number, you'll
%eventually arrive at either 89 or 1. How many numbers below 10 million
%arrive at 89?

function out = Euler92
to1 = 1;
to89 = 89;
lim = 1e6;
for n = 1:lim
    bit = n;
   while ~(ismember(bit,to1) || ismember(bit,to89))
       bit = smosq(bit);
   end
   if bit == 1
       to1 = [to1,n];
   else
       to89 = [to89,n];
   end   
end


end



function smosq = smosq(in)
in = num2str(in)-'0';
smosq = sum(in.^2);
end



