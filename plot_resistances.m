Resistances = [4e3 20e3 60e3 249e3];
Currents = 1.976 ./ Resistances;
Measurements = [3.748 2.744 2.538 2.506];

clf
plot(Currents, Measurements, 'o-b');
xlabel('Current (A)')
ylabel('Measured voltage (V)')
hold on
pause
plot(1.976/604, 4.96, 'ob');
