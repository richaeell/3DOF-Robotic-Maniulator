function senalControl = Controller(in)

qr   = [in(1);  in(2);  in(3)];
q    = [in(4);  in(5);  in(6)];
qpr  = [in(7);  in(8);  in(9)];
qp   = [in(10); in(11); in(12)];
qppr = [in(13); in(14); in(15)];

t = in(16);

Kp = diag([102234.953799	419274.400523	21664.430747]);
Ki = diag([Kp(1,1)/7.119338	Kp(2,2)/93.113743	Kp(3,3)/11.026393]);
Kd = diag([Kp(1,1)*0.040615	Kp(2,2)*0.040585	Kp(3,3)*0.040984]);

persistent ek_i ek_1
Ts = 0.001;
% Errores a cero
if(t<1e-8)
    ek_i = [0;0;0];     % Error integral
    ek_1 = [0;0;0];     % Error intante k-1
    senalControl = [0;0;0];
else

% Calculo de errores proporcional (Parte proporcional)
ek = qr-q;

% Calculo del error derivativo (Parte derivativa)
epk = qpr-qp;

% Calculo del error integral (Parte integral) (Metodo trapezoidal)
ek_i = ek_i + (Ts/2)*(ek+ek_1);

% Cálculo de la señal de control incremental generada por el controlador C(z)
Imk = Kp*ek + Kd*epk + Ki*ek_i;

% Actualizamos error del instante k-1
ek_1 = ek;

senalControl = Imk;
disp(t);
end