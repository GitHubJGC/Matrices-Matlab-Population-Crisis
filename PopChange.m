function [X1] = Popsim(p,HC,E,j,X)

%HC is the population Leslie matrix,n is time\period and p0 is the initial
%population matrix

%set the initial distribution
%X(:,1)= p;

%for j = 1:n
 %   WP = X(:,j)*E;
  %  X(:,j+1) = HC*X(:,j);
%end

%WP = X(:,j)*E;
WP=X(:,j)*E;
X(:,j+1) = HC*X(:,j);

X1 = X;

end
