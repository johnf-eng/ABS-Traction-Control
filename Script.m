clear
clc

%% Input Variables - Roughly based on a RWD model of the EcoCAR Chevy Blazer

m = 1728+90;                % curb weight of vehicle plus driver [kg]
g = 9.81;                   % acceleration due to gravity [m/s^2]
Lr = 1.636198;              % length from center of gravity to rear wheel [m]
L = 2.86258;                % length of wheelbase [m]
h_g = 1.3;                  % height of center of gravity [m]
rho = 1.204;                % density of air at 20C [kg/m^3]
Cd = 0.3;                   % drag coefficient
Af = 2;                     % cross Section Area [m^2]
Rr = 0.65024/2;             % rolling Radius of 25in dameter tires [m]
alpha = 0;                  % grade [degrees] - included but not used
f = 0.015;                  % rolling resistance coefficient
I = 1.2945;                 % moment of inertia of 12.247kg tire with 0.3251 rr [kg*m^2] (small 25" tires, lol)
v0 = 50*1000/(60*60);       % intial vehicle speed [m/s]
x0 = 0;                     % initial displacement [m]
iceDistance = 20;           % displacment where ice is encountered in ABS [m]
iceTime = 1.5;              % time when ice is encountered in TCS [s]

%% Controller

% controller.abs.kp = .5; 
% controller.abs.ki = 1.4;
% controller.tcs.kp = 1; 0.2885
% controller.tcs.ki = .01; 0.63
controller.abs.kp = .7;                % ABS PI controller proportional value
controller.abs.ki = 1.4;               % ABS PI controller integral value
controller.tcs.kp = 0.3;                 % TCS PI controller proportional value
controller.tcs.ki = 0.85;                % TCS PI controller integral value
controller.slew = 100;                 % rate limit of brake pressure [bar/s]
controller.brkDelay = .100;            % hydraulic delay time[s]
controller.dynamics = 100;
controller.desiredSlipice = 0.15; %calculated via desiredSlip.m
controller.desiredSlipdry = 0.08; %calculated via desiredSlip.m

%% Tire Parameters

tire.dry = [15 2.2 1 0.97];                     % From Mathworks Magic Formula page. Coefficients [B C D E], modified slightly to allow the model to run
tire.ice = [6 2.5 0.1 1];
tire.radius = Rr;
tire.inertia = I;
tire.initial_velocity = 36.21;                  % Initial Wheel speed for tires [rad/s] TCS 50kph
%tire.initial_velocity = 65.189;                % ABS 90kph

%% Brake Parameters

brake.radius = 0.158; % m
brake.pads = 2; 
brake.bore = 0.06; %m
brake.mu = 0.35; 
brake.maxPrs = 70; %bar

%% Driveline

driveline.differential = 3.49; % total gear ratio with diff and gear

%% Vehicle

vehicle.mass = m;
vehicle.af = Af;
vehicle.cd = Cd;
vehicle.initial_velocity = v0; % m/s







