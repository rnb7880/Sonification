load('ECGdata.mat')%this loads the ECG data

matrix=input('Which dataset do you want to use?:'); %this allows the user to determine the data
start=input('Which starting point do you want to use:'); %this allows the user to determine the start of the data to be plotted
endpoint=input('Which end point do you want to use?:');%this allows the user to determine the end of the data to be plotted

subset=chunkit(matrix,start,endpoint);%this takes a piece of the matrix as defined by the user

peaks=findpeaks(subset,'MINPEAKHEIGHT',100);%this finds the peaks above 100 of the data
beats=length(peaks);%this finds the number of beats in the peaks data (how many elements)
bpm=(beats*6)%this determines the rate of the beats per minutes

figure(1)%this creates a graph labeled figure 1
plot(subset,'r-')%this plots the data

title('Graph of ECG Beats per Minutes'); %this titles the graph
xlabel('Beats per Minute')%this labels the x axis
ylabel('ECG Output (MV)') %this labels the y axis