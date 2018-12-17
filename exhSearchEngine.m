
function [minWire, init] = exhSearchEngine(com, N, netlist )
q=1;
v=perms(com);
init=2000; % arbitray large numbers.
[x, y]=size(netlist);
for l=1:factorial(N)
    com=v(l,:);% this->only local so do not care
    p=1;
    pDist=0;
    while(p<=N)
        for i=1:x
            if(com(p)==netlist(i,1))
                dest=netlist(i,2);
                for k=1:N
                    if(dest==com(k))
                        dist=abs(k-p);
                        pDist=pDist+dist;
                    end
                end   
            end
        end
        p=p+1;
    end
    a=pDist;
    if(a<=init)
    init=a;
    minWire(q,:)=com; %% return Sequence
    q=q+1;
    end
end
end

