################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
../C6713dsk.cmd 

LIB_SRCS += \
../csl6713.lib \
../dsk6713bsl.lib \
../rts6700.lib 

ASM_SRCS += \
../Vectors_intr.asm 

C_SRCS += \
../block_dc.c \
../c6713dskinit.c \
../detect_envelope.c \
../fir_filter.c \
../frame_and_filter.c \
../gator_kator.c 

OBJS += \
./Vectors_intr.obj \
./block_dc.obj \
./c6713dskinit.obj \
./detect_envelope.obj \
./fir_filter.obj \
./frame_and_filter.obj \
./gator_kator.obj 

ASM_DEPS += \
./Vectors_intr.pp 

C_DEPS += \
./block_dc.pp \
./c6713dskinit.pp \
./detect_envelope.pp \
./fir_filter.pp \
./frame_and_filter.pp \
./gator_kator.pp 

C_DEPS__QUOTED += \
"block_dc.pp" \
"c6713dskinit.pp" \
"detect_envelope.pp" \
"fir_filter.pp" \
"frame_and_filter.pp" \
"gator_kator.pp" 

OBJS__QUOTED += \
"Vectors_intr.obj" \
"block_dc.obj" \
"c6713dskinit.obj" \
"detect_envelope.obj" \
"fir_filter.obj" \
"frame_and_filter.obj" \
"gator_kator.obj" 

ASM_DEPS__QUOTED += \
"Vectors_intr.pp" 

ASM_SRCS__QUOTED += \
"../Vectors_intr.asm" 

C_SRCS__QUOTED += \
"../block_dc.c" \
"../c6713dskinit.c" \
"../detect_envelope.c" \
"../fir_filter.c" \
"../frame_and_filter.c" \
"../gator_kator.c" 


