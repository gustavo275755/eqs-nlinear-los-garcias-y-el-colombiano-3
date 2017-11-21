# Solução de Sistemas de Equações Lineares

Neste execício deve ser implementado o algoritmo de Newton-Raphson para solução de sistemas de equações não-lineares.

Assume-se que o sistema de equações está no formato F(x)=0 e que J(x) é a matriz jacobiana da função F(x).

O formato da chamada do algoritmo é o seguinte:
xn1=mat_newton_raphson(F,J,xn,N,e1,e2,e3)

Neste algoritmos xn é a condição inicial e os parâmetros e1, e2 e e3 são referentes aos critérios de parada.
