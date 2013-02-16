function d_mel = fi_mfcc(d_frame, d_hamming, d_mel_filters)
    assert(isfi(d_frame));
    assert(isequal(numerictype(d_frame), numerictype(1, 16, 15)));
    
    assert(isfi(d_hamming));
    assert(isequal(numerictype(d_hamming), numerictype(1, 16, 14)));
    
    assert(isfi(d_mel_filters));
    assert(isequal(numerictype(d_mel_filters), numerictype(1, 16, 14)));

    
    d_smooth = d_frame .* d_hamming;
    
    d_smooth = sfi(d_smooth, 32, 24);
    d_fft = fi_fft(d_smooth);
    d_fft = abs(d_fft(1:65));
    
    d_mel_resp = d_mel_filters * d_fft;
    d_log_resp = (d_mel_resp.^2);
    d_log_resp = log(double(d_log_resp));
    d_log_resp = sfi(d_log_resp, 32, 24);
    d_mel = fi_fft([d_log_resp' 0 0 0 0 0 0]');
    d_mel = abs(d_mel);
    d_mel = d_mel(2:13);
