function [ Cp,S ] = Pension( tp,P )
%Calculates Pot and Cost in period i

% Takes current pension pot S, adds tax rev for pension use, tp.
S = S+tp;

% Cost of pensions CP is based on factor of pop groups 8,9,10.
Cp = 20*(sum(P(8:10)));

% If pensions cannot be paid because negative pot call END script.
If Cp > S 
    pensioncrisis
    
%Else subtract pension costs from pot. Then add interest to
%remainder.
Else 
    S = S-Cp;
    S = S*1.05;
end

end
