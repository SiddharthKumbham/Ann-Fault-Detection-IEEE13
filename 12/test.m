clc
clear all
warning off
load matlab.mat
t=[0,0,0,0,0;
    1,0,0,1,12;
    0,1,0,1,12;
    0,0,1,1,12;
    1,1,0,1,12;
    1,0,1,1,12;
    0,1,1,1,12;
    1,1,1,1,12;
    1,1,1,0,12;
    1,1,0,0,12;
    1,0,1,0,12;
    0,1,1,0,12]
str = "normal lga lgb lgc lgab lgac lgbc lgabc labc lab lac lbc"
str = split(str)
for i=1:length(str)
sim(str(i))
data(i,:)=[abs(iabc(1,:))]
target(i,:)=t(i,:)
end
data12=[data;data;data;data]
target12=[target;target;target;target]
filename = 'bus12.mat';
save(filename)


