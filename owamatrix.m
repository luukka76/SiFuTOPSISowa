function h=owamatrix(A,w)
h=zeros(size(A,1));
for i=1:size(A,1)
    apu=A(i,:);
    h(i)=sum(sort(apu,2,'descend').*w);
end
