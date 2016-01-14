pt0 = sum(X(:,1));
ptn = sum(X(:,n+1));

q = zeros(10,2);

for az = 1:10
   q(az,1) = X(az,1)/pt0;
   q(az,2) = X(az,n+1)/ptn;
end
