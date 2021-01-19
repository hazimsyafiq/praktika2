function [t, s] = mod2(D)
A1=-2.5;
A2=-0.833;
A3=0.833;
A4=2.5;
k=0;
d=0.02;
n=length(D);
if mod(n,2)~=0
    D(n+1)=0;
end;
for i=1:2:length(D)
    if (D(i)==0) & (D(i+1)==0)
        for j1=1:2
            j=j1+(i-1);
            t(j)=d*(j1-1)+d*k;
            s(j)=A1;
        end;
        k=k+1;
    elseif (D(i)==0) & (D(i+1)==1)
        for j1=1:2
            j=j1+(i-1);
            t(j)=d*(j1-1)+d*k;
            s(j)=A2;
        end;
        k=k+1;
    elseif (D(i)==1) & (D(i+1)==1)
        for j1=1:2
            j=j1+(i-1);
            t(j)=d*(j1-1)+d*k;
            s(j)=A3;
        end;
        k=k+1;
    else
        for j1=1:2
            j=j1+(i-1);
            t(j)=d*(j1-1)+d*k;
            s(j)=A4;
        end;
        k=k+1;
    end;
end;
