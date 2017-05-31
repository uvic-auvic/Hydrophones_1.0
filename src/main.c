/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/


#include "stm32f4xx.h"
#include <stdint.h>
#include "arm_math.h"
#include "main.h"

#include "arm_common_tables.h"
#include "arm_fft_bin_data.h"
			

static float32_t testOutput[4096];
static float32_t magOutput[4096];

uint32_t fftSize;
uint32_t ifftFlag;

float32_t max;
uint32_t max_index;

int main(void)
{


	//; CPACR is located at address 0xE000ED88
	__asm__(" LDR.W   R0, =0xE000ED88");
	//"; Read CPACR "
	__asm__("LDR     R1, [R0] ");
				//; Set bits 20-23 to enable CP10 and CP11 coprocessors
	__asm__(" ORR     R1, R1, #(0xF << 20)");
				// Write back the modified value to the CPACR
	__asm__("STR     R1, [R0]");
				//; wait for store to complete "
	__asm__("DSB ");
				//;reset pipeline now the FPU is enabled
	__asm__("ISB");

	fftSize = 256u;
	ifftFlag = 0u;

	arm_rfft_fast_instance_f32 S;
	arm_rfft_fast_init_f32(&S, fftSize);

	//arm_cmplx_mag_f32(testInput_f32_10khz, testOutput, fftSize);

	arm_cfft_instance_f32 * Sint = &(S.Sint);
	Sint->fftLen = S.fftLenRFFT / 2;

	arm_cfft_f32( Sint, input_sine_1024, ifftFlag, 1);

	//arm_rfft_fast_f32(&S, input_sine_1024, testOutput, 0u);

	arm_cmplx_mag_f32(input_sine_1024, magOutput, fftSize);

	arm_max_f32(magOutput, fftSize, &max, &max_index);

	//arm_cfft_radix4_init_f32(&S, 1024u, 0, 0);
	//arm_radix4_butterfly_f32(testInput_f32_10khz, 1024u, twiddleCoef_1024, 0);

	for(;;);
}
