%% Inputs

% data based on EcoCAR Chevy Blazer

l = 2.86258;                    % length of wheelbase [m]
l_f = 1.226382;                 % length from center of gravity to front wheel [m]
l_r = l - l_f;                  % length from center of gravity to rear wheel [m]
m = 1728 + 90;                  % curb weight of vehicle plus driver [kg]
g = 9.81;                       % acceleration due to gravity [m/s^2]
a_x = 0;                        % vehicle accleration in x direction[m/s^2]
hs = 0.5;                       % height from vehicle center of gravity to ground [m]
alpha = 0;                      % grade angle [degrees]

%P_brake = 0;                   % brake pressure
A_brake_piston = 0.00369;       % brake piston area [m^2] assuming brake piston diameter of 2.7 
mu_brakepad = 0.5;              % friction from brake pad and piston (0.5 value taken from Dr. B)
r_disc = 0.1405;                % radius of brake disc [m]

r = 0;                          % rolling radius of tires
f = 0.015;                      % rolling resistance coefficient

brake_pressure = 96;            % in Bar
%% Equations

% % Vertical Force Equations - Even ground, static wheel loads
% F_vert_fl = ((m*g)/2)*(lr/l);               % Modify for ~60%-65% for FWD
% F_vert_rl = ((m*g)/2)*(lr/l);
% 
% F_vert_fl = ((m*g)/2)*(lf/l);               % Modify for ~35%-40% for FWD
% F_vert_fl = ((m*g)/2)*(lf/l);
% 
% % Vertical Force Equations - Dynamic wheel loads on straight road
% % accelerating and uphill
% 
% F_vert_fl = ((m*g*lr)/l)-((m*a_x*h_s)/l)-((m*g*sind(alpha)*h_s;
% 
% 
% 
% 
% 
% % Vehicle Equations
F_t_L + F_t_R - (m*g