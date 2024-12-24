clear all 
close all
clc
M=5; %Cart Mass [Kg]
m=1; %Pendulum Mass [Kg]
L=2; %Pendulum Length [m]
g=9.81; %Gravitational acceleration [m/s^2] 
%Delta represents choice of linearization point
%Delta =1 upwards position
%Delta =-1 downwards position
Delta = 1; 
A = [0 , 1 , 0 , 0;
    (Delta*g*(m+M))/(M*L) , 0 , 0 , 0;
    0 , 0 , 0 , 1;
    (m*g/M) , 0 , 0 , 0];
B= [0;
    Delta/(M*L); 
    0; 
    1/M;
    ];
C= eye(4); 
D=0; 
Poles=eig(A)
%Section 2: Free Response
%K= [0,0,0,0]

%Section 3: Forced Response
%K = place(A,B,[-1,-3,-5.0,0])
%K = place(A,B,[-10,-30,-20.0,0])


Q = [3 0 0 0;
    0 1 0 0;
    0 0 2 0;
    0 0 0 1];
R = 0.0001;

K = lqr(A,B,Q,R)
Poles_after_control=eig(A-B*K)
tspan = 0:0.0005:7;
x0 = [ 0.3; 0;-1; 0];  % initial condition 
wr = [0; 0; 3; 0];      % reference position
u=@(X)-K*(X - wr);       % control law
[t,X] = ode45(@(t,X)Nonlinear_Pendulum(X,m,M,L,g,u(X)),tspan,x0);

 for k=1:75:length(t)
   graphpend_m(X(k,:),m,M,L);
 end
    subplot(4,1,2)
    plot(t,X(:,3),'r','LineWidth',2)
    xlabel('t [sec]')
    ylabel('x [m]')
    %xlim([-10 12])
    %xticks(-10:1:12)
    ylim([-4 4])
    yticks(-4:1:4)
    axis manual
    grid on
    subplot(4,1,3)
    plot(t,X(:,1),'k','LineWidth',2)
    xlabel('t [sec]')
    ylabel('Theta [rad]')
    %xlim([-10 12])
    %xticks(-10:1:12)
    ylim([-0.5 0.5])
    yticks(-0.5:0.1:0.5)
    axis manual
    grid on
   
    subplot(4,1,4)
    plot(t,-K*transpose(X),'k','LineWidth',2)
    xlabel('t [sec]')
    ylabel('U [N]')
    %xlim([-10 12])
    xticks(-10:1:12)
    %ylim([-40 40])
    %yticks(-40:6:40)
    axis manual
    grid on