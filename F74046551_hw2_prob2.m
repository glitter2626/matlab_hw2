%ex2 a
clear;
Ans = 0;
h = 10^(-7);
t=0:h:4;  
v = sqrt(1-t.^2);
sum = size(v);  %取得陣列元素數量
Ans = Ans + v(1);
for i = 2:sum(2)-1
    Ans = Ans + 2*v(i);
end
Ans = h/2*(Ans + v(sum(2)));
fprintf('%d \n', Ans);

%ex2 b
clear;
Ans = 0;
h = 10^(-7);
t=0:h:pi;
v = 1./sqrt(1+2.*sin(t));
sum = size(v);  %取得陣列元素數量
Ans = Ans + v(1);
for i = 2:sum(2)-1
    Ans = Ans + 2*v(i);
end
Ans = h/2*(Ans + v(sum(2)));
fprintf('%d \n', Ans);

%ex2 c
clear;
Ans = 0;
h = 10^(-7);
t=0:h:1;
v = sin(t)./(1+t.^2);
sum = size(v);  %取得陣列元素數量
Ans = Ans + v(1);
for i = 2:sum(2)-1
    Ans = Ans + 2*v(i);
end
Ans = h/2*(Ans + v(sum(2)));
fprintf('%d \n', Ans);
