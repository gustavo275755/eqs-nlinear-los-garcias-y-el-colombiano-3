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
    
    if norm(F(xn1),2)<=e1 
        break 
    end
    
    if norm(xn1-xn,2)<=e2 
        break 
    end
    
    if (norm((xn1-xn),2)/(norm(xn1,2)))<=e3 
        break 
    end
    
     xn=xn1;
end
