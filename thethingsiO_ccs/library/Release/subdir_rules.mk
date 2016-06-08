################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
main.obj: ../main.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib --abi=eabi -me --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/bas/workspace_v6_1/thethingsiO_lib" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/netapps/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/netapps/json/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/driverlib/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/inc/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/example/common" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink_extlib/provisioninglib" -g --define=cc3200 --define=__SL__ --define=ccs --diag_wrap=off --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="main.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

network_common.obj: C:/TI/CC3200SDK_1.2.0/cc3200-sdk/example/common/network_common.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib --abi=eabi -me --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/bas/workspace_v6_1/thethingsiO_lib" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/netapps/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/netapps/json/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/driverlib/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/inc/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/example/common" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink_extlib/provisioninglib" -g --define=cc3200 --define=__SL__ --define=ccs --diag_wrap=off --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="network_common.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pinmux.obj: ../pinmux.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib --abi=eabi -me --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/bas/workspace_v6_1/thethingsiO_lib" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/netapps/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/netapps/json/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/driverlib/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/inc/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/example/common" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink_extlib/provisioninglib" -g --define=cc3200 --define=__SL__ --define=ccs --diag_wrap=off --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="pinmux.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

startup_ccs.obj: C:/TI/CC3200SDK_1.2.0/cc3200-sdk/example/common/startup_ccs.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib --abi=eabi -me --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/bas/workspace_v6_1/thethingsiO_lib" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/netapps/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/netapps/json/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/driverlib/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/inc/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/example/common" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink_extlib/provisioninglib" -g --define=cc3200 --define=__SL__ --define=ccs --diag_wrap=off --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="startup_ccs.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

thethingsiO.obj: ../thethingsiO.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib --abi=eabi -me --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/bas/workspace_v6_1/thethingsiO_lib" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/netapps/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/netapps/json/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/driverlib/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/inc/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/example/common" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink_extlib/provisioninglib" -g --define=cc3200 --define=__SL__ --define=ccs --diag_wrap=off --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="thethingsiO.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

uart_if.obj: C:/TI/CC3200SDK_1.2.0/cc3200-sdk/example/common/uart_if.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib --abi=eabi -me --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/bas/workspace_v6_1/thethingsiO_lib" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/netapps/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/netapps/json/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/driverlib/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/inc/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/example/common" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.2.0/cc3200-sdk/simplelink_extlib/provisioninglib" -g --define=cc3200 --define=__SL__ --define=ccs --diag_wrap=off --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="uart_if.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


