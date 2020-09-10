clc
close all
clear all

s=[1 1]
t=[1 1]

for i=1:2000
    i
    [s,t]=updates(s,t);
    if mod(i,10)==0
        G= graph (s,t);
        plot(G)
        
        drawnow
    end
end
