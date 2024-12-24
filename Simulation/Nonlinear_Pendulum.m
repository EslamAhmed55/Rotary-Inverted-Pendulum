function NLPend = Nonlinear_Pendulum (X,m,M,L,g,u)
S_theta = sin(X(1));
C_theta = cos(X(1));
NLPend(1,1) = X(2);
NLPend(2,1) = (((m+M)*m*g*L*S_theta)+(m*m*L*L*X(4)*X(4)*C_theta*S_theta)+(m*L*C_theta*u)) /(m*L*L*(M+m*(1-C_theta^2)));
NLPend(3,1) = X(4);
NLPend(4,1) = ((-m*g*S_theta*C_theta)+(m*L*X(4)*X(4)*S_theta)+u) /(M+(m*(1-C_theta^2)));