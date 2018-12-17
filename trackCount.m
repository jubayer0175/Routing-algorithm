  %Track_calculator
clc
close all
clear


nets=[1 2; 1 4; 2 3; 2 4]

%left hand side must  be small

% bibary connection matrix.

N=4; % Number of nodes

[x,y]=size(nets);

cont=0;
for i=1:x
    for j=1:x
        if(i ~= j)
            if(nets(i,1)>=nets(j,2))
               cont=cont+1; 
            end 
        end
    end     
    
end

  
    
%on the right

 
 