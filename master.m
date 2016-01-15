clc
clear

%%Tax calculation to have money to begin with

%% ini
LeslieMatrix;
EducHealthM;
Choice;
Tax2;
EducHealth;

%% loop

y = length(p);
X = zeros(y,n+1);
X(:,1)= p;

SPPM = zeros(1,n+1);
HealthEducP = zeros(n,2);

interventionfreq;

for j = 1:n

TaxRev0 = Tax(t,WP);
TaxRev1 = Pension(p,TaxRev0);
SppCheck;


WP=X(:,j)*E;
X(:,j+1) = HC*X(:,j);

X1 = X;

SPPM(:,j+1)= SPP;


if rem(j,i) ~= 0
    
    if i == 0
    else
    
    end    
else
    
    Choice;
    
end

HealthEducP(j,1) = HealthP;
HealthEducP(j,2) = EducP;

SplitCosts(1,j) = (HealthEducP(j,1)/100)*SPPM(j);
SplitCosts(2,j) = (HealthEducP(j,2)/100)*SPPM(j);

if sum(X(:,1)) < 0.5*sum(p0)
    display(' Population crisis, total population has fallen below half of the inital population ');
else 
end

end

PT = sum(X);

proportion;

Plots;
%%
