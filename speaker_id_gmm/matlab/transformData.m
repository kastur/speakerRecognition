%%
output_file = fopen('sample_data.txt', 'w');
fprintf(output_file, 'this is testing sample data (2000):\n');
for i = 1 : 1
    i
    fprintf(output_file, '%d\n', i);
    sample = testSamples(i);
    fprintf(output_file, '%s\n', sample.speakerId);
    mfcc = sample.mfcc{1,1};
    [n, m] = size(mfcc);
    for ii = 1 : m
        for jj = 1 : n
            fprintf(output_file, '%f\n', mfcc(jj, ii));
        end
    end
end
fclose(output_file);

%%
output_file1 = fopen('by_speaker.txt', 'w');
fprintf(output_file1, 'this is gmm for each speaker:\n');
i = 1;
for speakerId = speakerIds
    i = i + 1
    id = char(speakerId)
    gmm = bySpeaker.(id).gmm;
    fprintf(output_file1, '%s\n', id);
    
    fprintf(output_file1, 'M\n');
    M = gmm.M;
    [n, m] = size(M);
    for ii = 1 : m
        for jj = 1 : n
            fprintf(output_file1, '%f\n', M(jj, ii));
        end
    end
    
    fprintf(output_file1, 'V\n');
    V = gmm.V;
    [n, m] = size(V);
    for ii = 1 : m
        for jj = 1 : n
            fprintf(output_file1, '%f\n', V(jj, ii));
        end
    end
    
    fprintf(output_file1, 'W\n');
    W = gmm.W;
    [n, m] = size(W);
    for ii = 1 : m
        for jj = 1 : n
            fprintf(output_file1, '%f\n', W(jj, ii));
        end
    end
end
        
fclose(output_file1);
