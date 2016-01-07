function [tp] = Tax(t,p)

%tax revenue from population

t = zeros(1,10);
t(3:7)=10;

tp=(p*t);

end
