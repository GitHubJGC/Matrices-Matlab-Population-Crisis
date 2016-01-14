figure;
subplot(2,3,1);
plot(0:1:n,PT);
title('Graph 1: Total population in each period');
xlabel('Period/10 years');
ylabel('Total population');

subplot(2,3,2);
plot(0:1:n,SPPM,'r-*');
title('Graph 2: Spending per person after pension costs in each period');
xlabel('Period/10 years');
ylabel('Spending per person');

subplot(2,3,3);
bar(q);
title('Graph 3: Propotion of total population per age group');
xlabel('Age group');
ylabel('Proportion of total population')
legend('Population in period 1','Population in final period');

subplot(2,3,4);
for g = 1:y
    
plot(0:1:n,X(g,:),'color',rand(1,3));

hold on;
end

title('Graph 3: Propotion of total population per age group');
xlabel('Periods/10 years');
ylabel('Number of people');
legend('0-9','10-19','20-29','30-39','40-49','50-59','60-69','70-79','80-89','90+');

HealthCost = (HealthP/100)*SPPM;
EducCost = (EducP/100)*SPPM;
SplitCosts = [HealthCost;EducCost];

subplot(2,3,5);

for z = 1:2
plot(0:1:n,SplitCosts(z,:),'color',rand(1,3));
hold on
end
title('Graph to show spending on Helathcare and Education');
xlabel('Period/10 years');
ylabel('Total budget to spend');
legend('Healthcare','Education');
