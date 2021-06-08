function [x1,y1,z1] = Diag2Esfera(X,Y)
    for k = 1:length(X) 
        a = RiemannRect(X(k),Y(k),0, 'rie'); %Proyeccion de cada par de puntos (x,y) 
        x1(k) = a(1); %Agregar al vector de puntos en x
        y1(k) = a(2); %Agregar al vector de puntos en y
        z1(k) = a(3); %Agregar al vector de puntos en z
    end
end