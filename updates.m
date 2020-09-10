function [outs,outt]=updates(s,t)
sn=s;
tn=t;
M=max([s,t]);
while (1)
    i=randi([1,length(s)]);
    j=randi([1,length(s)]);
    if s(i)==s(j) && i~=j
        tn(i)=M+1;
        tn(j)=t(j);
        tn(length(s)+1)=M+1;
        tn(length(s)+2)=M+1;
        sn(i)=s(i);
        sn(j)=s(j);
        sn(length(s)+1)=t(i);
        sn(length(s)+2)=t(j);
        break
    end
end
outs=sn;
outt=tn;
end