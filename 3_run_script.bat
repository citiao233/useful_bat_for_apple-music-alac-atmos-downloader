@echo off
setlocal

:choose_mode
echo Choose mode:
echo 1. main
echo 2. main_select
echo 3. main_atmos

set /p mode="Enter mode number: "

if "%mode%"=="1" (
    set script=main.go
) else if "%mode%"=="2" (
    set script=main_select.go
) else if "%mode%"=="3" (
    set script=main_atmos.go
) else (
    echo Invalid mode number
    goto choose_mode
)

set /p "link=Enter link: "

go run %script% "%link%"
echo Script finished.
timeout /t 2 /nobreak >nul

goto choose_mode

endlocal
