function [fun]=Binarization(Im)

g=imhist(Im);

BmaxI=0;
BminI=0;

for i=1:255
    if (g(i)~=0)
        BmaxI=(i);
    end
end 

for i=1:255
    if (g(i)~=0)
        BminI=(i);
        break;
    end
end 


dB=round(abs(BmaxI-BminI)/20);
i=1;


Bn=BminI+dB;

MinMax=Disper(g,BminI,BmaxI);


while(Bn<BmaxI)  
    a=Disper(g,BminI,Bn);
    b=Disper(g,Bn+1,BmaxI);
    k(i)= 1. - (a+b)/MinMax;
    i=i+1;
    Bn=Bn+dB; 
end

Bpo=max(k);

fun=zeros(size(Im,1),size(Im,2));

for i=1:size(Im,1)
    for j=1:size(Im,2)
        if Im(i,j)>Bpo
            fun(i,j)=1;
        end
    end
end
end

