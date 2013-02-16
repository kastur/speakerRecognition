
fprintf('Adding paths for voicebox and removeSilence\r\n')
cd voicebox/
addpath(pwd);
cd ..

cd silenceRemoval/
addpath(pwd);
cd ..
%MIXTURES = [2, 3, 5, 8, 13, 21, 34];

MIXTURES = [2, 3, 5, 8, 13, 21];
%MIXTURES = [1, 21, 34];
OFFSETS = [-6 -4 -2 -1 0 +1 +2 +4 +6];
%OFFSETS = [0];

saved_model = 1;

testSamples = {};
for ii = 1:length(OFFSETS)
  testSamples{ii}.data = loadSamples(sprintf('~/speaker_id/tidigits_wav/off%+d', OFFSETS(ii)), '*.wav');
end

for mixture = MIXTURES
  fprintf('training model on n_mixtures = %d\r\n', mixture);
  n_mixtures = mixture;

  if (saved_model)
   load(sprintf('~/speaker_id/results/speaker_id_mix_%d.mat', mixture));
   speakerIds = model.speakerIds;
   bySpeaker = model.bySpeaker;
  else
    runSpeakerId; % populated speakerIds and bySpeaker.
    model.speakerIds = speakerIds;
    model.bySpeaker = bySpeaker;
    save(sprintf('~/speaker_id/results/speaker_id_mix_%d.mat', mixture), 'model');
  end

  for ii = 1:length(OFFSETS)
    offset = OFFSETS(ii);
    [testGuess, testTruth, logprob] = testSpeakerId(testSamples{ii}.data, speakerIds, bySpeaker);

    n_correct = sum(testGuess == testTruth);
    total = length(testGuess);

    confus = confusionmat(testTruth, testGuess);
    confus_normalized = confus ./ repmat(sum(confus, 2), 1, size(confus, 2));
   
    result = {};
    result.mixtures = mixture;
    result.offset = offset;
    result.ghat = testGuess;
    result.g = testTruth;
    result.n_correct = n_correct;
    result.total = total;
    result.confus = confus;
    result.confus_normalized = confus_normalized;
    result.logprob = logprob;
    results{ii} = result;
  end

  for ii = 1:length(OFFSETS)
    offset = OFFSETS(ii);
    result = results{ii};
    save(sprintf('~/speaker_id/results/speaker_id_mix_%d_offset_%+d.mat', mixture, offset), 'result');
  end

  save(sprintf('~/speaker_id/results/speaker_id_mix_%d_offset_all.mat', mixture), 'results');
end
