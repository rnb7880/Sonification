matrix=[local;RR]
x=zeros(1,10000);
for k=1:24
    if local(k)>0
        x(k)=RR
        
    end
    
end
%okay this is what I want to do. I want to create a matrix that has x
%values values( value given by grey bar...) that are the SAME as the
%real-time seconds... so should go from 1-3600 for and hour long sample. I
%want the Y values to all be zeros and when th