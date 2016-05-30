%ex3 
N = 10000;
a = 0;
b = 0;
for i = 0:N
    x = randn();
    y = randn();
    z = randn();
    x =  (x - fix(x))*2; %正負0~2
    y =  y - fix(y);  %正負0~1
    z =  (z - fix(z))*3;  %正負0~3
    if (x^2/4 + y^2 +z^2/9 <= 1)  %圖形內
        a = a + 1;
    end
    if(x^2/4 + y^2 +z^2/9 > 1)
        b = b + 1;
    end  
end
fprintf('A total of %d random points are used and the volume of the ellipsoid is %d \n', N, 48*(a/N));