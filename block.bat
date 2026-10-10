@echo off
:: Admin huquqini avtomatik talab qilish
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

set HOSTS=%SystemRoot%\System32\drivers\etc\hosts

echo # --- SCHOOL BLOCKLIST START --- >> %HOSTS%

:: YouTube & Social Media
for %%d in (youtube.com www.youtube.com youtu.be instagram.com www.instagram.com tiktok.com www.tiktok.com reddit.com www.reddit.com) do (
    echo 127.0.0.1 %%d >> %HOSTS%
    echo ::1 %%d >> %HOSTS%
)

:: Game Platforms (Poki, CrazyGames, Playhop, Yandex, Now.gg, Pogo, Friv, Kizi, Armor, Kongregate, Roblox)
for %%d in (poki.com www.poki.com poki-gdn.com img.poki.com crazygames.com www.crazygames.com playhop.com www.playhop.com yandex.ru yandex.com yagames.com games.yandex.ru now.gg www.now.gg pogo.com www.pogo.com friv.com www.friv.com kizi.com www.kizi.com armorgames.com kongregate.com roblox.com www.roblox.com) do (
    echo 127.0.0.1 %%d >> %HOSTS%
    echo ::1 %%d >> %HOSTS%
)

echo # --- SCHOOL BLOCKLIST END --- >> %HOSTS%

:: DNS keshini tozalash
ipconfig /flushdns
netsh interface ip delete arpcache

echo All game & social platforms blocked successfully (IPv4 + IPv6)!
pause
