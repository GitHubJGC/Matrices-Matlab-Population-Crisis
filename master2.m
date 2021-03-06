function bar
%House keeping rules
clear
clc
%Initial population in uk acording to each age group
 p0 = [8526771 ; 7557820 ; 8785158 ; 8268385 ; 9237335 ; 8009998 ; 7105642 ; 4457176 ; 2325484 ; 322983];
%Eleven different leslie matricies according to the amount of spending on
%health care and education which is used as an input as the user moves the
%slider.
Health0v100 =[0 0.1402	0.9128	0.7221	0.052	0.0029 0	0	0	0;
0.98	0	0	0	0	0	0	0	0	0;
0	0.97	0	0	0	0	0	0	0	0;
0	0	0.96	0	0	0	0	0	0	0;
0	0	0	0.95	0	0	0	0	0	0;
0	0	0	0	0.94	0	0	0	0	0;
0	0	0	0	0	0.93	0	0	0	0;
0	0	0	0	0	0	0.92	0	0	0;
0	0	0	0	0	0	0	0.85	0	0;
0	0	0	0	0	0	0	0	0.8	0];

Health10v90 =[0 0.1402	0.9128	0.7221	0.052	0.0029 0	0	0	0;
0.9832	0	0	0	0	0	0	0	0	0;
0	0.9758	0	0	0	0	0	0	0	0;
0	0	0.9678	0	0	0	0	0	0	0;
0	0	0	0.9596	0	0	0	0	0	0;
0	0	0	0	0.9512	0	0	0	0	0;
0	0	0	0	0	0.9422	0	0	0	0;
0	0	0	0	0	0	0.932	0	0	0;
0	0	0	0	0	0	0	0.8694	0	0;
0	0	0	0	0	0	0	0	0.8272	0];

Health20v80 =[0 0.1402	0.9128	0.7221	0.052	0.0029 0	0	0	0;
0.9864	0	0	0	0	0	0	0	0	0;
0	0.9816	0	0	0	0	0	0	0	0;
0	0	0.9756	0	0	0	0	0	0	0;
0	0	0	0.9692	0	0	0	0	0	0;
0	0	0	0	0.9624	0	0	0	0	0;
0	0	0	0	0	0.9544	0	0	0	0;
0	0	0	0	0	0	0.944	0	0	0;
0	0	0	0	0	0	0	0.8888	0	0;
0	0	0	0	0	0	0	0	0.8544	0];

Health30v70 =[0 0.1402	0.9128	0.7221	0.052	0.0029 0	0	0	0;
0.9896	0	0	0	0	0	0	0	0	0;
0	0.9874	0	0	0	0	0	0	0	0;
0	0	0.9834	0	0	0	0	0	0	0;
0	0	0	0.9788	0	0	0	0	0	0;
0	0	0	0	0.9736	0	0	0	0	0;
0	0	0	0	0	0.9666	0	0	0	0;
0	0	0	0	0	0	0.956	0	0	0;
0	0	0	0	0	0	0	0.9082	0	0;
0	0	0	0	0	0	0	0	0.8816	0];

Health40v60 =[0 0.1402	0.9128	0.7221	0.052	0.0029 0	0	0	0;
0.9928	0	0	0	0	0	0	0	0	0;
0	0.9932	0	0	0	0	0	0	0	0;
0	0	0.9912	0	0	0	0	0	0	0;
0	0	0	0.9884	0	0	0	0	0	0;
0	0	0	0	0.9848	0	0	0	0	0;
0	0	0	0	0	0.9788	0	0	0	0;
0	0	0	0	0	0	0.968	0	0	0;
0	0	0	0	0	0	0	0.9276	0	0;
0	0	0	0	0	0	0	0	0.9088	0];

Health50v50 =[0 0.1402	0.9128	0.7221	0.052	0.0029 0	0	0	0;
0.996	0	0	0	0	0	0	0	0	0;
0	0.999	0	0	0	0	0	0	0	0;
0	0	0.999	0	0	0	0	0	0	0;
0	0	0	0.998	0	0	0	0	0	0;
0	0	0	0	0.996	0	0	0	0	0;
0	0	0	0	0	0.991	0	0	0	0;
0	0	0	0	0	0	0.98	0	0	0;
0	0	0	0	0	0	0	0.947	0	0;
0	0	0	0	0	0	0	0	0.936	0];

Health60v40 =[0 0.1402	0.9128	0.7221	0.052	0.0029 0	0	0	0;
0.9964	0	0	0	0	0	0	0	0	0;
0	0.99908	0	0	0	0	0	0	0	0;
0	0	0.99912	0	0	0	0	0	0	0;
0	0	0	0.99836	0	0	0	0	0	0;
0	0	0	0	0.9968	0	0	0	0	0;
0	0	0	0	0	0.992	0	0	0	0;
0	0	0	0	0	0	0.982	0	0	0;
0	0	0	0	0	0	0	0.9476	0	0;
0	0	0	0	0	0	0	0	0.9368	0];

Health70v30 =[0 0.1402	0.9128	0.7221	0.052	0.0029 0	0	0	0;
0.9968	0	0	0	0	0	0	0	0	0;
0	0.99916	0	0	0	0	0	0	0	0;
0	0	0.99924	0	0	0	0	0	0	0;
0	0	0	0.99872	0	0	0	0	0	0;
0	0	0	0	0.9976	0	0	0	0	0;
0	0	0	0	0	0.993	0	0	0	0;
0	0	0	0	0	0	0.984	0	0	0;
0	0	0	0	0	0	0	0.9482	0	0;
0	0	0	0	0	0	0	0	0.9376	0];

Health80v20 =[0 0.1402	0.9128	0.7221	0.052	0.0029 0	0	0	0;
0.9972	0	0	0	0	0	0	0	0	0;
0	0.99924	0	0	0	0	0	0	0	0;
0	0	0.99936	0	0	0	0	0	0	0;
0	0	0	0.99908	0	0	0	0	0	0;
0	0	0	0	0.9984	0	0	0	0	0;
0	0	0	0	0	0.994	0	0	0	0;
0	0	0	0	0	0	0.986	0	0	0;
0	0	0	0	0	0	0	0.9488	0	0;
0	0	0	0	0	0	0	0	0.9384	0];

Health90v10 =[0 0.1402	0.9128	0.7221	0.052	0.0029 0	0	0	0;
0.9976	0	0	0	0	0	0	0	0	0;
0	0.99932	0	0	0	0	0	0	0	0;
0	0	0.99948	0	0	0	0	0	0	0;
0	0	0	0.99944	0	0	0	0	0	0;
0	0	0	0	0.9992	0	0	0	0	0;
0	0	0	0	0	0.995	0	0	0	0;
0	0	0	0	0	0	0.988	0	0	0;
0	0	0	0	0	0	0	0.9494	0	0;
0	0	0	0	0	0	0	0	0.9392	0];

Health100v0 =[0 0.1402	0.9128	0.7221	0.052	0.0029 0	0	0	0;
0.998	0	0	0	0	0	0	0	0	0;
0	0.9994	0	0	0	0	0	0	0	0;
0	0	0.9996	0	0	0	0	0	0	0;
0	0	0	0.9998	0	0	0	0	0	0;
0	0	0	0	1	0	0	0	0	0;
0	0	0	0	0	0.996	0	0	0	0;
0	0	0	0	0	0	0.99	0	0	0;
0	0	0	0	0	0	0	0.95	0	0;
0	0	0	0	0	0	0	0	0.94	0];
%An input option that allows the user to choose how long they wish to
%simulate it for.
for T = input ('enter the amount of Periods(1=10years)you would like to simulate the population for:  ');
end
%Changes the initial population to an IN variable used in the popsimu
%function as an input.
IN=p0;
%the different age groups in the economy
AGE=[1 2 3 4 5 6 7 8 9 10];
%the list of the different simulations according to the spending chosen to
%make it neat.
z1=Popsimu(Health0v100,T,IN);
z2=Popsimu(Health10v90,T,IN);
z3=Popsimu(Health20v80,T,IN);
z4=Popsimu(Health30v70,T,IN);
z5=Popsimu(Health40v60,T,IN);
z6=Popsimu(Health50v50,T,IN);
z7=Popsimu(Health60v40,T,IN);
z8=Popsimu(Health70v30,T,IN);
z9=Popsimu(Health80v20,T,IN);
z10=Popsimu(Health90v10,T,IN);
z11=Popsimu(Health100v0,T,IN);
% Create a figure that appears first in a figure as its run
    f = figure('Visible','off');
 %Subplot the Population growth according to 50v50 spending 
    positionVector1 = [0.5, 0.1, 0.4, 0.7];
subplot('Position',positionVector1)

    bar3(z6)
    title('UK population growth chart')
xlabel('Periods')
ylabel('age groups')
zlabel('Population(millions)')
%subplots the pie chart which displays the amount of spend in each sector.
positionVector2 = [0.1, 0.2, 0.3, 0.3];;
subplot('Position',positionVector2)
x=[0.5 0.5];
pie(x)
legend('Education','Healthcare')




  %Creates a slider which has 11 steps for which a different lesile matrix is assigned   
sld = uicontrol('Style', 'slider','min',0,'max',10,'Value',5,'Position', [380 0 120 20],'Callback', @plot,'SliderStep', [1/10 1]); %the @plot is the function of education and healthcare,
%creates a min and max text 
mintext = uicontrol('Style','text','Position',[325 0 50 20],'String','Education');
maxtext = uicontrol('Style','text','Position',[500 0 60 20],'String','Healthcare');

% Make figure visble after adding all components

%2015a friendly code
    %f.Visible = 'on';
    
%2014a friendly code
    set(f,'Visible','on');
   %a function that takes the value from the slider and plots the population growth according to the spending chosen 
function plot(sld,callbackdata);
       val =  get(sld,'Value');
       
%a string that shows the value from the slider
uicontrol('Style', 'text', 'String', num2str(val),'Position', [270 0 50 20]);
 %a loop that plots pie and bar chart according to the value which has an assigned spending lesile matrix.       
if val==5
    
    positionVector1 = [0.5, 0.1, 0.4, 0.7];
subplot('Position',positionVector1)

    bar3(z6)
    title('UK population growth chart')
xlabel('Periods')
ylabel('age groups')
zlabel('Population(millions)')
positionVector2 = [0.1, 0.2, 0.3, 0.3];;
subplot('Position',positionVector2)
x=[0.5 0.5];

pie(x)
legend('Education','Healthcare')
elseif val==0
    positionVector1 = [0.5, 0.1, 0.4, 0.7];
subplot('Position',positionVector1)
    bar3(z1)
    title('UK population growth chart')
xlabel('Periods')
ylabel('age groups')
zlabel('Population(millions)')
positionVector2 = [0.1, 0.2, 0.3, 0.3];;
subplot('Position',positionVector2)
x=[100];

pie(x)
legend('Education')
elseif val==1
    positionVector1 = [0.5, 0.1, 0.4, 0.7];
subplot('Position',positionVector1)
    bar3(z2)
    title('UK population growth chart')
xlabel('Periods')
ylabel('age groups')
zlabel('Population(millions)')
positionVector2 = [0.1, 0.2, 0.3, 0.3];;
subplot('Position',positionVector2)
x=[90 10];

pie(x)
legend('Education','Healthcare')
elseif val==2
    positionVector1 = [0.5, 0.1, 0.4, 0.7];
subplot('Position',positionVector1)
    bar3(z3)
    title('UK population growth chart')
xlabel('Periods')
ylabel('age groups')
zlabel('Population(millions)')
positionVector2 = [0.1, 0.2, 0.3, 0.3];;
subplot('Position',positionVector2)
x=[80 20];

pie(x)
legend('Education','Healthcare')
elseif val==3
    positionVector1 = [0.5, 0.1, 0.4, 0.7];
subplot('Position',positionVector1)
    bar3(z4)
    title('UK population growth chart')
xlabel('Periods')
ylabel('age groups')
zlabel('Population(millions)')
positionVector2 = [0.1, 0.2, 0.3, 0.3];;
subplot('Position',positionVector2)
x=[70 30];

pie(x)
legend('Education','Healthcare')
elseif val==4
    positionVector1 = [0.5, 0.1, 0.4, 0.7];
subplot('Position',positionVector1)
    bar3(z5)
    title('UK population growth chart')
xlabel('Periods')
ylabel('age groups')
zlabel('Population(millions)')
positionVector2 = [0.1, 0.2, 0.3, 0.3];;
subplot('Position',positionVector2)
x=[60 40];

pie(x)
legend('Education','Healthcare')
elseif val==6
    positionVector1 = [0.5, 0.1, 0.4, 0.7];
subplot('Position',positionVector1)
    bar3(z7)
    title('UK population growth chart')
xlabel('Periods')
ylabel('age groups')
zlabel('Population(millions)')
positionVector2 = [0.1, 0.2, 0.3, 0.3];;
subplot('Position',positionVector2)
x=[40 60];

pie(x)
legend('Education','Healthcare')
elseif val==7
    positionVector1 = [0.5, 0.1, 0.4, 0.7];
subplot('Position',positionVector1)
    bar3(z8)
    title('UK population growth chart')
xlabel('Periods')
ylabel('age groups')
zlabel('Population(millions)')
positionVector2 = [0.1, 0.2, 0.3, 0.3];;
subplot('Position',positionVector2)
x=[30 70];

pie(x)
legend('Education','Healthcare')
elseif val==8
    positionVector1 = [0.5, 0.1, 0.4, 0.7];
subplot('Position',positionVector1)
    bar3(z9)
    title('UK population growth chart')
xlabel('Periods')
ylabel('age groups')
zlabel('Population(millions)')
positionVector2 = [0.1, 0.2, 0.3, 0.3];;
subplot('Position',positionVector2)
x=[20 80];

pie(x)
legend('Education','Healthcare')
elseif val==9
    positionVector1 = [0.5, 0.1, 0.4, 0.7];
subplot('Position',positionVector1)
    bar3(z10)
    title('UK population growth chart')
xlabel('Periods')
ylabel('age groups')
zlabel('Population(millions)')
positionVector2 = [0.1, 0.2, 0.3, 0.3];;
subplot('Position',positionVector2)
x=[10 90];

pie(x)
legend('Education','Healthcare')
elseif val==10
    positionVector1 = [0.5, 0.1, 0.4, 0.7];
subplot('Position',positionVector1)
    bar3(z11)
    title('UK population growth chart')
xlabel('Periods')
ylabel('age groups')
zlabel('Population(millions)')
positionVector2 = [0.1, 0.2, 0.3, 0.3];;
subplot('Position',positionVector2)
x=[1];

pie(x)
legend('Healthcare')

    
end
    
end
 
end
