Resistances = [4e3 20e3 60e3 249e3];
Currents = 1.976 ./ Resistances;
Measurements = [3.748 2.744 2.538 2.506];

plot(Currents, Measurements, 'o');