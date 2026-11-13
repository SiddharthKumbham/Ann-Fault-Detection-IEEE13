clc
clear all
warning off
load matlab.mat
t=[0,0,0,0,0;
    1,0,0,1,6;
    0,1,0,1,6;
    0,0,1,1,6;
    1,1,0,1,6;
    1,0,1,1,6;
    0,1,1,1,6;
    1,1,1,1,6;
    1,1,1,0,6;
    1,1,0,0,6;
    1,0,1,0,6;
    0,1,1,0,6]
str = "normal lga lgb lgc lgab lgac lgbc lgabc labc lab lac lbc"
str = split(str)
for i=1:length(str)
sim(str(i))
data(i,:)=[abs(iabc(1,:))]
target(i,:)=t(i,:)
end
data6=[data;data;data;data]
target6=[target;target;target;target]
filename = 'bus6.mat';
save(filename)


