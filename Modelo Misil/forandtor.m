function sol3 = forandtor(input3)
% inputs
U=input3(1);        % velocidad eje x
V=input3(2);        % velocidad eje y
W=input3(3);        % velocidad eje z
P=input3(4);        % momento eje x
Q=input3(5);        % momento eje y
R=input3(6);        % momento eje z
ro=input3(7);    % densidad
deltae=input3(8);   % elevador
deltar=input3(9);   % timon de guiñada
deltaa=input3(10);  % alerones
pgas=input3(11);    % palanca de gases

modV= (U^2+V^2+W^2)^0.5;    % módulo de la velocidad
%% Parametros para Misil Sidewander AIM-9
fullt=600;                  % Empuje máximo
b = 0.353;                  % Envergadura del ala
Sfront=0.0127;              % Superficie frontal
Slat=1.2049;                % Superficie lateral
Swing=0.4525;               % Superficie alar
Sstab=0.45;                 % Superficie estabilizadores
CDfront=0.5;                % Coef. de resistencia frontal
CDlat=0.75;                 % Coef. de resistencia lateral
alpha = atan(W/(U+10^-12)); % Ángulo de ataque 
CL    = 2*pi*alpha;         % función del Coef. de sustentación
CLa=1;                      % Potencia de control de alabeo
CMdeltae=1;                 % Potencia de control de longitudinal
CNdeltar=1;                 % Potencia de control de direccional

CLp=5;          % CM que infringe la vel.ang. "x" sobre el mom. "x"
CMw=10;         % CM que infringe la vel.lin. "z" sobre el mom. "y"
CNv=10;         % CM que infringe la vel.lin. "y" sobre el mom. "z"

% Coeficientes de fricción
CMfq=1;         % CM que infringe la vel.ang. "y" sobre el mom. "y"
CNfr=1;         % CM que infringe la vel.ang. "z" sobre el mom. "z"

% Force and Torques
X=(-0.5*ro*modV*Sfront*CDfront*U) + pgas*fullt;
Y=(-0.5*ro*modV*Slat  *CDlat  *V);
Z=+(0.5*ro*modV*Slat  *CDlat  *W) - (0.5*ro*(modV^2)*Swing*CL);
L=-0.5*ro*modV^2*Sstab*b*(CLp*P+CLa*deltaa);
M=-0.5*ro*modV*Swing*b*(CMw*W+CMfq*Q*modV-CMdeltae*modV*deltae);
N=-0.5*ro*modV*Swing*b*(CNv*V*+CNfr*R*modV+CNdeltar*modV*deltar);
%% Salidas
sol3=[X,Y,Z,L,M,N];