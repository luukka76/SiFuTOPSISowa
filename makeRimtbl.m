
a=[0.00001 0.1 0.5 2 10 1000];
we=zeros(length(a));
for i=1:length(a)
    we(i)=Rim1(5,a(i))';
end
we