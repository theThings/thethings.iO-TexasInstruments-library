################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./main.obj" \
"./network_common.obj" \
"./pinmux.obj" \
"./startup_ccs.obj" \
"./thethingsiO.obj" \
"./uart_if.obj" \
"../cc3200v1p32.cmd" \
$(GEN_CMDS__FLAG) \
-l"libc.a" \
-l"C:/TI/CC3200SDK_1.2.0/cc3200-sdk/example/http_client_demo/ccs/../../../driverlib/ccs/Release/driverlib.a" \
-l"C:/TI/CC3200SDK_1.2.0/cc3200-sdk/example/http_client_demo/ccs/../../../simplelink/ccs/NON_OS/simplelink.a" \
-lwebclient.a \
-ljson.a \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
test_ttiO.out \

EXE_OUTPUTS__QUOTED += \
"test_ttiO.out" \

BIN_OUTPUTS += \
test_ttiO.hex \

BIN_OUTPUTS__QUOTED += \
"test_ttiO.hex" \


# All Target
all: test_ttiO.out

# Tool invocations
test_ttiO.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM Linker'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib --abi=eabi -me -g --define=cc3200 --define=__SL__ --define=ccs --diag_wrap=off --display_error_number --diag_warning=225 -z -m"test_ttiO.map" --heap_size=0x800 --stack_size=0x800 -i"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/lib" -i"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" -i"C:/TI/CC3200SDK_1.2.0/cc3200-sdk/netapps/http/client/ccs/HTTPClientMinLib" -i"C:/TI/CC3200SDK_1.2.0/cc3200-sdk/netapps/json/ccs/Release/" --reread_libs --display_error_number --diag_wrap=off --warn_sections --xml_link_info="test_ttiO_linkInfo.xml" --rom_model -o "test_ttiO.out" $(ORDERED_OBJS)
	@echo 'Finished building target: $@'
	@echo ' '
	@$(MAKE) --no-print-directory post-build

test_ttiO.hex: $(EXE_OUTPUTS)
	@echo 'Invoking: ARM Hex Utility'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armhex"  -o "test_ttiO.hex" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building: $@'
	@echo ' '
	@$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(EXE_OUTPUTS__QUOTED)$(BIN_OUTPUTS__QUOTED)
	-$(RM) "main.pp" "network_common.pp" "pinmux.pp" "startup_ccs.pp" "thethingsiO.pp" "uart_if.pp" 
	-$(RM) "main.obj" "network_common.obj" "pinmux.obj" "startup_ccs.obj" "thethingsiO.obj" "uart_if.obj" 
	-@echo 'Finished clean'
	-@echo ' '

post-build:
	-"C:/TI/ccsv6/utils/tiobj2bin/tiobj2bin" "test_ttiO.out" "test_ttiO.bin" "C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armofd" "C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armhex" "C:/TI/ccsv6/utils/tiobj2bin/mkhex4bin"
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets

