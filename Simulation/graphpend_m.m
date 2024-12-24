function graphpend_m(st_vec,m,M,L)
%Draw Pendulum cart with graphs: 
%Extract x , theta from state vector 
theta = st_vec(1);
x = st_vec(3);

%Dimensions
Box_W = 2;
Box_H =0.5*Box_W;
m_r = 0.2*Box_W;
%Positions:
Cart_X=x;
Cart_Y=0;
Pend_X=Cart_X - (L*sin(theta));
Pend_Y= L*cos(theta);

%Create Plot:
subplot(4,1,1);
plot([-10,10],[0 0],'r','LineWidth',2)
%Create X axis 
hold on
grid on
%axis ([-5 10 -2 6])
axis equal 

xlim([-10 12])
xticks(-10:1:12)
ylim([-2 4])
yticks(-2:1:4)
axis manual
%Draw Cart: 
rectangle('Position',[Cart_X-Box_W/2,Cart_Y-Box_H/2,Box_W,Box_H],'Curvature',0.01,'LineWidth',3)
%Draw Pendulum ball
viscircles([Pend_X,Pend_Y],m_r,'color','black','LineWidth',2);
%Draw Pendulum Arm
plot([Cart_X,Pend_X],[Cart_Y, Pend_Y],'k','LineWidth',3.5);
drawnow,hold off 



