% Utilizando como base los ejemplos en la documentación de MathWorks, se grafican las respuestas de los sistemas al impulso
% LINK: https://la.mathworks.com/help/control/ref/dynamicsystem.impulse.html#mw_27bcda00-d409-4ae6-b461-71f11eca0510

%% Sistema 1
sys1 = tf(zeros(1,1,1,5));
Wn1 = 2;            % natural frequency
zeta1 = 0;          % damping constant
sys1(:,:,1) = tf(Wn1^2,[1 2*zeta1*Wn1 Wn1^2]);

%% Sistema 2
sys2 = tf(zeros(1,1,1,5));
Wn2 = 2;            % natural frequency
zeta2 = 0.1;        % damping constant
sys2(:,:,1) = tf(Wn2^2,[1 2*zeta2*Wn2 Wn2^2]);

%% Sistema 3
sys3 = tf(zeros(1,1,1,5));
Wn3 = 1;            % natural frequency
zeta3 = 0;          % damping constant
sys3(:,:,1) = tf(Wn3^2,[1 2*zeta3*Wn3 Wn3^2]);

%% Sistema 4
sys4 = tf(zeros(1,1,1,5));
Wn4 = 1;            % natural frequency
zeta4 = 0.2;        % damping constant
sys4(:,:,1) = tf(Wn4^2,[1 2*zeta4*Wn4 Wn4^2]);

% impulse(sys4, 25);

%% Plot

subplot(2,2,1)
impulse(sys1, 25)
title('sys1: \omega_{n} = 2, \zeta = 0')

subplot(2,2,2)
impulse(sys2, 25)
title('sys2: \omega_{n} = 2, \zeta = 0.1')

subplot(2,2,3)
impulse(sys3, 25)
title('sys3: \omega_{n} = 1, \zeta = 0')

subplot(2,2,4)
impulse(sys4, 25)
title('sys4: \omega_{n} = 1, \zeta = 0.2')
