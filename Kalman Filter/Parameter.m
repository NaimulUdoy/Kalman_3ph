clear;
dt=0.01;
Ts=dt;
g=9.8;
m=1.0;
k=-1.0;
MNstd=0.4;
MNV=MNstd*MNstd;
PNstd=0.02;
PNV=PNstd*PNstd;
Q=eye(2)*PNV;
R=eye(2)*MNV;
A=[[1 dt];[0 (1+(k/m)*dt) ]];
B=[[1 0];[0 -g*dt]];
C=eye(2);
D=0;

