%q1
num = [1 -1];
den = [1 1];
sys = tf(num, den);
%plotting the bode plot
figure;
bode(sys);
title('Bode Plot');
%plotting the step response
figure;
step(sys);
title('Step Response');
%q2
num2 = [wc^2];
den2 = [1 1.85*wc wc^2];
sys1 = @(wc) tf([wc^2], [1 0.77*wc wc^2]);
sys2 = @(wc) tf([wc^2], [1 1.85*wc wc^2]);
%plotting F2a for some wc. Here we say wc=1.
figure;
bode(sys1(1));
title('Bode Plot');
%plotting F2b for some wc. Here we say wc=1.
figure;
bode(sys2(1));
title('Bode Plot');
%plotting F4 for some wc. Here we say wc=1.
figure;
bode(sys1(1)*sys2(1));
title('Bode Plot');
%plotting the step response for different wc.
figure;
step(sys1(.1)*sys2(.1));
title('Step Response for wc=0.1');
figure
step(sys1(1)*sys2(1));
title('Step Response for wc=1');
figure
step(sys1(10)*sys2(10));
title('Step Response for wc=10');
figure
step(sys1(100)*sys2(100));
title('Step Response for wc=100');
%the end
