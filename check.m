function B = check(B)

B1=[];
B1(1)=xor(xor(xor(B(1),B(3)),xor(B(5),B(7))),B(9));
B1(2)=xor(xor(B(2),B(3)),xor(B(6),B(7)));
B1(3)=xor(xor(B(4),B(5)),xor(B(6),B(7)));
B1(4)=xor(B(8),B(9));

A='';
for i=4:(-1):1
    A(i)=int2str(B1(i));
end;
errBit=bin2dec(A);

if errBit~=0
    B(errBit)=not(B(errBit));
end;

for i=3:(-1):0
    p=power(2,i);
    B(p)=[];
end;
