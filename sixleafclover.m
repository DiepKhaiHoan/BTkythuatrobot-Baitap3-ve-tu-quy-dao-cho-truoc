l1=50; l2=40;
syms t pi;

for t=0:0.02:2*pi
    
    x=40+(1+cos(6*t))*cos(t);
    y=40+(1+cos(6*t))*sin(t);
    
    c2=(x^2+y^2-l1^2-l2^2)/(2*l1*l2);
    s2=sqrt(abs(1-c2^2));
    t2=atan2(s2,c2);
    
    c1=x*(l1+l2*c2)+y*l2*s2;
    s1=y*(l1+l2*c2)-x*l2*s2;
    t1=atan2(s1,c1);
    
    px=l1*cos(t1)+l2*cos(t1+t2);
    py=l1*sin(t1)+l2*sin(t1+t2);

    subplot(2,1,1);
    plot(t,t1*180/pi,'r*',t,t2*180/pi,'bo');
    pause(0.01);
    xlabel('t');
    ylabel('Rotation');
    hold on
    
    subplot(2,1,2);
    plot(px,py,'g*');
    xlabel('x(cm)');
    ylabel('y(cm)');    
    pause(0.01);
    hold on
end

subplot(2,1,1);
legend('t1','t2');
subplot(2,1,2);
title('SIX-LEAF-CLOVER');


    
    

