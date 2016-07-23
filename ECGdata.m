load 117hour.mat 
%loads the matlab data ECG signal
ecgdata=(val/202.429); 
%divdes by the gain of the data (brings to zero)

[peaks,local]=findpeaks(ecgdata,'minpeakheight', .4); 
%finds all peaks with a height of at least 1.25 mV stores peaks in peaks
%and the time location in local
figure(1)
plot(ecgdata)
%plots the original data
hold on
plot(local, peaks, 'r*')
%puts red asteric at peaks found in last part of script and plots them over
%the original data to see where peaks are
title('ECGData and Peaks')
xlabel('seconds')
ylabel('mV')

seconds=local*.0078125;
n=length(seconds);
%converts local into milliseconds and makes n the time that has passed in
%ms


for i=1:(n-1)
    RR(i)=seconds(i+1)-seconds(i);
end
%runs until the second to last point of data. defines RR(i) to be the
%change in time between two values of the ECG data.
figure(2)
plot(RR)
title('RR Intervals')
ylabel('seconds')
xlabel('Number of peak interval (2=between peaks 2 and 3)')
%plots RR(i) but not in time units. in units of each peak.

for i=1:(n-1)
    RR(i)=seconds(i+1)-seconds(i);
end
%runs until the second to last point of data. defines RR(i) to be the
%change in time between two values of the ECG data.
figure(2)
plot(RR)
title('RR Intervals')
ylabel('seconds')
xlabel('Number of peak interval (2=between peaks 2 and 3)')
%plots RR(i) but not in time units. in units of each peak.

local(:,n)=[];
%reshapes local to fit RR

ECGARRAY=[local;RR];

figure(3)
plot(ecgdata)
hold on
stem(local,RR, 'r.')
title('RR Intervals')
ylabel('seconds of data')
xlabel('Time interval between peaks')
%plots RR(i) but not in time units. in units of each peak.


ECGARRAY=[local;RR];