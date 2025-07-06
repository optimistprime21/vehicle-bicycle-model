time = (0:0.001:40)'; 

%% Steering Angle Profile (delta_f)

delta_f_val = zeros(size(time));
for i = 1:length(time)
    t = time(i);
    if t < 15
        delta_f_val(i) = 0.0;
    elseif t < 17
        delta_f_val(i) = 0.0 + 0.2962 * ((t - 15) / 2);
    elseif t < 17.5
        delta_f_val(i) = 0.2962;
    elseif t < 19.5
        delta_f_val(i) = 0.2962 - 0.2962 * ((t - 17.5) / 2);
    elseif t < 27
        delta_f_val(i) = 0.0;
    elseif t < 29
        delta_f_val(i) = 0.0 - 0.2962 * ((t - 27) / 2);
    elseif t < 29.5
        delta_f_val(i) = -0.2962;
    elseif t < 31.5
        delta_f_val(i) = -0.2962 + 0.2962 * ((t - 29.5) / 2);
    else
        delta_f_val(i) = 0.0;
    end
end
delta_f = [time, delta_f_val];
delta_r = [time, zeros(size(time))];  % Always zero

%% Torque Profile (T_f)

torque_val = zeros(size(time));
for i = 1:length(time)
    t = time(i);
    if t < 5
        torque_val(i) = 0;
    elseif t < 6
        torque_val(i) = 0.0 + 710 * (t-5);
    elseif t < 10
        torque_val(i) = 710;
    elseif t < 22
        torque_val(i) = 56;
    else
        torque_val(i) = 76;
    end
end

Tf = [time, torque_val];
Tr = [time, zeros(size(time))];

simOut = sim('car_model2.slx'); 

%% Plotting the Inputs
figure;
subplot(3,1,1);
plot(time, delta_f_val, 'LineWidth', 1.5);
xlabel('Time [s]');
ylabel('\delta_f [rad]');
title('Front Steering Angle (\delta_f)');
grid on;

subplot(3,1,2);
plot(time, torque_val, 'LineWidth', 1.5);
xlabel('Time [s]');
ylabel('T_f [Nm]');
title('Front Wheel Torque (Tf)');
grid on;

subplot(3,1,3);
plot(time, torque_val2, 'LineWidth', 1.5);
xlabel('Time [s]');
ylabel('T_r [Nm]');
title('Rear Wheel Torque (Tr)');
grid on;