for i=1:(n-1)
    RR(i)=seconds(i+1)-seconds(i);
end
%runs until the second to last point of data. defines RR(i) to be the
%change in time between two values of the ECG data.
figure(2)
plot(ecgdata)
hold on
stem(local, RR, 'r.')
title('RR Intervals')
ylabel('seconds of data')
xlabel('Time interval between peaks')
%plots RR(i) but not in time units. in units of each peak.