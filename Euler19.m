%Euler19: counting sundays
%we know that Jan 1, 1900 was a Monday. 
%every year div by 4 is a leap year, every 100th year is not. every 400th
%is.
%SO 1900 was not a leap year.
%so Jan 1 1901 was a Tuesday (365 days, mod(365,7) = 1 means one day change
%on non-leapyears.
Sundays = 0;
day = 2; %Tuesday; 0 means sunday.
for year = 1901:2000
   isleap = mod(year,4) == 0 && (mod(year,100) ~= 0 || mod(year,400) == 0);
   for monthDays = [31 28+isleap 31 30 31 30 31 31 30 31 30 31]; 
       day = mod(day +monthDays,7);
       if day == 0
           Sundays = Sundays + 1;
       end
   end   
end