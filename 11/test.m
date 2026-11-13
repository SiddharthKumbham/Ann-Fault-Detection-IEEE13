clc
clear all
warning off
load matlab.mat
t=[0,0,0,0,0;
    1,0,0,1,11;
    0,1,0,1,11;
    0,0,1,1,11;
    1,1,0,1,11;
    1,0,1,1,11;
    0,1,1,1,11;
    1,1,1,1,11;
    1,1,1,0,11;
    1,1,0,0,11;
    1,0,1,0,11;
    0,1,1,0,11]
str = "normal lga lgb lgc lgab lgac lgbc lgabc labc lab lac lbc"
str = split(str)
for i=1:length(str)
sim(str(i))
data(i,:)=[abs(iabc(1,:))]
target(i,:)=t(i,:)
end
data11=[data;data;data;data]
target11=[target;target;target;target]
filename = 'bus11.mat';
save(filename)


