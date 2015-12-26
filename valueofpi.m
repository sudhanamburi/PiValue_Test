clc
N = 10000;
u = rand(1,N);
v = rand(1,N);
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
legend(strcat('pi value = ', num2str(pi_new)));