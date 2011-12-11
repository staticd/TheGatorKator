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
../Vectors_intr.asm \
../c6713dskinit.asm 

C_SRCS += \
../c6713dskinit.c \
../gator_kator.c 

OBJS += \
./Vectors_intr.obj \
./c6713dskinit.obj \
./gator_kator.obj 

ASM_DEPS += \
./Vectors_intr.pp \
./c6713dskinit.pp 

C_DEPS += \
./c6713dskinit.pp \
./gator_kator.pp 

C_DEPS__QUOTED += \
"c6713dskinit.pp" \
"gator_kator.pp" 

OBJS__QUOTED += \
"Vectors_intr.obj" \
"c6713dskinit.obj" \
"gator_kator.obj" 

ASM_DEPS__QUOTED += \
"Vectors_intr.pp" \
"c6713dskinit.pp" 

ASM_SRCS__QUOTED += \
"../Vectors_intr.asm" \
"../c6713dskinit.asm" 

C_SRCS__QUOTED += \
"../c6713dskinit.c" \
"../gator_kator.c" 


