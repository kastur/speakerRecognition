function mel = mfcc_bare(samples_in_window, hamming_coeff, mel_filterbank, fftA, fftB, dct_coeff)
% initialization
fs = 8000;  % 8kHz sampling frequency.
n = pow2(floor(log2(0.03*fs)));  % 128 (size of windows).
stride=floor(n/2);  % 64 step size for subsequent windows.
npassband = floor(3*log(fs));  % 26 (# of mel frequency pass band filters).
npassband = 32; % overrride this to power of 2.

nceps = 12; % # 12 (# of cepstral coefficients (output features))

% compute features for one input window
smooth_samples = samples_in_window .* hamming_coeff;
samples_in_freq = fft(smooth_samples.');
samples_in_freq = samples_in_freq(1:n/2+1);
power_in_freq = samples_in_freq(fftA:fftB) .* conj(samples_in_freq(fftA:fftB));

melfilter_resps = log(mel_filterbank * abs(samples_in_freq(fftA:fftB))');

% Compute DCT
rearrange_resp=[melfilter_resps(1:2:npassband); melfilter_resps(2*fix(npassband/2):-2:2)];
y=real(fft(rearrange_resp) .* dct_coeff) / sqrt(2*npassband);

mel = [log(sum(power_in_freq)).' y(2:nceps+1)'];


