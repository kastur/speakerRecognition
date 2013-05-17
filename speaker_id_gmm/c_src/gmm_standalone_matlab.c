#include <string.h>
#include <math.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h> 
#include "codegen/lib/gaussmixp_unloop/gaussmixp.h"
//#include "hexagon_sim_timer.h"

#define FORMAT "%lf\n"
#define PREC "%.3f\n"
#define NR_SPEAKER 5
#define SAMPLE_SIZE 167

//typedef double real_T;

typedef struct by_speaker {
	char name[10];
	real_T m_m[108];
	real_T m_v[108];
	real_T m_w[9];
} by_speaker;

static const int num_mixture = 9;
static const int num_speaker = NR_SPEAKER;
static by_speaker speaker_gmm[NR_SPEAKER];
static real_T test_sample[SAMPLE_SIZE][12];
static char ground_truth[10];
static char filename[100];
static char str[5];
static real_T logprob[NR_SPEAKER];
//static real_T logprob1[NR_SPEAKER]
static real_T min, max;

// double gaussmixp(real_T x[12], real_T mu[108], real_T sigma[108], real_T w[9]) {
// 	int i = 0, j = 0;
// 	real_T score = 0;
// 	for (i = 0; i < 9; i++) {
// 		real_T y = 0;
// 		for (j = 0; j < 12; j++) {
// 			real_T m = mu[j * 9 + i];
// 			real_T s = 1.0 / sigma[j * 9 + i];
// 			//printf("%d %d %lf %lf\n", j, i, m, s);
// 			y += (x[j] - m) * (x[j] - m) * s;
// 		}
// 		score += w[i] * (1.0/pow(6.828 ,6)) * (1.0 / pow(1.0,0.5)) * exp(-0.5 * y);
// 	}
// 	return log(score);
// }

real_T round_real(real_T x) {
	if (x > max) {
		max = x;
	}
	if (x < min) {
		min = x;
	}
	real_T result = 0;
	char buffer[128];
	memset(buffer, 0, sizeof(buffer));
	sprintf(buffer, PREC, x);
	sscanf(buffer, FORMAT, &result);
	return result;
}

int get_label(const char *name) {
	if (strcmp(name, "manae") == 0) {
		return 1;
	}
	if (strcmp(name, "manah") == 0) {
		return 2;
	}
	if (strcmp(name, "manaj") == 0) {
		return 3;
	}
	if (strcmp(name, "manal") == 0) {
		return 4;
	}
	if (strcmp(name, "manar") == 0) {
		return 5;
	}
	return -1;
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
				fscanf(fin, FORMAT, &speaker_gmm[i].m_m[j]);
				//speaker_gmm[i].m_m[j] = round_real(speaker_gmm[i].m_m[j]);
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
				fscanf(fin, FORMAT, &speaker_gmm[i].m_v[j]);
				//speaker_gmm[i].m_v[j] = round_real(speaker_gmm[i].m_v[j]);
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
				fscanf(fin, FORMAT, &speaker_gmm[i].m_w[j]);
				//speaker_gmm[i].m_w[j] = round_real(speaker_gmm[i].m_w[j]);
			}
			// for (j = 0; j < 9; j++) {
			// 	printf("%d: %lf\n", j, speaker_gmm[i].m_w[j]);
			// }
		}
	}
	printf("Finish reading gmms.\n");
	fclose(fin);
}

int load_test_sample (const char *file_name) {
	memset(test_sample, 0, sizeof(test_sample));
	printf("In load_test_sample\n");
	FILE *fin = fopen(file_name, "r");
	int num = -1;
	int n = -1;
	char buffer[100];
	memset(buffer, 0, sizeof(buffer));	
	fgets(buffer, sizeof(buffer), fin);

	fscanf(fin, "%d", &num);
	memset(ground_truth, 0, sizeof(ground_truth));
	fscanf(fin, "%s", ground_truth);
	printf("test data #%d: %s\n", num, ground_truth);
	fscanf(fin, "%d", &n);
	if (n != -1) {
		int i = 0, j = 0;
		for (i = 0; i < n; i++) {
			for (j = 0; j < 12; j++) {
				fscanf(fin, FORMAT, &test_sample[i][j]);
				//test_sample[i][j] = round_real(test_sample[i][j]);
			}
		}
		fclose(fin);
		return n;
	}
	else {
		fclose(fin);
		return -1;
	}

}

int main() {
  	srand(time(NULL));
	load_speaker_gmm();
	int k = 1, i = 0, j = 0;
	int correct = 0;
	
	// hexagon_sim_init_timer();
	// hexagon_sim_start_timer();

	//for (k = 1; k <= 48; k++) {
		memset(logprob, 0, sizeof(logprob));
		memset(filename, 0, sizeof(filename));
		memset(str, 0, sizeof(str));

		sprintf(str, "%d", k);
		strcpy(filename, "../../test_data_5/sample_data");
		strcat(filename, str);
		strcat(filename, ".txt");
		printf("%d %s\n", k, filename);

		int size = load_test_sample(filename);
		printf("%d\n", size);
		for (i = 0; i < size; i++) {
			/* gmm prob for each frame per each speaker */
			for (j = 0; j < num_speaker; j++) {
				by_speaker gmm = speaker_gmm[j];
				real_T result = gaussmixp(test_sample[i], gmm.m_m, gmm.m_v, gmm.m_w);
				logprob[j] += result;
			}
		}

		int max_prob = -1e6;
		int max_index = -1;
		for (j = 0; j < num_speaker; j++) {
			printf("result=");
			printf(FORMAT, logprob[j]);
			if (logprob[j] > max_prob) {
				max_prob = logprob[j];
				max_index = j;
			}
		}
		printf("speaker label = %d\n", (max_index + 1));
		// if (get_label(ground_truth) == (max_index + 1)) {
		// 	correct++;
		// }
	// }
	// printf("%d correct out of %d\n", correct, 48);
	// printf(PREC, min);
	// printf(PREC, max);


	// hexagon_sim_end_timer();
	// hexagon_sim_show_timer(stdout);
	
	return 0;
}