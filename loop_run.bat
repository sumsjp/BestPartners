@echo off

REM LOOP COUNT
set loops=30

REM RUN daily_run.bat
for /l %%i in (1,1,%loops%) do (
    echo ========================================
    echo RUN %%i / %loops% 
    echo ========================================
    call daily_run.bat
    
    REM Wait 1 minute
    timeout /t 60 /nobreak
)

echo ========================================
echo ALL DONE
echo ========================================
pause