clc
clear all
warning off
load matlab.mat
t=[0,0,0,0,0;
    1,0,0,1,10;
    0,1,0,1,10;
    0,0,1,1,10;
    1,1,0,1,10;
    1,0,1,1,10;
    0,1,1,1,10;
    1,1,1,1,10;
    1,1,1,0,10;
    1,1,0,0,10;
    1,0,1,0,10;
    0,1,1,0,10]
str = "normal lga lgb lgc lgab lgac lgbc lgabc labc lab lac lbc"
str = split(str)
for i=1:length(str)
sim(str(i))
data(i,:)=[abs(iabc(1,:))]
target(i,:)=t(i,:)
end
data10=[data;data;data;data]
target10=[target;target;target;target]
filename = 'bus10.mat';
save(filename)


