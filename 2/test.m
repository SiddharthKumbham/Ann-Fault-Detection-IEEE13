clc
clear all
warning off
load matlab.mat
t=[0,0,0,0,0;
    1,0,0,1,2;
    0,1,0,1,2;
    0,0,1,1,2;
    1,1,0,1,2;
    1,0,1,1,2;
    0,1,1,1,2;
    1,1,1,1,2;
    1,1,1,0,2;
    1,1,0,0,2;
    1,0,1,0,2;
    0,1,1,0,2]
str = "normal lga lgb lgc lgab lgac lgbc lgabc labc lab lac lbc"
str = split(str)
for i=1:length(str)
sim(str(i))
data(i,:)=[abs(iabc(1,:))]
target(i,:)=t(i,:)
end
data2=[data;data;data;data]
target2=[target;target;target;target]
filename = 'bus2.mat';
save(filename)


