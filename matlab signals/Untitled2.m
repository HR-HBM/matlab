load('chb01_01_edfm.mat');
eeg = val(1,:);
figure;
plot(eeg);
title('EEG Signal');
xlabel('Time(ms)');
ylabel('Amplitude(mV)');

%frequency spectrum of the EEG signal
F = fft(eeg);
F = abs(F);
F = F/max(F);
figure;
plot(F);

% frequemncy spectrum of EEG signal
F = fft(eeg);
F = abs(F);
F = F/max(F); %normalized frequency
figure;
plot(F);
xlim([0 800]);
title('nomalized magnitude spectrum of EEG signal');
xlabel('Frequency (Hz)');
ylabel('Normalized magnitude');

figure;
plot(eeg);
findpeaks(eeg);