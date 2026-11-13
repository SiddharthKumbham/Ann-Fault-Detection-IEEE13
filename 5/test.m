clc
clear all
warning off
load matlab.mat
t=[0,0,0,0,0;
    1,0,0,1,5;
    0,1,0,1,5;
    0,0,1,1,5;
    1,1,0,1,5;
    1,0,1,1,5;
    0,1,1,1,5;
    1,1,1,1,5;
    1,1,1,0,5;
    1,1,0,0,5;
    1,0,1,0,5;
    0,1,1,0,5]
str = "normal lga lgb lgc lgab lgac lgbc lgabc labc lab lac lbc"
str = split(str)
for i=1:length(str)
sim(str(i))
data(i,:)=[abs(iabc(1,:))]
target(i,:)=t(i,:)
end
data5=[data;data;data;data]
target5=[target;target;target;target]
filename = 'bus5.mat';
save(filename)


