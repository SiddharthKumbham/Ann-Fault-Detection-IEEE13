clc
clear all
warning off
load matlab.mat
t=[0,0,0,0,0;
    1,0,0,1,3;
    0,1,0,1,3;
    0,0,1,1,3;
    1,1,0,1,3;
    1,0,1,1,3;
    0,1,1,1,3;
    1,1,1,1,3;
    1,1,1,0,3;
    1,1,0,0,3;
    1,0,1,0,3;
    0,1,1,0,3]
str = "normal lga lgb lgc lgab lgac lgbc lgabc labc lab lac lbc"
str = split(str)
for i=1:length(str)
sim(str(i))
data(i,:)=[abs(iabc(1,:))]
target(i,:)=t(i,:)
end
data3=[data;data;data;data]
target3=[target;target;target;target]
filename = 'bus3.mat';
save(filename)


