%forandtorq


% inputs
U=20;      % velocidad eje x
V=25;        % velocidad eje y
W=15;       % velocidad eje z
P=13;        % momento eje x
Q=10;        % momento eje y
R=9;        % momento eje z
ro=13;  % densidad
deltae=0.1;  % elevador
deltar=0;   % timon de guiñada
deltaa=0;  % alerones
pgas=1;    % palanca de gases

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

%------------------------------------------------------------------------

%EOM

%% inputs
phi=20;
theta=15;
psi=10;
X=14;
Y=24;
Z=31;
L=10;
M=13;
N=16;
%% Misil genérico similar a Sidewander AIM-9
m = 85.3;   % masa
g = 9.81;   % gravedad
% Momentos inerciales
Ix = 0.468;
Iy = 90.8;
Iz = Iy;

Hola mundo
