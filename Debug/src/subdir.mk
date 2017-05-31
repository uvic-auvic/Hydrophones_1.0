################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/arm_bitreversal.c \
../src/arm_cfft_f32.c \
../src/arm_cfft_radix8_f32.c \
../src/arm_cmplx_mag_f32.c \
../src/arm_common_tables.c \
../src/arm_max_f32.c \
../src/arm_rfft_fast_f32.c \
../src/arm_rfft_fast_init_f32.c \
../src/main.c \
../src/syscalls.c \
../src/system_stm32f4xx.c 

S_UPPER_SRCS += \
../src/arm_bitreversal2.S 

OBJS += \
./src/arm_bitreversal.o \
./src/arm_bitreversal2.o \
./src/arm_cfft_f32.o \
./src/arm_cfft_radix8_f32.o \
./src/arm_cmplx_mag_f32.o \
./src/arm_common_tables.o \
./src/arm_max_f32.o \
./src/arm_rfft_fast_f32.o \
./src/arm_rfft_fast_init_f32.o \
./src/main.o \
./src/syscalls.o \
./src/system_stm32f4xx.o 

S_UPPER_DEPS += \
./src/arm_bitreversal2.d 

C_DEPS += \
./src/arm_bitreversal.d \
./src/arm_cfft_f32.d \
./src/arm_cfft_radix8_f32.d \
./src/arm_cmplx_mag_f32.d \
./src/arm_common_tables.d \
./src/arm_max_f32.d \
./src/arm_rfft_fast_f32.d \
./src/arm_rfft_fast_init_f32.d \
./src/main.d \
./src/syscalls.d \
./src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F411VETx -DSTM32F4 -DSTM32 -DSTM32F411E_DISCO -DDEBUG -DUSE_STDPERIPH_DRIVER -DSTM32F411xE -I"C:/Users/abates/workspace/Hydrophones_1.0/inc" -I"C:/Users/abates/workspace/Hydrophones_1.0/CMSIS/core" -I"C:/Users/abates/workspace/Hydrophones_1.0/CMSIS/device" -I"C:/Users/abates/workspace/Hydrophones_1.0/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F411VETx -DSTM32F4 -DSTM32 -DSTM32F411E_DISCO -DDEBUG -DUSE_STDPERIPH_DRIVER -DSTM32F411xE -I"C:/Users/abates/workspace/Hydrophones_1.0/inc" -I"C:/Users/abates/workspace/Hydrophones_1.0/CMSIS/core" -I"C:/Users/abates/workspace/Hydrophones_1.0/CMSIS/device" -I"C:/Users/abates/workspace/Hydrophones_1.0/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


