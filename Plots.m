figure;
subplot(2,3,1);
plot(0:1:n,PT);

title('Total population');
xlabel('Period/10 years');
ylabel('Total population');

subplot(2,3,2);
plot(0:1:n,SPPM,'r-*');
title('Spending per person after pension');
xlabel('Period/10 years');
ylabel('Spending per person');

subplot(2,3,3);
bar(q), colormap(summer);
title('Age group as proportion of total population');
xlabel('Age group');
ylabel('Proportion of total population')
legend('Population in period 1','Population in final period');

subplot(2,3,4);
for g = 1:y
    
plot(0:1:n,X(g,:),'color',rand(1,3));

hold on;
end

title('Population per age group');
xlabel('Periods/10 years');
ylabel('Number of people');
legend('0-9','10-19','20-29','30-39','40-49','50-59','60-69','70-79','80-89','90+');

%HealthCost = (HealthP/100)*SPPM;
%EducCost = (EducP/100)*SPPM;
%SplitCosts = [HealthCost;EducCost];
%SplitCosts = HealthEducP/100*

subplot(2,3,5);

for z = 1:2
plot(1:1:n,SplitCosts(z,:),'color',rand(1,3));
hold on
end

title('Healthcare/Education Spending');
xlabel('Period/10 years');
ylabel('Total budget to spend');
legend('Healthcare','Education');

subplot(2,3,6);

%plot(1:1:n,HealthEducP);
bar(HealthEducP, 'stacked');

title('Percent of budget spent on Education and Healthcare');
xlabel('Period/10 years');
ylabel('% of budget');
legend('Healthcare','Education');   
