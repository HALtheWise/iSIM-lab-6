function [maximum, value, integral] = shiftImport(filename, offset)

    [Time,RawSignal,Integrated] = importfile(filename);

    RawSignal = RawSignal + 0.002605;
    
    Currents = -0.000384615 .* (-RawSignal);
    
    Time = Time-offset;
    
    plot(Time, Currents);
    
    Integrated = Integrated - interp1(Time, Integrated, 0);
    
    maximum = max(Currents);
    value = interp1(Time, Currents, 10);
    integral = interp1(Time, Integrated, 10);
    %calcintegral = trapz(Time((0 < Time) && (Time < 10)), Currents((0 < Time) && (Time < 10)));

    ylabel('Current (A)')
    xlabel('Time (s)')
end