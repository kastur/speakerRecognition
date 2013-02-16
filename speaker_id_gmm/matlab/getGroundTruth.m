function [groundTruth] = getGroundTruth(samples, speakerIds, bySpeaker)
    fprintf('Get the ground truth (integer speaker id) for each sample');
    for ii=1:length(samples)
        [char(samples(ii).speakerId), sum(ismember(speakerIds, char(samples(ii).speakerId)))]
        if sum(ismember(speakerIds, char(samples(ii).speakerId))) == 1
            groundTruth(ii) = bySpeaker.(char(samples(ii).speakerId)).id;
        else
            groundTruth(ii) = -1;
        end
    end
end