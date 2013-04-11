#include "codegen/lib/gaussmixp/gaussmixp.h"
#include <string.h>
#include <time.h>
#include "hexagon_sim_timer.h"
#define NUM_ITERATION 1
typedef struct by_speaker {
	char name[10];
	double m_m[108];
	double m_v[108];
	double m_w[9];
} by_speaker;

const int num_speaker = 5;
by_speaker speaker_gmm[5];
double test_sample[2004];
char ground_truth[10];

void load_test_sample () {
	printf("In load_test_sample\n");
	FILE *fin = fopen("sample_data.txt", "r");
	int num = -1;
	char buffer[100];
	memset(buffer, 0, sizeof(buffer));
	fgets(buffer, sizeof(buffer), fin);

	fscanf(fin, "%d", &num);
	memset(ground_truth, 0, sizeof(ground_truth));
	fscanf(fin, "%s", ground_truth);
	printf("test data #%d: %s\n", num, ground_truth);
	
	int i = 0;
	for (i = 0; i < 2004; i++) {
		fscanf(fin, "%lf", &test_sample[i]);
	}
	
//	for (i = 0; i < 2004; i++) {
//		printf("%lf ", test_sample[i]);
//	}
//	printf("\n");
	fclose(fin);
}

void load_speaker_gmm () {
	printf("In load_speaker_gmm\n");
	memset(speaker_gmm, 0, sizeof(speaker_gmm));
	char buffer[100];
	memset(buffer, 0, sizeof(buffer));
	FILE *fin = fopen("by_speaker.txt", "r");
	fgets(buffer, sizeof(buffer), fin);

	int i = 0;
	for (i = 0; i < num_speaker; i++) {
		// get name
		memset(buffer, 0, sizeof(buffer));
		fgets(buffer, sizeof(buffer), fin);
		// printf("*%s*\n", buffer);
		// if (strcmp(buffer, "manae\n")) {
		// 	printf("equals!");
		// }
		strncpy(speaker_gmm[i].name, buffer, strlen(buffer) - 1);
		//printf("%d: %s ", i, speaker_gmm[i].name);


		// get M
		memset(buffer, 0, sizeof(buffer));
		fgets(buffer, sizeof(buffer), fin);
		if (strncmp(buffer, "M\n", 2) == 0) {
			//printf("read M!\n");
			int j = 0;
			for (j = 0; j < 108; j++) {
				fscanf(fin, "%lf\n", &speaker_gmm[i].m_m[j]);
			}
			// for (j = 0; j < 108; j++) {
			// 	printf("%d: %lf\n", j, speaker_gmm[i].m_m[j]);
			// }
		}

		// get V
		memset(buffer, 0, sizeof(buffer));
		fgets(buffer, sizeof(buffer), fin);
		if (strncmp(buffer, "V\n", 2) == 0) {
			//printf("read V!\n");
			int j = 0;
			for (j = 0; j < 108; j++) {
				fscanf(fin, "%lf\n", &speaker_gmm[i].m_v[j]);
			}
			// for (j = 0; j < 108; j++) {
			// 	printf("%d: %lf\n", j, speaker_gmm[i].m_v[j]);
			// }
		}

		// get W
		memset(buffer, 0, sizeof(buffer));
		fgets(buffer, sizeof(buffer), fin);
		if (strncmp(buffer, "W\n", 2) == 0) {
			//printf("read W!\n");
			int j = 0;
			for (j = 0; j < 9; j++) {
				fscanf(fin, "%lf\n", &speaker_gmm[i].m_w[j]);
			}
			// for (j = 0; j < 9; j++) {
			// 	printf("%d: %lf\n", j, speaker_gmm[i].m_w[j]);
			// }
		}
	}
	printf("Finish reading gmms.\n");
	fclose(fin);
}

int main() {
	load_speaker_gmm();
	load_test_sample();
	printf("In main\n");

	double lp[167];

	double logprob[num_speaker];
	memset(logprob, 0, sizeof(logprob));
	int i = 0;
	//double total = 0;

//	struct timeval tv;
//	struct timeval start_tv;
//	gettimeofday(&start_tv, NULL);
	int max_index = -1;
  double max = 0;
  hexagon_sim_init_timer();
  int ii = 0;
  for (ii = 0; ii < NUM_ITERATION; ii++) {
  hexagon_sim_start_timer();
  for (i = 0; i < num_speaker; i++) {
		by_speaker gmm = speaker_gmm[i];
		//double hyp;
		logprob[i] = 0;
		gaussmixp(test_sample, gmm.m_m, gmm.m_v, gmm.m_w, lp);
		int j = 0;
		for (j = 0; j < 167; j++) {
			logprob[i] += lp[j];
		}
		//total += logprob[i];
//		printf("for speaker %d, prob=%lf\n", i, logprob[i]);
	}

//	gettimeofday(&tv, NULL);
//	double elapsed = (tv.tv_sec - start_tv.tv_sec) + (tv.tv_usec - start_tv.tv_usec) / 1000000.0;

//	double avg = total / num_speaker;
	max = -1e20;
	max_index = -1;
	for (i = 0; i < num_speaker; i++) {
		//logprob[i] = logprob[i] - avg;
		if (logprob[i] > max) {
			max = logprob[i];
			max_index = i;
		}
		//printf("%lf\n", logprob[i]);
	}
  hexagon_sim_end_timer();
  }
  hexagon_sim_show_timer(stdout);
	printf("max prob is at speaker #%d = %lf\n", (max_index + 1), max);
//	printf("GMM time: %lf\n", elapsed);

	// printf("lp:\n");
	// for (i = 0; i < 167; i++) {
	// 	printf("%lf ", lp[i]);
	// }
	// printf("\n");

	// printf("rp:\n");
	// for (i = 0; i < 1503; i++) {
	// 	printf("%lf ", rp[i]);
	// }
	// printf("\n");

	// printf("kh:\n");
	// for (i = 0; i < 167; i++) {
	// 	printf("%lf ", kh[i]);
	// }
	// printf("\n");

	// printf("kp:\n");
	// for (i = 0; i < 167; i++) {
	// 	printf("%lf ", kp[i]);
	// }
	// printf("\n");

}
