% test coordination term
clear;clc;close all

alpha = 1;
zeta = 10;
E = 1;
g = 20;
T = 50; % arrival time
yellow = 5;
tsys = linspace(0,100,1000);
z = -T + tsys + yellow;
B = zeros(1000,1);
ind = 1;
for z_ = z
    B(ind) = alpha*E*max([0, min([(z_+zeta)/zeta,1,g/zeta,(-z_+g)/zeta])]);
    ind = ind + 1;
end
plot(z,B)
xlim([-20 30])
ylim([-1 2])
title('Coordination term')
ax = gca;
xlabel('z (seconds)')
ylabel('$B_{\ell}$', 'Interpreter', 'LaTeX')
set(ax,'FontName','Times')
set(ax,'FontSize',14)