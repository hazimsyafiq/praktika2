function E = demod(F)
for i=1:2:length(F)
    if F(i)==-2.5
        E(i:i+1)=[0 0];
    elseif F(i)==-0.833
        E(i:i+1)=[0 1];
    elseif F(i)==0.833
        E(i:i+1)=[1 1];
    else
        E(i:i+1)=[1 0];
    end;
end;
