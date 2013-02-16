%%
function [samples] = loadSamples(filesDir, pattern)
    fprintf('Loading files from staging/\r\n')
    saved = pwd;
    cd(filesDir);
    sampleFiles = dir(pattern);

    for ii = 1:length(sampleFiles)
        if (mod(ii, 1000) == 0)
            fprintf('Processed %d\r\n.', ii);
        end
        samples(ii).name = sampleFiles(ii).name;
        split_underscore = regexp(samples(ii).name, '_', 'split');
        split_period = regexp(char(split_underscore(2)), '\.', 'split');
        samples(ii).speakerId = char(split_underscore(1));
        samples(ii).transcript = char(split_period(1));
        samples(ii).data = wavread(samples(ii).name);
        samples(ii).speakerId;
    end

    clear ii
    clear sampleFiles;
    clear split_period
    clear split_underscore
    cd(saved);

    %%
    fprintf('Segmenting utterances ON silence\r\n');
    for ii = 1:length(samples)
        samples(ii).segments = segmentOnSilence(samples(ii).data, 8000);
    end

    %%
    fprintf('Computing MFCCs for each segment\r\n');
    for ii = 1:length(samples)
        samples(ii).mfcc = {};
        for jj = 1:length(samples(ii).segments)
            samples(ii).mfcc{jj} = melcepst(samples(ii).segments{jj}, 8000);  %add 'EdD' parameters
        end
    end

    fprintf('Finished!\r\n\r\n');
end