function D = decode(A)
D='';
k=0;
n=length(A);
if mod(n,9)~=0
    A(end)=[];
end;

for i=1:9:length(A)
    B=[];
    B=A(i:i+8);
    C=check(B);
    k=k+1;
    
    if C==[0 0 0 0 0]
        D(k)='a';
    elseif C==[0 0 0 0 1]
        D(k)='b';
    elseif C==[0 0 0 1 0]
        D(k)='c';
    elseif C==[0 0 0 1 1]
        D(k)='d';
    end;
end;
