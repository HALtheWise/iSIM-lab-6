concentrations = [50 100 125 150];

[maxes(1), values(1), integrals(1)] = shiftImport('50.csv',-24.82);
[maxes(2), values(2), integrals(2)] = shiftImport('100.csv',-54.41);
[maxes(3), values(3), integrals(3)] = shiftImport('125.csv',-4.322);
[maxes(4), values(4), integrals(4)] = shiftImport('150.csv',-25.25);

clf
hold on
[ax, l1, l2] = plotyy(concentrations, maxes, concentrations,integrals);
l1.Color = 'r';
%l2.Color = 'k';
l1.Marker = 'x';
l2.Marker = 'x';
%plot(ax(1), concentrations, maxes, 'x-r')
plot(ax(1), concentrations, values, 'x-b')
legend('Max current', 'Current after 10s', 'Integral after 10s')

title('Glucose calibration data')
xlabel('Concentration (mg / dL)')
ylabel(ax(1), 'Current (A)')
ylabel(ax(2), 'Integrator output (V)')

ylim(ax(1), [0,4e-5])

xlim(ax(1), [30 160])

xlim(ax(2), [30 160])

