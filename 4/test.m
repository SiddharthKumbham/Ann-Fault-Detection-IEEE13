clc
clear all
warning off
load matlab.mat
t=[0,0,0,0,0;
    1,0,0,1,4;
    0,1,0,1,4;
    0,0,1,1,4;
    1,1,0,1,4;
    1,0,1,1,4;
    0,1,1,1,4;
    1,1,1,1,4;
    1,1,1,0,4;
    1,1,0,0,4;
    1,0,1,0,4;
    0,1,1,0,4]
str = "normal lga lgb lgc lgab lgac lgbc lgabc labc lab lac lbc"
str = split(str)
for i=1:length(str)
sim(str(i))
data(i,:)=[abs(iabc(1,:))]
target(i,:)=t(i,:)
end
data4=[data;data;data;data]
target4=[target;target;target;target]
filename = 'bus4.mat';
save(filename)


