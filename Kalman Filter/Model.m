clear;
TMAX=500;
x=zeros(2,TMAX);
g=9.8;
m=1.0;
k=-1.0;
x(1,1)=0;
x(2,1)=0;
dt=0.01;
u=[0 1]';
for t=2:TMAX
    A=[[1 dt];[0 (1+(k/m)*dt) ]];
    B=[[1 0];[0 -g*dt]];
    x(:,t)=A*x(:,t-1)+B*u;
end
plot(x(1,:));
figure;
plot(x(2,:));
