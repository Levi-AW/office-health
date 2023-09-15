@echo off
title Office Health Tool
echo Please set desired time interval in seconds
set /p Input=Seconds: 
:LOOP
echo You have set the interval to %input% seconds.
pause
cls
echo Counting Down...
Timeout /t %input% /nobreak >nul
set "file=alert.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
echo Time to get up, stretch, move around and refocus your eyes
echo To refocus your eyes, stare at an object in a distance more than 5 meters for at least 15 seconds
pause
echo Press any key to restart the timer
pause
goto LOOP