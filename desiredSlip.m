%% Desired Slip
clc;
clear
close all
u = [0:.01:1]; %slip percentage
tire.dry = [15 2.2 1 0.97]; % Edited from Mathworks [B C D E]
tire.ice = [6 2.5 0.1 1]; % Edited from Mathworks [B C D E]
fricCoeffIce = tire.ice(3)*sin(tire.ice(2)*atan((tire.ice(1)*u)-(tire.ice(4)*((tire.ice(1)*u)-atan(tire.ice(1)*u)))));
plot(u,fricCoeffIce)
[v , x] = max(fricCoeffIce);
desiredMuIce = u(x)


fricCoeffDry = tire.dry(3)*sin(tire.dry(2)*atan((tire.dry(1)*u)-(tire.dry(4)*((tire.dry(1)*u)-atan(tire.dry(1)*u)))));

hold on
plot(u, fricCoeffDry)
[v , x] = max(fricCoeffDry);
desiredMuDry = u(x)
