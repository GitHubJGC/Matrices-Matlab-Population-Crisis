function [tZ] = Tax(t,WP)

%tax revenue from Population

t = zeros(1,10);
t(3:7)=100;

Z=diag(WP);
tZ=(t*Z);

end
