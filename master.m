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

end

PT = sum(X);

proportion;

Plots;
%%
