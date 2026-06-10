Ts = 1e-4;
omega = 2*pi*50;           % or your nominal
a22 = exp(-1j*2*omega*Ts);

A = [1 0; 0 a22];
C = [1 1];

sigma_s = 5;               % volts (pick)
R = sigma_s^2;             % scalar (complex noise variance)
Q = diag([0.01*R, 0.05*R]); % tune

% Solve discrete Riccati for steady-state K
% Use dare to get P, then K = A*P*C'/(C*P*C'+R)
[P,~,~] = dare(A', C', Q, R);
P = P'; % because dare returns P for transposed system
K = (A*P*C')/(C*P*C' + R);

k1 = K(1);
k2 = K(2);
