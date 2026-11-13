clc
clear all
warning off
load matlab.mat
t=[0,0,0,0,0;
    1,0,0,1,8;
    0,1,0,1,8;
    0,0,1,1,8;
    1,1,0,1,8;
    1,0,1,1,8;
    0,1,1,1,8;
    1,1,1,1,8;
    1,1,1,0,8;
    1,1,0,0,8;
    1,0,1,0,8;
    0,1,1,0,8]
str = "normal lga lgb lgc lgab lgac lgbc lgabc labc lab lac lbc"
str = split(str)
for i=1:length(str)
sim(str(i))
data(i,:)=[abs(iabc(1,:))]
target(i,:)=t(i,:)
end
data8=[data;data;data;data]
target8=[target;target;target;target]
filename = 'bus8.mat';
save(filename)


