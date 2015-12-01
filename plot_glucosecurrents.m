clf
hold on
shiftImport('50.csv',-24.82);
shiftImport('100.csv',-54.41);
shiftImport('125.csv',-4.322);
shiftImport('150.csv',-25.25);

title('Glucose monitor current allowance');

xlim([-.2 15])
legend('50', '100', '125', '150')