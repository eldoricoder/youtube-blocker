@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

set HOSTS=%SystemRoot%\System32\drivers\etc\hosts

:: Read-only atributini yechish (faylga yozish imkonini berish uchun)
attrib -r "%HOSTS%" >nul 2>&1

:: PowerShell yordamida barchasini tozalash
powershell -Command "(Get-Content '%HOSTS%') | Where-Object { $_ -notmatch 'youtube|youtu\.be|instagram|tiktok|reddit|yandex|yastatic|poki|crazygames|playhop|now\.gg|pogo|friv|kizi|armorgames|kongregate|roblox' } | Set-Content '%HOSTS%'"

:: Faylga qaytadan Read-only (+r) atributini o'rnatish
attrib +r "%HOSTS%"

:: Oddiy foydalanuvchilar (Users) uchun tahrirlashni bloklash
icacls "%HOSTS%" /deny Users:(W) >nul 2>&1

ipconfig /flushdns
netsh interface ip delete arpcache

echo Successfully unblocked!
pause
