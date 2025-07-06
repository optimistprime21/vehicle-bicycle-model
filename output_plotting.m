% Extract data
X = simOut.X.signals.values;
Y = simOut.Y.signals.values;
psi = simOut.psi.signals.values;
V = simOut.V.signals.values;
t = simOut.X.time;  

% Vehicle body parameters
L = 2;  % vehicle length
chassis_half = L / 2;


figure;
hold on; grid on; axis equal;
xlabel('X (m)');
ylabel('Y (m)');
title('Vehicle Trajectory with Orientation');
plot(X, Y, 'b', 'LineWidth', 1.5);

% Plot vehicle orientation every N frames
N = 500;  

for i = 1:N:length(t)
    x_center = X(i);
    y_center = Y(i);
    theta = psi(i); 

    x1 = x_center - chassis_half * cos(theta);
    y1 = y_center - chassis_half * sin(theta);
    x2 = x_center + chassis_half * cos(theta);
    y2 = y_center + chassis_half * sin(theta);

  
    plot([x1 x2], [y1 y2], 'r', 'LineWidth', 2);
    plot(x2, y2, 'ro', 'MarkerFaceColor', 'r', 'MarkerSize', 3);
end

legend({'Trajectory', 'Vehicle Position & Orientation'});


% X Coordinate vs Time
figure;
plot(t, X, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('X (m)');
title('X Coordinate Change');
grid on;

% Y Coordinate vs Time
figure;
plot(t, Y, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Y (m)');
title('Y Coordinate Change');
grid on;

% Yaw Angle vs Time
figure;
plot(t, psi, 'LineWidth', 1.5);  
xlabel('Time (s)');
ylabel('Yaw Angle (rad)');
title('Yaw Angle Change');
grid on;

% Velocity vs Time
figure;
plot(t, V, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Velocity (m/s)');
title('Velocity Change');
grid on;


