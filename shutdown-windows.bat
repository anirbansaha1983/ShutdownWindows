@echo off
rem Request a full shutdown immediately, without forcing applications to close.
rem Save your work before running this file.
shutdown.exe /s /t 0
if errorlevel 1 (
    echo Shutdown could not be started. Check the message above.
    pause
)
