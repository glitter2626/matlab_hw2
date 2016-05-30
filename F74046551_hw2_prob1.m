%ex1 a
clear;
t=0:0.005:30;
v = -20*exp(-0.01*t.^2).*sin(20*pi*t+2*pi/5);
subplot(2,1,1);
plot(t,v);

%ex1 b
clear;
m = 5;
t=0:0.005:30;
v = -20*exp(-0.01*t.^2).*sin(20*pi*t+2*pi/5);
h = 0.00001;
k = t + h;
dv = -20*exp(-0.01*k.^2).*sin(20*pi*k+2*pi/5); % 微分
subplot(2,1,2);
plot(t,m*(v-dv)/h);

%ex1 c
clear;
m = 5;
t=8;
v = -20*exp(-0.01*t.^2).*sin(20*pi*t+2*pi/5);
h = 0.000000001;
k = t + h;
dv = -20*exp(-0.01*k.^2).*sin(20*pi*k+2*pi/5);  % 微分
fprintf('F(8) = %d N \n',m*(v-dv)/h);

%ex1 d
clear;
t=10;
v = -20*exp(-0.01*t.^2).*sin(20*pi*t+2*pi/5);
h = 10^(-8);
k = t + h;
dhv = -20*exp(-0.01*k.^2).*sin(20*pi*k+2*pi/5); % 上
k = t - h;
dlv = -20*exp(-0.01*k.^2).*sin(20*pi*k+2*pi/5); % 下
fprintf('x(10) = %d m \n', h/2*(dlv + 2*v + dhv));

%ex1 e
clear;
Ans = 0;
h = 10^(-7);
t=0:h:4;
v = -20*exp(-0.01*t.^2).*sin(20*pi*t+2*pi/5);
sum = size(v);  %取得陣列元素數量
Ans = Ans + v(1);
for i = 2:sum(2)-1
    Ans = Ans + 2*v(i);
end
Ans = h/2*(Ans + v(sum(2)));
fprintf('The total travel length from t=0 to 10 is %d \n', abs(Ans));