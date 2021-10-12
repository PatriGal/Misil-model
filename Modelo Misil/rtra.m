function sol2 = rtra(input2)
%% inputs
U=input2(1);
V=input2(2);
W=input2(3);
phi=input2(4);
theta=input2(5);
psi=input2(6);

%% Rate of change of Translational Position
xdot=(cos(theta)*cos(psi))*U+(-cos(phi)*sin(psi)+sin(phi)*sin(theta)*cos(psi))*V+(sin(phi)*sin(psi)+cos(phi)*sin(theta)*cos(psi))*W;
ydot=(cos(theta)*sin(psi))*U+(cos(phi)*cos(psi)+sin(phi)*sin(theta)*sin(psi))*V+(-sin(phi)*cos(psi)+cos(phi)*sin(theta)*sin(psi))*W;
zdot=(-sin(theta))*U+(sin(phi)*cos(theta))*V+(cos(phi)*cos(theta))*W;
%% Salidas
sol2=[xdot,ydot,zdot];