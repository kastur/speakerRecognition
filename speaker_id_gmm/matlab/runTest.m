fprintf('Adding paths for voicebox and removeSilence\r\n')
cd ~/workspace/speaker_id/speaker_id_gmm/voicebox/
addpath(pwd);

cd ~/workspace/speaker_id/speaker_id_gmm/silenceRemoval/
addpath(pwd);

cd ~/workspace/speaker_id/speaker_id_gmm
load('~/workspace/speaker_id/speaker_id_gmm/trained_gmm.mat');
testSamples = loadSamples('~/workspace/speaker_id/tidigits_wav/test', '*.wav');

%%
[testGuess, testTruth, logprob] = testSpeakerId(testSamples, speakerIds, bySpeaker);