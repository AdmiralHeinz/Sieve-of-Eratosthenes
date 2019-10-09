%Jakob Heinz
%s29177
%October 3, 2019

%Sieve of Eratosthenes: returns all prime numbers between 1 and N

function SPrimes = SeiveE(N)
 
    SPrimes = [0 2 : N]; %Create vector with all ints between 2 and N where position 1 is hard-coded as 0 since 1 is not a prime number.
 
    for i = 2:sqrt(N)%All prime factors lie between 2 and sqrt(N).
        %starts at i =2, loops through until sqrt(N). Removes all multiples of i that are
        %greater than i*i and less than N.
       if (SPrimes(i)~=0)%If the current value is not 0 (already removed)
           
          SPrimes(i*i:i:N) = 0;% loop throught the vector to replace all mulitples of i greater than i*i and less than N with 0.
       end
    end %At this point P is a vector with only primes and zeroes.
 
    SPrimes = SPrimes(SPrimes ~= 0);%Remove all zeroes from P, leaving only the prime numbers.
end