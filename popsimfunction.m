function [X] = Popsim(P,T,IN)

%P is the population Leslie matrix,T is time\period and IN is the initial
%population matrix

n=length(IN);
X=zeros(n,t+1);

%set the initial distribution
X(:,1)=IN;
for j=1:t
    X(:,j+1) = P*X(:,j);
end

end
