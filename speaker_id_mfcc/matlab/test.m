d_data = wavread('16b_8k.wav');
addpath(genpath('voicebox'));
d_data = sfi(d_data, 32, 24);
d_emph_data = d_data - 0.97 * [0; d_data(1:end-1)];
frame_starts = 1:128:(length(d_data)-128);
d_frame_data = sfi(zeros(128, length(frame_starts)));

for ii = 1:length(frame_starts)
    d_frame_data(:, ii) = d_emph_data(frame_starts(ii):frame_starts(ii)+127);

end

%%
F = fimath;
F.ProductFractionLength = 24;
F.ProductWordLength = 32;
%%
    d_frame = d_frame_data(:, 1230);
    
    d_hamming = hamming(128, 'periodic');
    d_mel_filters = sfi(full(melbankm(26, 128, 8000)));
    
    d_smooth = d_frame .* d_hamming;
    
    d_smooth = sfi(d_smooth, 32, 24);
    d_fft = fi_fft(d_smooth);
    d_fft = abs(d_fft(1:65));
    
    d_mel_resp = d_mel_filters * d_fft;
    d_log_resp = (d_mel_resp.^2);
    d_log_resp = sfi(log(d_log_resp.data), 32, 24);
    d_mel = fi_fft(d_log_resp);
    
    
%%
d_fft_data = abs(fft(d_frame_data(:, 1230)));
f_fft_data = abs(fi_fft(d_frame_data(:, 1230)));
%f_fft_data = abs(fi_fft(sfi(d_frame_data(:, 1230), 16, 14)));
%%
f_data = sfi(d_data, 16, 14);
f_emph_data = f_data - sfi(15892, 16, 14) * [0; f_data(1:end-1)];


frame_starts = 1:128:(length(f_data)-128);
T = numerictype(1, 16, 14);
f_frame_data = zeros(128, length(frame_starts));
for ii = 1:length(frame_starts)
    f_frame_data(:, ii) = f_emph_data(frame_starts(ii):frame_starts(ii)+127) .* f_hamming;
end
%%
fi_fft(f_frame_data(:, 1))


%%
corr(d_emph_data, double(f_emph_data))

corr(d_frame_data(:, 1), double(f_frame_data(:, 1)))
corr(d_frame_data(:), double(f_frame_data(:)))



%%
d_fft_data = abs(fft(d_frame_data(:, 1230)));
f_fft_data = abs(fi_fft(sfi(d_frame_data(:, 1230), 32, 24)));
subplot(2,1,1)
plot(d_fft_data);
subplot(2,1,2)
plot(f_fft_data);
corr(d_fft_data, double(f_fft_data))