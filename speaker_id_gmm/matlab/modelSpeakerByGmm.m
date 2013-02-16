function [speakerIds, bySpeaker] = modelSpeakerByGmm(speakerIds, bySpeaker, kmixtures)
    fprintf('Computing GMM for each speaker\r\n');
    for speakerId = speakerIds
        speakerId = char(speakerId);
        fprintf('Modeling GMM for speaker %s.\r\n', speakerId); 
        [gmm.M, gmm.V, gmm.W, gmm.G, gmm.F, gmm.PP, gmm.GG] = gaussmix(bySpeaker.(speakerId).mfcc_flat, [], [], kmixtures, 'kf');
        bySpeaker.(speakerId).gmm = gmm;
    end
    clear speakerId
    
    fprintf('Finished!\r\n\r\n');
end
