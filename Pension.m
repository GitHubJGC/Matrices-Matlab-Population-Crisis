function [ TaxRev1 ] = Pension(p,TaxRev0)
%Calculates Pot and Cost in period i

% Takes current pension pot S, adds tax rev for pension use, tp.
%S = S+tp;

% Cost of pensions CP is based on factor of pop groups 8,9,10.
%pen=p(8:10)
%Cp=20*pen
%p = [8526771 ; 7557820 ; 8785158 ; 8268385 ; 9237335 ; 8009998 ; 7105642 ; 4457176 ; 2325484 ; 322983];

Cp = 50*(sum(p(8:10)));



% If pensions cannot be paid because negative pot call END script.
if TaxRev0 < 0 
    display('pensioncrisis')
    

%Else subtract pension costs from pot. Then add interest to
%remainder.
else 
    TaxRev1 = TaxRev0-Cp;
 %   S = S*1+r;
end

end
