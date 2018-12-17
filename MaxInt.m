function [ minIntSeq, h] = MaxInt(com,N,cntMatirx)
v=perms(com);
l=1;
[x, y]=size(cntMatirx); 
for l=1:factorial(N)
    com=v(l,:);
    p=1;
    while(p<=N)
        for i=1:x
            if(com(p)==cntMatirx(i,1))
                dest=cntMatirx(i,2);
                for k=1:N
                    if(dest==com(k))
                        dist(i)=abs(k-p); 
                    end
                end
            end
        end
        p=p+1;
    end
    maxint(l)=max(dist);
end
j=1;
% sort minimum combination;
for i=1:length(maxint)
       if(min(maxint)== maxint(i))
           minIntSeq(j,:)=v(i,:);
           j=j+1;
       end
end

h=min(maxint);
end

