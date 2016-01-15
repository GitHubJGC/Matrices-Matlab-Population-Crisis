% Empties workspace of any variables, clears command window.
clc
clear
%% ini

% Calls the functions not involved in the population changing
LeslieMatrix;
EducHealthM;
Choice;
Tax2;
EducHealth;
interventionfreq;

% Creates an appropriately sized zeros matrix X to store population values.
y = length(p);
X = zeros(y,n+1);
% Inserts initial population into X.
X(:,1)= p;
% Creates an appropriately sized zeros matrix SPPM to store total spending
% per person after pension cost values.
SPPM = zeros(1,n+1);
% Creates an appropriately sized zeros matrix HealthEducP to store the
% spending split.
HealthEducP = zeros(n,2);

%% loop

for j = 1:n

% Calculates total tax revenue    
TaxRev0 = Tax(t,WP);

% Calculates tax revenue left after pension costs.
TaxRev1 = Pension(p,TaxRev0);

% Calculates spending per person.
SppCheck;

% Population that is taxed is updated.
WP=X(:,j)*E;

% Applies relevant Leslie(HC) to current population for next period
% population.
X(:,j+1) = HC*X(:,j);

% Makes a copy of X.
X1 = X;

% Fills out the next entry for spending per person.
SPPM(:,j+1)= SPP;

% This code makes sure to only intervene as often as has been specified.
if rem(j,i) ~= 0
    
    % If intervention frequency = 0, runs whole way through uninteruppted.
    if i == 0
    else
    
    end    
else
    % New Choice = new Health/Education split
    Choice;
    
end

% These matrices are used to store the spending split values.
HealthEducP(j,1) = HealthP;
HealthEducP(j,2) = EducP;

SplitCosts(1,j) = (HealthEducP(j,1)/100)*SPPM(j);
SplitCosts(2,j) = (HealthEducP(j,2)/100)*SPPM(j);

% If the population halves there is a population crisis.
if sum(X(:,1)) < 0.5*sum(p0)
    display(' Population crisis, total population has fallen below half of the inital population ');
else 
end

end

% Matrix storing population totals per period.
PT = sum(X);

% These functions are run after the processing is complete.
proportion;
Plots;
%%
