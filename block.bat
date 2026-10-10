@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

set HOSTS=%SystemRoot%\System32\drivers\etc\hosts

echo # --- SCHOOL ULTIMATE BLOCKLIST START --- >> %HOSTS%

:: YouTube & Social Media
for %%d in (youtube.com www.youtube.com youtu.be instagram.com www.instagram.com tiktok.com www.tiktok.com reddit.com www.reddit.com) do (
    echo 127.0.0.1 %%d >> %HOSTS%
    echo ::1 %%d >> %HOSTS%
)

:: Yandex (All regions + Games + Static CDN - Yandex completely dead)
for %%d in (yandex.uz www.yandex.uz yandex.ru www.yandex.ru yandex.com www.yandex.com yandex.kz www.yandex.kz yandex.by www.yandex.by yandex.net www.yandex.net yagames.com www.yagames.com games.yandex.ru games.yandex.uz games.yandex.com yastatic.net www.yastatic.net) do (
    echo 127.0.0.1 %%d >> %HOSTS%
    echo ::1 %%d >> %HOSTS%
)

:: Other Game Platforms
for %%d in (poki.com www.poki.com poki-gdn.com img.poki.com crazygames.com www.crazygames.com playhop.com www.playhop.com now.gg www.now.gg pogo.com www.pogo.com friv.com www.friv.com kizi.com www.kizi.com armorgames.com kongregate.com roblox.com www.roblox.com) do (
    echo 127.0.0.1 %%d >> %HOSTS%
    echo ::1 %%d >> %HOSTS%
)

echo # --- SCHOOL ULTIMATE BLOCKLIST END --- >> %HOSTS%

ipconfig /flushdns
netsh interface ip delete arpcache

echo All platforms and Yandex completely blocked!
pause
