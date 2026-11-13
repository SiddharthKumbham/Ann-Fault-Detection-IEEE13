clc
clear all
warning off
load matlab.mat
t=[0,0,0,0,0;
    1,0,0,1,9;
    0,1,0,1,9;
    0,0,1,1,9;
    1,1,0,1,9;
    1,0,1,1,9;
    0,1,1,1,9;
    1,1,1,1,9;
    1,1,1,0,9;
    1,1,0,0,9;
    1,0,1,0,9;
    0,1,1,0,9]
str = "normal lga lgb lgc lgab lgac lgbc lgabc labc lab lac lbc"
str = split(str)
for i=1:length(str)
sim(str(i))
data(i,:)=[abs(iabc(1,:))]
target(i,:)=t(i,:)
end
data9=[data;data;data;data]
target9=[target;target;target;target]
filename = 'bus9.mat';
save(filename)


