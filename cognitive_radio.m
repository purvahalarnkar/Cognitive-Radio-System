clc
clear all
close all

t=(0:0.00001:0.001);
%carrier frequencies
%user message/datafrequency is 1000
Fc1=1000;
Fc2=Fc1*2;
Fc3=Fc1*3;
Fc4=Fc1*4;
Fc5=Fc1*5;
%sampling frequency
Fs=12000;

y1=1;
y2=0; y3=0; y4=0; y5=0;
y=0; Y=0;
x1 = cos(2*pi*1000*t); %every users baseband data signal

In=input('Do you want to enter first primary user Y/N: ','s')
if(In=='Y'||In=='y')
    y1=ammod(x1,Fc1,Fs);
end

In=input('Do you want to enter second primary user Y/N: ')
if(In=='Y'||In=='y')
    y2=ammod(x1,Fc2,Fs);
end

In=input('Do you want to enter third primary user Y/N: ')
if(In=='Y'||In=='y')
    y3=ammod(x1,Fc3,Fs);
end

In=input('Do you want to enter fourth primary user Y/N: ')
if(In=='Y'||In=='y')
    y4=ammod(x1,Fc4,Fs);
end

In=input('Do you want to enter fifth primary user Y/N: ')
if(In=='Y'||In=='y')
    y5=ammod(x1,Fc5,Fs);
end