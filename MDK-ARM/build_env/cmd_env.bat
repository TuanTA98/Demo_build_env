@SET cmd=%1

@if %cmd% == build (
    set "TS=%2"
    cmd_build.bat
)

@if %cmd% == clean (
    cmd_clean.bat
)

