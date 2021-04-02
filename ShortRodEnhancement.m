Q = 0.05:0.01:0.8;

Tau1 = 1.67e-9;
%For the Rod of L4%
Tau2L4 = 1.56e-9;

Gamma_Knr = 1/Tau1;
Gamma = Q*Gamma_Knr;
Knr = Gamma_Knr - Gamma;
Gamma_Knr_GammaM = 1/Tau2L4;
GammaM = Gamma_Knr_GammaM - Gamma_Knr;
Qm = (Gamma+GammaM)./(Gamma+GammaM+Knr);

Eqy = Qm./Q;

IefL4 = 1.35;

Eec = IefL4./Eqy;

%For the rod of L9%

Tau2L9 = 1.51e-9;
Gamma_Knr_GammaM_L9 = 1/Tau2L9;
GammaML9 = Gamma_Knr_GammaM_L9 - Gamma_Knr;
QmL9 = (Gamma+GammaML9)./(Gamma+GammaML9+Knr);

EqyL9 = QmL9./Q;

IefL9 = 1.98;

EecL9 = IefL9./EqyL9;

%For the rod of L12%

Tau2L12 = 1.49e-9;
Gamma_Knr_GammaM_L12 = 1/Tau2L12;
GammaML12 = Gamma_Knr_GammaM_L12 - Gamma_Knr;
QmL12 = (Gamma+GammaML12)./(Gamma+GammaML12+Knr);

EqyL12 = QmL12./Q;

IefL12 = 2.09;

EecL12 = IefL12./EqyL12;

%Now to work out the enhancements for the short rods, We can assume that
%Eec is unchanged for rods of the same silica lenght

%Tau2S4 = 1.43e-9;
%Gamma_Knr_GammaM_S4 = 1/Tau2S4;
%GammaMS4 = Gamma_Knr_GammaM_S4 - Gamma_Knr;
%QmS4 = (Gamma+GammaMS4)./(Gamma+GammaMS4+Knr);

%EqyS4 = QmS4./Q;

EqyS4 = 0.45./Eec;

EqyS9 = 0.72./EecL9;

EqyS12 = 0.90./EecL12;

plot(Q,EqyS4,'.r');
hold on
plot(Q,Eec,'--r');
hold on
plot(Q,EqyS9,'.m');
hold on
plot(Q,EecL9,'--m');
hold on
plot(Q,EqyS12,'.b');
hold on
plot(Q,EecL12,'--b');
hold off
xlabel('Assumed Quantum Yield');
ylabel('Enhancement');
legend('EqyS4','EecL4','EqyS9','EecL9','EqyS12','EecL12');




