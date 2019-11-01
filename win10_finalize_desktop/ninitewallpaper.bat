SET curdir=%cd%
SET CurrentDir="%~dp0" 
mkdir C:\ribbit.tmp\
robocopy /S %curdir% C:\ribbit.tmp\


reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d "" /f 
reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d C:\ribbit.tmp\wallpaper.bmp /f
reg add "HKEY_CURRENT_USER\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters 
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True

RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters 
pause

cd C:\ribbit.tmp\
ninite.exe
exit