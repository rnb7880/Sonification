


load 117hour.mat
hour=val;
hour=chunkit(hour,8000,460800); %460800
hour=detrend(hour);
peakhour=findpeaks(hour,'minpeakheight',80);
numberpeakhour=length(peakhour);
lengthhour=length(hour);
timeshour=lengthhour*0.0078125;
bpshour=numberpeakhour/timeshour;
bpmhour=bpshour*60;
bpmhour
figure(1)
subplot(2,2,1)
plot(hour)


load 38hour.mat
hour=val;
hour=chunkit(hour,8000,460800); %460800
hour=detrend(hour);
peakhour=findpeaks(hour,'minpeakheight',80);
numberpeakhour=length(peakhour);
lengthhour=length(hour);
timeshour=lengthhour*0.0078125;
bpshour=numberpeakhour/timeshour;
bpmhour=bpshour*60;
bpmhour
figure(1)
subplot(2,2,2)
plot(hour)

load 102hour.mat
hour=val;
hour=chunkit(hour,8000,460800); %460800
hour=detrend(hour);
peakhour=findpeaks(hour,'minpeakheight',80);
numberpeakhour=length(peakhour);
lengthhour=length(hour);
timeshour=lengthhour*0.0078125;
bpshour=numberpeakhour/timeshour;
bpmhour=bpshour*60;
bpmhour
figure(1)
subplot(2,2,3)
plot(hour)
