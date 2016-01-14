%promptSplit = 'What percentage do you wish to spend on Healthcare? The rest will be spent on Education. The amounts will be rounded to the nearest 10...    ';
%Round = input(promptSplit);

flagsplit = 1;
while flagsplit ~= 0
    
    Round = input('Choose percentage spending on Healthcare. Rest will be spent on Education. Rounded to nearest 10.');
    
if Round <= 100 && Round >= 0; 
    
     HealthP = roundn(Round,1);
    EducP = 100-HealthP;
    HMRS = HealthP + 1;
    HMRE = HealthP + 10;
    EMR = (EducP/10)+1;
   
    EC = EducM(EMR,:);
    HC = HealthM(HMRS:HMRE,:);
    
    flagsplit=0; 

else

   
    
    
    display 'Invalid selection, Please choose a percentage level between 0 and 100 for healthcare'
flagsplit = 1;
%promptSplit = 'What percentage do you wish to spend on Healthcare? The rest will be spent on Education. The amounts will be rounded to the nearest 10...    ';
%Round = input(promptSplit);
    
end





%if Round ~= 0:100
 %   display 'must be a number from 0 to 100'
  


    
end
