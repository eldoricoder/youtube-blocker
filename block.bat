@echo off
net session >nul 2>&1 || (powershell -Command "Start-Process '%~0' -Verb RunAs" & exit /b)

set H=%SystemRoot%\System32\drivers\etc\hosts

:: YOUTUBE / SHORTS / INSTAGRAM / REELS / TIKTOK / REDDIT
echo 127.0.0.1 youtube.com >> "%H%"
echo 127.0.0.1 www.youtube.com >> "%H%"
echo 127.0.0.1 m.youtube.com >> "%H%"
echo 127.0.0.1 youtubei.googleapis.com >> "%H%"
echo 127.0.0.1 instagram.com >> "%H%"
echo 127.0.0.1 www.instagram.com >> "%H%"
echo 127.0.0.1 tiktok.com >> "%H%"
echo 127.0.0.1 www.tiktok.com >> "%H%"
echo 127.0.0.1 reddit.com >> "%H%"
echo 127.0.0.1 www.reddit.com >> "%H%"

:: YANDEX GAMES VA BROWSER O'YIN SAYTLARI
echo 127.0.0.1 games.yandex.ru >> "%H%"
echo 127.0.0.1 games.yandex.com >> "%H%"
echo 127.0.0.1 yandex.ru/games >> "%H%"
echo 127.0.0.1 poki.com >> "%H%"
echo 127.0.0.1 www.poki.com >> "%H%"
echo 127.0.0.1 crazygames.com >> "%H%"
echo 127.0.0.1 www.crazygames.com >> "%H%"
echo 127.0.0.1 gamedistribution.com >> "%H%"
echo 127.0.0.1 www.gamedistribution.com >> "%H%"
echo 127.0.0.1 armorgames.com >> "%H%"
echo 127.0.0.1 www.armorgames.com >> "%H%"
echo 127.0.0.1 kongregate.com >> "%H%"
echo 127.0.0.1 www.kongregate.com >> "%H%"
echo 127.0.0.1 miniplay.com >> "%H%"
echo 127.0.0.1 www.miniplay.com >> "%H%"
echo 127.0.0.1 silvergames.com >> "%H%"
echo 127.0.0.1 www.silvergames.com >> "%H%"
echo 127.0.0.1 io8games.com >> "%H%"
echo 127.0.0.1 www.io8games.com >> "%H%"

ipconfig /flushdns >nul