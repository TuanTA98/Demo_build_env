@SET PATH=C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files\dotnet\;C:\Users\HP\AppData\Local\Microsoft\WindowsApps;;C:\Users\HP\AppData\Local\Programs\Microsoft VS Code\bin
@SET CPU_TYPE=STM32F103C8
@SET CPU_VENDOR=STMicroelectronics
@SET UV2_TARGET=STM32_WP
@SET CPU_CLOCK=0x007A1200

@echo Building...

@REM Incase use specific file for each C file
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\startup_stm32f103xb._ac"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\main.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\stm32f1xx_it.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\stm32f1xx_hal_msp.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\stm32f1xx_hal_gpio_ex.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\stm32f1xx_hal_tim.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\stm32f1xx_hal_tim_ex.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\stm32f1xx_hal.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\stm32f1xx_hal_rcc.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\stm32f1xx_hal_rcc_ex.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\stm32f1xx_hal_gpio.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\stm32f1xx_hal_dma.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\stm32f1xx_hal_cortex.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\stm32f1xx_hal_pwr.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\stm32f1xx_hal_flash.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\stm32f1xx_hal_flash_ex.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\stm32f1xx_hal_exti.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\system_stm32f1xx.__i"
@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\TestSuite\List_TestSuite\%TS%\%TS%.__i"

@REM Incase use a file to save compiler option
@REM "C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmClang.exe" @"..\build_env\Compiler_Option.__i" -o ../output/main.o -MMD "../../Core/Src/main.c"

@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\ArmLink" --Via "..\TestSuite\List_TestSuite\%TS%\STM32_WP.lnp"

@"C:\Users\HP\AppData\Local\Keil_v5\ARM\ARMCLANG\Bin\fromelf.exe" "..\output\STM32_WP.axf" --i32combined --output "..\output\STM32_WP.hex"

@echo Done!