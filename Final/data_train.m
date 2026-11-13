clc
clear all
warning off
load bus1.mat
load bus2.mat
load bus3.mat
load bus4.mat
load bus5.mat
load bus6.mat
load bus7.mat
load bus8.mat
load bus9.mat
load bus10.mat
load bus11.mat
load bus12.mat
input1=[data1;data2;data3;data4;data5;data6;data7;data8;data9;data10;data11;data12]
input=[input1;input1]
output1=[target1;target2;target3;target4;target5;target6;target7;target8;target9;target10;target11;target12;]
output=[output1;output1]
outputd=output(:,1:4)
outputl=output(:,5)
for i=1:length(output)
    if output(i,5)==1
        outputl(i,1)=6320;
    elseif output(i,5)==2
        outputl(i,1)=6330;
    elseif output(i,5)==3
        outputl(i,1)=6340;
    elseif output(i,5)==4
        outputl(i,1)=6450;
    elseif output(i,5)==5
        outputl(i,1)=6460;
    elseif output(i,5)==6
        outputl(i,1)=6710;
    elseif output(i,5)==7
        outputl(i,1)=6800;
    elseif output(i,5)==8
       outputl(i,1)=6920;
    elseif output(i,5)==9
        outputl(i,1)=6750;
    elseif output(i,5)==10
        outputl(i,1)=6840;
    elseif output(i,5)==11
        outputl(i,1)=6520;
    elseif output(i,5)==12
        outputl(i,1)=6110;
    else
        outputl(i,1)=0;
    end
 
end
outputl
