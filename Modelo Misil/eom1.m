function sol = eom1(input)
%% inputs
U=input(1);
V=input(2);
W=input(3);
P=input(4);
Q=input(5);
R=input(6);
phi=input(7);
theta=input(8);
psi=input(9);
X=input(10);
Y=input(11);
Z=input(12);
L=input(13);
M=input(14);
N=input(15);
%% Misil genérico similar a Sidewander AIM-9
m = 85.3;   % masa
g = 9.81;   % gravedad
% Momentos inerciales
Ix = 0.468;
Iy = 90.8;
Iz = Iy;

%% Force equations
udot=1/m*(X-m*g*sin(theta))         -Q*W+R*V;
vdot=1/m*(Y+m*g*cos(theta)*sin(phi))-R*U+P*W;
wdot=1/m*(Z+m*g*cos(theta)*cos(phi))-P*V+Q*U;
%% Torque equations
pdot=L/Ix;
qdot=(M-R*P*(Ix-Iz))/Iy;
rdot=(N-P*Q*(Iy-Ix))/Iz;
%% Salidas

sol=[udot,vdot,wdot,pdot,qdot,rdot];

