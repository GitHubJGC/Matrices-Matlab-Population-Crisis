function [X] = Popsimu(P,T,IN)
%P is the population laisile matrix,T is time\period and IN is the initial
%population matrix
n=length(IN);
X=zeros(n,T+1);
%set the initial distribution
X(:,1)=IN;
for j=1:T
    X(:,j+1) = P*X(:,j);
end

end
