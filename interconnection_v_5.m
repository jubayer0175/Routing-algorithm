clc;
close all
clear 

%Partition : 1
netlist=[1 2; 1 3; 1 4; 2 4; 2 5; 3 6; 4 5; 5 6];
N=6;
com=1:6;
[p1, int_p1]=exhSearchEngine(com,N,netlist);
%Partition: 2
netlist=[7 8; 7 9; 7 10; 7 11; 7 12; 8 10;8 13; 8 11; 9 12; 9 14; 10 11; 10 14;11 13; 11 12; 12 14; 13 14; 13 15; 14 15];
N=9;
com=7:15;
[p2, int_p2]=exhSearchEngine(com,N,netlist);
%Custom Optimization  (7,5) and (8,4),lets not waste time:
RoutedSeq=strcat(num2str(p2(1,:)),{' '},num2str(p1(22,:)))
Interconnect=int_p1+int_p2+3+1

%------------------function 
