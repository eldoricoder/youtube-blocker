@echo off
net session >nul 2>&1 || (powershell -Command "Start-Process '%~0' -Verb RunAs" & exit /b)

set H=%SystemRoot%\System32\drivers\etc\hosts

powershell -Command "(Get-Content '%H%') | Where-Object { $_ -notmatch 'youtube|instagram|tiktok|reddit|yandex|poki|crazygames|gamedistribution|armorgames|kongregate|miniplay|silvergames|io8games' } | Set-Content '%H%'"

ipconfig /flushdns >nul