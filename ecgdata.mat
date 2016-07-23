load 117hour.mat
ecgdata=(val/202.429);
%

[peaks,local]=findpeaks(ecgdata,'minpeakheight', 1.25);
figure(1)
title('ECGData and Peaks')
xlabel('seconds')
ylabel('mV')
plot(ecgdata)
hold on
plot(local, peaks, 'r*')

seconds=local*.0078125
n=length(seconds)

for i=1:(n-1)
    RR(i)=seconds(i+1)-seconds(i);
end
figure(2)
plot(RR)
title('RR Intervals')
