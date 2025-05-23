function w=RIM2(n,p)
w=[];
for i=1:n
    w=[w Q1((i/n),p)-Q1(((i-1)/n),p)];
end
    function y=Q1(x,p)
        y=1-exp(-p*x);
    end
end