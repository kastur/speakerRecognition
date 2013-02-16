%function [best_guess, logprob] = classifyUtterancesByGmm(samples, speakerIds, bySpeaker) 


fprintf('Adding paths for voicebox and removeSilence\r\n')
cd ~/workspace/speaker_id/speaker_id_gmm/voicebox/
addpath(pwd);
cd ~/workspace/speaker_id/speaker_id_gmm
samples = testSamples(1);

fprintf('Calculating posterior probabilties for each utterance from GMMs\n');
clear logprob
logprob = zeros(length(samples), length(speakerIds));
tStart=tic;
for ii = 1:length(samples)
    if mod(ii, 100) == 0
      fprintf('Classifying sample %d.\r\n', ii);
    end
    jj = 1;
    for speakerId = speakerIds
        speakerId = char(speakerId);
        gmm = bySpeaker.(speakerId).gmm;
        
        hyp = 0;
        for kk = 1 : 167 
            hyp = hyp + gaussmixp(samples(ii).mfcc{:}(kk,:), gmm.M, gmm.V, gmm.W);
        end
        logprob(ii, jj) =  hyp; 

%        hyp = sum(gaussmixp(cat(1, samples(ii).mfcc{:}), gmm.M, gmm.V, gmm.W))
%        logprob(ii, jj) =  hyp;
       jj = jj + 1;
    end

end


fprintf('Computing the log(P(input | speaker_x)) - mean(P(input | speaker_{x_1 ... x_m}))\r\b\n')
logratio = zeros(length(samples), size(logprob, 2));
for ii = 1:length(samples)
    for zz = 1:size(logprob,2)
        logratio(ii, zz) = logprob(ii, zz) - mean(logprob(ii, :));
    end
end

% Choose the model that maximizes the above ratio
[maxprob_guess, best_guess] = max(logratio');
tElapsed=toc(tStart)

% testTruth = getGroundTruth(testSamples, speakerIds, bySpeaker);
% 
% 
% sum(best_guess == testTruth)
% size(testSamples)