function disp=Disper(g,BminI,BmaxI)
    sum=0.;
    M=0.;
    disp=0.;  


    for ar=BminI:BmaxI
        for j=1:g(ar)
            M=M+(double(ar)-1)/255.;
            sum=sum+1;
        end
    end
    
   
    M=M/sum;

    
    for ar=BminI:BmaxI
        for j=1:g(ar)
            disp=disp+((double(ar)-1)/255.-M)^2;
        end
    end
    
   
    disp=disp/(sum-1);

    
end