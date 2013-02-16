%%
fprintf('Adding paths for voicebox and removeSilence\r\n')
cd ~/workspace/speaker_id/speaker_id_gmm/voicebox/
addpath(pwd);

cd ~/workspace/speaker_id/speaker_id_gmm/silenceRemoval/
addpath(pwd);

%%
cd ~/workspace/speaker_id/speaker_id_gmm
trainSamples = loadSamples('~/workspace/speaker_id/tidigits_wav/train', '*.wav');

%%
[speakerIds, bySpeaker] = aggregateSamplesBySpeaker(trainSamples);
n_mixtures = 9;
[speakerIds, bySpeaker] = modelSpeakerByGmm(speakerIds, bySpeaker, n_mixtures);

%%
