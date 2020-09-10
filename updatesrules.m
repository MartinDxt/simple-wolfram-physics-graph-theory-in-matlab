function [outs,outt]=updatesrules(s,t,r)

fn(1)=length(r{1});
fn(2)=length(r{2});

for i=1:fn(1)
    in(i)=length(r{1}{i});
end

for i=1:fn(2)
    out(i)=length(r{2}{i});
end

% M_in=0;
% for i=1:fn(1)
% M_in(i)=max(r{1}{i}{:});
% end

n_ind=in-1


sn=s;
tn=t;
M=max([s,t]);



while (1)
    for i=1:fn(1)
        for j=1:n_ind(i)
            ind{i}{j}=randi([1,length(s)]);
        end
    end
    flag=1;
    for i=1:fn(1)
        for j=1:n_ind(i)-1
            if t(ind{i}{j})==s(ind{i}{j+1})
                flag=flag&1
            else
                flag=flag&0
            end
        end
    end
    if flag==1
        % aggiungere
        
        
        
        
        for i=1:fn(1)
            for j=1:n_ind(i)
                % cancellare da fare aggiungere a lista da ordinare e
                % scorrere all indietro
                sn(ind{i}{j})=[]
                tn(ind{i}{j})=[]
            end
        end
    end
end
outs=sn;
outt=tn;
end















