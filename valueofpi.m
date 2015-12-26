clc
%rng(0,'v5uniform');
%ang = 0:0.000001:pi/2;
N = 10000;
u = rand(1,N);
v = rand(1,N);
%xp = cos(ang);
%yp = sin(ang);
count = 0;
for idx = 1:N
    if u(idx)^2 + v(idx)^2 <= 1
        count = count + 1;
        xp(idx) = u(idx);
        yp(idx) = v(idx);
    else
        x2p(idx) = u(idx);
        y2p(idx) = v(idx);
    end
end
plot(xp,yp,'b.');
hold on
plot(x2p,y2p,'r.');
hold off
pi_new = 4*(count/N);