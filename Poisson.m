clc, clear, close all


%POISSON CODE

possPMF(2,1.8)
possCDF(2,1.8)

function possPMF = possPMF(k,l)
    e = exp(1);
    possPMF = ((l^k)*(e^(-l)))/factorial(k);
end


function possCDF = possCDF(x,l)
    e = exp(1);
    V = uint32(1):uint32(x);
    values_array=[];

    for k= 1:1:x
        values_array(k)= (((l^k)*(e^(-l)))/factorial(k))*100;
    end
    
        bar(V,values_array);
        title('Percentage of occurance in intended trial');
        xlabel('Intended Trials');
        ylabel('Percentage (%)');
end
