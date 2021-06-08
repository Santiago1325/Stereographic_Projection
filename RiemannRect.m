function res = RiemannRect(x,y,z,op)
    %op = rie -> Rectangulares a Riemann
    %op = rect -> Riemann a Rectangulares
    switch op
        case "rie" 
            zs = x^2 + y^2; %Modulo de Z al cuadrado
            x1 = (2 * x) / (zs + 1);
            y1 = (2 * y) / (zs + 1);
            z1 = (zs - 1)    / (zs + 1);
            res = [x1,y1,z1];
        case "rect"
            x1 = x / (1 - z);
            y1 = y / (1 - z); 
            res = [x1,y1];
    end
end