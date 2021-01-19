function C = encode(A)
C=[];
for i=1:length(A)
    if A(i)=='a'
        B=[0 0 0 0 0];
    elseif A(i)=='b'
        B=[0 0 0 0 1];
    elseif A(i)=='c'
        B=[0 0 0 1 0];
    elseif A(i)=='d'
        B=[0 0 0 1 1];
    end
    B1=hamming(B);
    C=[C B1];
end
