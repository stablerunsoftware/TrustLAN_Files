@echo off
setlocal

rem Get the current username
set "username=%USERNAME%"

echo Removing HyperTunnel files and folders...

rem Remove files
del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\HyperTunnel.lnk" /f /q
del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\stablerunsoftware\HyperTunnel.lnk" /f /q
del "C:\Users\%username%\Desktop\HyperTunnel.lnk" /f /q

rem Remove folders
rmdir "C:\Users\%username%\AppData\Roaming\stablerunsoftware\HyperTunnel" /s /q

echo HyperTunnel files and folders removed successfully.

endlocal
PAUSE
