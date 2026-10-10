@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

set HOSTS=%SystemRoot%\System32\drivers\etc\hosts

:: PowerShell yordamida barcha kiritilgan domenlarni tozalash
powershell -Command "(Get-Content '%HOSTS%') | Where-Object { $_ -notmatch 'youtube|youtu\.be|instagram|tiktok|reddit|poki|crazygames|playhop|yandex|yagames|now\.gg|pogo|friv|kizi|armorgames|kongregate|roblox' } | Set-Content '%HOSTS%'"

ipconfig /flushdns
netsh interface ip delete arpcache

echo Successfully unblocked! All sites are accessible again.
pause
