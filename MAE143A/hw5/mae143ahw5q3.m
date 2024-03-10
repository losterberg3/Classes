%question 3a
tt=[0:0.001:5];
figure;
hold on
title('zoh')
plot(tt,sin(pi*tt),'--')
h=0.1;
%you can make h a range of values, like 0.1,0.2,0.4, etc.
tk=[0:h:5];
plot(tk,sin(pi*tk),'x')
stairs(tk,sin(pi*tk),'blue')
hold off
%question 3b
figure;
hold on
title('foh')
plot(tt,sin(pi*tt),'--')
plot(tk,sin(pi*tk),'x')
%%%
h1=0.01;
%%%this is our time between points we plot on our interpolation
t1=[0:h1:5];
tk=[0:h:5];
D=h;
yk=sin(pi*tk);
%%%
syms t
f=sym(zeros(1,length(tk)+1));
for i=2:length(tk)
    f(i)=yk(i)+((yk(i)-yk(i-1))/h)*(t-((i-2)*h));
end         
r=1;
ff=zeros(1,length(t1));
for i=1:length(t1)
     if (i-1)*h1<h
         w(t)=f(r+1);
         ff(i)=double(w(t1(i)));
     else
         w(t)=f(r+2);
         ff(i)=double(w(t1(i)));
         h=h+D;
         r=r+1;
     end
end
plot(t1+D,ff,'blue')
hold off
%question 3c
figure;
hold on
title('soh')
plot(tt,sin(pi*tt),'--')
plot(tk,sin(pi*tk),'x')
%%%%
h2=0.01;
%%%%this is the time between points on our interpolation
t1=[0:h2:5];
h=0.1;
tk=[0:h:5];
D=h;
yk=sin(pi*tk);
%%%
syms t
f=sym(zeros(1,length(tk)+1));
for i=3:length(tk)
    f(i)=yk(i)+((yk(i)-yk(i-1))/h)*(t-((i-2)*h))+((yk(i)-2*yk(i-1)+yk(i-2))*(t-((i-2)*h))^2)/(2*h^2);
end         
r=1;
ff=zeros(1,length(t1));
for i=1:length(t1)
     if (i-1)*h2<h
         s(t)=f(r+1);
         ff(i)=double(s(t1(i)));
     else
         s(t)=f(r+1);
         ff(i)=double(s(t1(i)));
         h=h+D;
         r=r+1;
     end
end
plot(t1+D,ff,'blue')
hold off
