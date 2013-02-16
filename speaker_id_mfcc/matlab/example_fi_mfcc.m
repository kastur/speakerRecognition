f_data = wavread('16b_8k.wav');
addpath(genpath('voicebox'));
f_data = sfi(f_data, 32, 24);
f_emph_data = f_data - 0.97 * [0; f_data(1:end-1)];

f_emph_data = f_emph_data(10000:end);

frame_starts = 1:128:(length(f_emph_data)-128);
f_frame_data = sfi(zeros(128, length(frame_starts)));

for ii = 1:length(frame_starts)
    f_frame_data(:, ii) = f_emph_data(frame_starts(ii):frame_starts(ii)+127);

end

%%
f_frame = f_frame_data(:, 1);
f_hamming = sfi(hamming(128, 'periodic'));
f_mel_filters = sfi(full(melbankm(26, 128, 8000)));

f_mel = fi_mfcc(f_frame, f_hamming, f_mel_filters);

%%
dlmwrite('d_frame.txt', f_frame.int, 'precision', '%d');
dlmwrite('d_hamming.txt', f_hamming.int, 'precision', '%d');
dlmwrite('d_mel_filters.txt', f_mel_filters.int(:), 'precision', '%d');
dlmwrite('d_mel.txt', f_mel.int, 'precision', '%d');