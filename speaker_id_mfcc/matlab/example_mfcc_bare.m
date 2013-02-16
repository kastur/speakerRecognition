

data = wavread('16b_8k.wav');
addpath(genpath('voicebox'));

%%
emph_data = data - 0.97 * [0; data(1:end-1)];
emph_data = emph_data(10000:end);

frame_starts = 1:128:(length(emph_data)-128);
frame_data = zeros(128, length(frame_starts));

for ii = 1:length(frame_starts)
    frame_data(:, ii) = emph_data(frame_starts(ii):frame_starts(ii)+127);
end
%%
% initialization
fs = 8000;  % 8kHz sampling frequency.
n = pow2(floor(log2(0.03*fs)));  % 128 (size of windows).
stride=floor(n/2);  % 64 step size for subsequent windows.
npassband = floor(3*log(fs));  % 26 (# of mel frequency pass band filters).
npassband = 32; % overrride this to power of 2.

hamming_coeff = hamming(n);
[mel_filterbank,fftA,fftB]=(melbankm(npassband,n,fs,0,0.5)); % the mel filter bank
mel_filterbank = full(mel_filterbank);
dct_coeff = [sqrt(2) 2*exp((-0.5i*pi/npassband)*(1:npassband-1))].';

%%
frame = frame_data(:, 1);
mel = mfcc_bare(frame, hamming_coeff, mel_filterbank, fftA, fftB, dct_coeff)
expected_mel = melcepst(frame, 8000, 'E', 12, 32)
stem(mel)
hold on;
stem(expected_mel, 'r')

%%
dlmwrite('real_frame.txt', frame);
dlmwrite('real_hamming_coeff.txt', hamming_coeff);
dlmwrite('real_mel_filterbank.txt', mel_filterbank(:))
coeff = [real(dct_coeff) imag(dct_coeff)]';
dlmwrite('creal_dct_coeff.txt', coeff(:));
dlmwrite('real_mel.txt', expected_mel')
% fftA = 2
% fftB = 64
