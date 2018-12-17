%MaxIntConnectMinimization
clc
close all
clear
netlist=[1 2; 1 3; 1 4; 2 4; 2 5; 3 6; 4 5; 5 6];
N=6;
com=1:6;
[minIntSeq_p1, maxLength_p1] = MaxInt(com,N,netlist);
netlist=[7 8; 7 9; 7 10; 7 11; 7 12; 8 10;8 13; 8 11; 9 12; 9 14; 10 11; 10 14;11 13; 11 12; 12 14; 13 14; 13 15; 14 15];
N=9;
com=7:15;
disp('Calculation running.............')
[minIntSeq_p2, maxLength_p2] = MaxInt(com,N,netlist);
%manual optimization:
disp('Maximum interconnect length optimized sequence: ')
disp(strcat(num2str(minIntSeq_p2(1,:)), {' '},num2str(minIntSeq_p1(14,:))))
disp(strcat('Maximum interconnect length: ',num2str(maxLength_p2)))

%--- function







