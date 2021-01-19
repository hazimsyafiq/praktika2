function B1 = hamming(B)
B1=[0 B(1) B];
for i=length(B1):(-1):4
    B1(i+1)=B1(i);
end;
for i=length(B1):(-1):8
    B1(i+1)=B1(i);
end;
B1(1)=xor(xor(B(1),B(2)),xor(B(4),B(5)));
B1(2)=xor(xor(B(1),B(3)),B(4));
B1(4)=xor(xor(B(2),B(3)),B(4));
B1(8)=B(5);
