################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
Vectors_intr.obj: ../Vectors_intr.asm $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c6000/bin/cl6x" -mv-mv6710+ -g --define=CHIP_6713 --include_path="C:/ti/ccsv5/tools/compiler/c6000/include" --include_path="C:/Users/staticd/workspace_v5_1/TheGatorKator/local_include" --include_path="C:/Users/staticd/Documents/COLLEGE/EEL 4935 DSP_FPGA/misc_contents/lib_and_h" --verbose --display_error_number --diag_warning=225 --mem_model:data=far --abi=coffabi --preproc_with_compile --preproc_dependency="Vectors_intr.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

block_dc.obj: ../block_dc.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c6000/bin/cl6x" -mv-mv6710+ -g --define=CHIP_6713 --include_path="C:/ti/ccsv5/tools/compiler/c6000/include" --include_path="C:/Users/staticd/workspace_v5_1/TheGatorKator/local_include" --include_path="C:/Users/staticd/Documents/COLLEGE/EEL 4935 DSP_FPGA/misc_contents/lib_and_h" --verbose --display_error_number --diag_warning=225 --mem_model:data=far --abi=coffabi --preproc_with_compile --preproc_dependency="block_dc.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

c6713dskinit.obj: ../c6713dskinit.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c6000/bin/cl6x" -mv-mv6710+ -g --define=CHIP_6713 --include_path="C:/ti/ccsv5/tools/compiler/c6000/include" --include_path="C:/Users/staticd/workspace_v5_1/TheGatorKator/local_include" --include_path="C:/Users/staticd/Documents/COLLEGE/EEL 4935 DSP_FPGA/misc_contents/lib_and_h" --verbose --display_error_number --diag_warning=225 --mem_model:data=far --abi=coffabi --preproc_with_compile --preproc_dependency="c6713dskinit.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

detect_envelope.obj: ../detect_envelope.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c6000/bin/cl6x" -mv-mv6710+ -g --define=CHIP_6713 --include_path="C:/ti/ccsv5/tools/compiler/c6000/include" --include_path="C:/Users/staticd/workspace_v5_1/TheGatorKator/local_include" --include_path="C:/Users/staticd/Documents/COLLEGE/EEL 4935 DSP_FPGA/misc_contents/lib_and_h" --verbose --display_error_number --diag_warning=225 --mem_model:data=far --abi=coffabi --preproc_with_compile --preproc_dependency="detect_envelope.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

fir_filter.obj: ../fir_filter.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c6000/bin/cl6x" -mv-mv6710+ -g --define=CHIP_6713 --include_path="C:/ti/ccsv5/tools/compiler/c6000/include" --include_path="C:/Users/staticd/workspace_v5_1/TheGatorKator/local_include" --include_path="C:/Users/staticd/Documents/COLLEGE/EEL 4935 DSP_FPGA/misc_contents/lib_and_h" --verbose --display_error_number --diag_warning=225 --mem_model:data=far --abi=coffabi --preproc_with_compile --preproc_dependency="fir_filter.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

frame_and_filter.obj: ../frame_and_filter.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c6000/bin/cl6x" -mv-mv6710+ -g --define=CHIP_6713 --include_path="C:/ti/ccsv5/tools/compiler/c6000/include" --include_path="C:/Users/staticd/workspace_v5_1/TheGatorKator/local_include" --include_path="C:/Users/staticd/Documents/COLLEGE/EEL 4935 DSP_FPGA/misc_contents/lib_and_h" --verbose --display_error_number --diag_warning=225 --mem_model:data=far --abi=coffabi --preproc_with_compile --preproc_dependency="frame_and_filter.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

gator_kator.obj: ../gator_kator.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c6000/bin/cl6x" -mv-mv6710+ -g --define=CHIP_6713 --include_path="C:/ti/ccsv5/tools/compiler/c6000/include" --include_path="C:/Users/staticd/workspace_v5_1/TheGatorKator/local_include" --include_path="C:/Users/staticd/Documents/COLLEGE/EEL 4935 DSP_FPGA/misc_contents/lib_and_h" --verbose --display_error_number --diag_warning=225 --mem_model:data=far --abi=coffabi --preproc_with_compile --preproc_dependency="gator_kator.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


