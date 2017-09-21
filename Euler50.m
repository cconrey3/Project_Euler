%Euler50: Find the prime below 1,000,000 which can be 
%written as the sum of the most consecutive primes
tic
found = false;
 primeVec = primes(200000);
 toc
 tic
%primeVec = 1:9;
chainLength = 551; %the sum of the first/lowest primes below 4000 is 1.01 million. 
%this includes 550 prime numbers, so the longest possible chain length is
%under 550 consecutive primes. This reduces the chain length from
%length(primes(1000000)) = 78500 to 550, a 99.29% reduction in number of 
%chainlengths to check.
while ~found && chainLength > 1
    i = length(primeVec) - chainLength + 1;
    while ~found && i >= 1
        %if length is 10, chainlength will start as summing the last nine
        %values in primeVec, if that sum is prime, break.
        check = sum(primeVec(i:i+chainLength-1));
        if check < 1e6 && isprime(check)  %this ordering and using shortCircuit && really really matters. isprime takes forEVER
            found = true;
            outP = check;
        end
        i = i-1;
    end
    chainLength = chainLength - 2; %assuming all primes are odd, we skip chainlengths including an even
    %number of primes. This is risky because this will miss the chain if it
    %includes 2 at the beginning. Not likely though.
end
toc %finds answer in 9.64 seconds.        