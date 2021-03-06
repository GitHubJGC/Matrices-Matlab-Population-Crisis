%%Leslie Matrix - Group 6 Population Crisis problem

%Below shows the initial population in our model, Period 0 (p0)
%Approximation of UK population in 2014

flagn = 1;
while flagn ~= 0
    
n = input('How many periods do you want to simulate the population for?');

if n ~=0:500
    display 'must be a number from 0 to 500'
    flagn = 1;
    
else
    
    flagn = 0;
    
end

end

p0 = [8526771 ; 7557820 ; 8785158 ; 8268385 ; 9237335 ; 8009998 ; 7105642 ; 4457176 ; 2325484 ; 322983];
p = p0;
 

%Below states the survival matrix (L) accroding the data collected through the
%ONS (Office of National Statistics) - year:2014 

L = zeros(10,10);
L(2,1) = 0.996;
L(3,2) = 0.999;
L(4,3) = 0.999;
L(5,4) = 0.998;
L(6,5) = 0.996;
L(7,6) = 0.991;
L(8,7) = 0.980;
L(9,8) = 0.947;
L(10,9) = 0.936;

%Now to create the Leslie Matrix we must introduce the birth rates of the
%UK, again found on the ONS website.

%In 2014, the total fertility rate (TFR) decreased to 1.83 children per woman, from 1.85 in 2013.
%We weighted each age group by the births per 1000 women and made it sum to
%1.83.

%http://www.ons.gov.uk/ons/rel/vsob1/birth-summary-tables--england-and-wales/2014/stb-births-in-england-and-wales-2014.html
%http://www.ons.gov.uk/ons/rel/fertility-analysis/fertility-summary/2010/uk-fertility-summary.html

L(1,2) = 0.1402;
L(1,3) = 0.9128;
L(1,4) = 0.7221;
L(1,5) = 0.0520;
L(1,6) = 0.0029;

EC = zeros(1,10);
HC = zeros(10,10);
