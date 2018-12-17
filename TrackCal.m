function Track = TrackCal(nets,N)
% I just considered only two-track overlap. The code is written such a way 
%that it can cover three to four-track as well. A binary connection matrix
%is formed to correlate and optimize track overlap. For example, say a net 
%is connected between [ 1 4] in a 6-node circuit, it would form a wire that
%is [1 11100 ]. Similarly, all nets have been converted to rows of a binary
%matrix and run through an overlap calculation loop.
[x, y]=size(nets);
BinaryMatrix=zeros(x,N);

for i=1:x
    for j=1:y
        BinaryMatrix(i,nets(i,j))=1; 
    end 
end
for i=1:x
    k=1;
    for j=1:N
        if(BinaryMatrix(i,j)==1)
            p(k)=j;
            k=k+1;
        end        
    end
    BinaryMatirx(i,p(1):p(2))=1;
end
cont=0;
for i=1:x
    for j=1:x
        if(j>i)
        str=BinaryMatirx(i,:)+BinaryMatirx(j,:);
        l=0;
        for k=1:length(str)
            if(str(k)==2)
                l=l+1;
            end
        end
        if (l==1)
            cont=cont+1; % 2 wire overlap.
        end    
        
        end
    end
end
Track=x-ceil(cont/2);
end

