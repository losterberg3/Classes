%problem 0
%PID bode plot
Fb=RR_tf ([1 101 100],[1 0]);
RR_bode(Fb);
%bandpass filter
Fs=RR_tf ([1 0],[1 101 100]);
RR_bode(Fs);
%all pass filter
Fp=RR_tf ([1 -1],[1 1]);
RR_bode(Fp);
%problem 4
syms K k c M
%tf with W(s)=1/s, a unit impulse
K=1000
p4=RR_tf ([K],[1000 0 K]);
RR_bode(p4)
%tf for m=100 C=0, M=1000, K=1000
syms c k
c=1000
k=1000
%bode plot system
p4=RR_tf ([100 c k],[100 c k+100 k]);
RR_bode(p4);
%bode plot of step response
p4=RR_tf ([100 c k],[100 c k+100 k 0]);
RR_bode(p4);

