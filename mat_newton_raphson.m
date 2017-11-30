function xn1=mat_newton_raphson(F,J,xn,N,e1,e2,e3)
% Metodo de Newton Raphson
%
% xn1=mat_newton_raphson(F,J,xn,N,e1,e2,e3)
for i=1:N
     h=-J(xn)\F(xn);
     xn1=xn+h;
     %Criterios de parada
    if isnan(xn1)
        xn1=xn;
        return;
    end
    
    if abs(F(xn1))<=e1 
        break 
    end
    
    if abs(xn1-xn)<e2 
        break 
    end
    
    if abs((xn1-xn)/xn1)<e3 
        break 
    end
    
     xn=xn1;
end
