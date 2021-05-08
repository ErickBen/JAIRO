clc,clear all, close all;
t=[-1:0.01:6];
Xa=0.*((t>0)|(t>4))+2.*((t>0)&(t<1))+1.*((t>1)&(t<2))+(t-1).*((t>2)&(t<3))+2.*((t>3)&(t<4));
Xb=0.*((t<0)|(t>5))+t.*((t>0)&(t<2))+(4-t).*((t>2)&(t<3))+(7-2*t).*((t>3)&(t<4))+(t-5).*((t>4)&(t<5));
hold on;
subplot(2,1,1),plot(t,Xa,'k--','LineWidth',0.1);
title('Xa(t)');
ylabel('Xa');
xlabel('t');
legend('Xa');
hold off;

hold on;
subplot(2,1,2),plot(t,Xb,'r--','LineWidth',0.1);
title('Xb(t)')
ylabel('xb');
xlabel('t');
legend('Xb');
hold off;