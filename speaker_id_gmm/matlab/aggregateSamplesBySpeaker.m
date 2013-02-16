function [speakerIds, bySpeaker] = aggregateSamplesBySpeaker(samples)
    fprintf('Aggregating data by speaker labels\r\n');
    clear bySpeaker
    for ii = 1:length(samples)
        speakerId = samples(ii).speakerId;
        bySpeaker.(speakerId) = struct();
        bySpeaker.(speakerId).mfcc = {};
    end
    clear ii speakerId

    speakerIds = fieldnames(bySpeaker)';

    for ii = 1:length(samples)
        speakerId = samples(ii).speakerId;
        for jj = 1:length(samples(ii).segments)
            bySpeaker.(speakerId).mfcc{end+1} = samples(ii).mfcc{jj};
        end
    end

    intId = 1;
    for speakerId = speakerIds
        speakerId = char(speakerId);
        bySpeaker.(speakerId).mfcc_flat = cat(1, bySpeaker.(speakerId).mfcc{:});
        bySpeaker.(speakerId).id = intId;
        intId = intId + 1;
    end

    clear ii jj intId speakerId
    
    fprintf('Finished!\r\n\r\n');
end