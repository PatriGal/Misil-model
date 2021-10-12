function sol1 = rang(input1)
%% inputs
P=input1(1);
Q=input1(2);
R=input1(3);
phi=input1(4);
theta=input1(5);
psi=input1(6);

%% Rate of change of Angular position
phidot=P+(Q*sin(phi)+R*cos(phi))*tan(theta);
thetadot=Q*cos(phi)-R*sin(phi);
psidot=(Q*sin(phi)+R*cos(phi))*sec(theta);
%% Salidas
sol1=[phidot,thetadot,psidot];