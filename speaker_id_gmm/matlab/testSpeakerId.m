%function [testGuess, testTruth, logprob] = testSpeakerId(testSamples, speakerIds, bySpeaker)
[testGuess, logprob] = classifyUtterancesByGmm(testSamples, speakerIds, bySpeaker);
testTruth = getGroundTruth(testSamples, speakerIds, bySpeaker);
sum(testGuess == testTruth)
size(testSamples)
%end

% result: 1738 / 2000