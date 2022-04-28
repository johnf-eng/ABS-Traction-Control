clear
clc
%close all
warning off

%% These are the parameters
m = 1908; %kg
g = 9.81; 
Lr = 3; %m
L = 5; %m
h_g = 1.3; %m
rho = 1.2; 
Cd = 0.3;
Af = 2;
Rr = 0.767/2; %m
alpha = 0;
f = 0.01;
I = 1.2; 
v0 = 100*1000/(60*60); %m/s
x0 = 0; % m
iceDistance = 10; %m
iceTime = 1.5; %s

%% Controller

controller.abs.kp = .5;
controller.abs.ki = 1.4;
controller.tcs.kp = 1;
controller.tcs.ki = .01;
controller.slew = 100; %bar/s
controller.brkDelay = .100; %s
controller.dynamics = 100;
controller.desiredSlipice = 0.15; %calculated via desiredSlip.m
controller.desiredSlipdry = 0.08; %calculated via desiredSlip.m

%% Tire Parameters

tire.dry = [15 2.2 1 0.97]; % Edited from Mathworks [B C D E]
tire.ice = [6 2.5 0.1 1]; % Edited from Mathworks [B C D E]
tire.radius = 0.767/2; % meters
tire.inertia = 2.0; % kg*m^2
tire.initial_velocity = 30; % rad/s


%% Brake Parameters

brake.radius = 0.158; % m
brake.pads = 2; 
brake.bore = 0.06; %m
brake.mu = 0.35; 
brake.maxPrs = 70; %bar
%% Driveline

driveline.differential = 2.77*1; % total gear ratio with diff and gear

%% Engine

engine.torque = 0;



%% Vehicle

vehicle.mass = 1908;
vehicle.af = 1;
vehicle.cd = 0.3;
vehicle.initial_velocity = 100; % m/s







