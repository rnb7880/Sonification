load sinus.mat 
%loads the matlab data ECG signal
ecgdata=(val/200); 
%divdes by the gain of the data (brings to zero)

[peaks]=findpeaks(ecgdata,'minpeakheight', .4); 
