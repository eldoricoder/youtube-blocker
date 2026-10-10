@echo off
:: Admin huquqini tekshirish va so'rash
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

set HOSTS=%SystemRoot%\System32\drivers\etc\hosts

:: Yandex Games va uning barcha CDN/Game domenlarini bloklash
echo 127.0.0.1 yandex.ru >> %HOSTS%
echo 127.0.0.1 yandex.com >> %HOSTS%
echo 127.0.0.1 yandex.uz >> %HOSTS%
echo 127.0.0.1 yandex.by >> %HOSTS%
echo 127.0.0.1 yandex.kz >> %HOSTS%
echo 127.0.0.1 yandex.net >> %HOSTS%
echo 127.0.0.1 yagames.com >> %HOSTS%
echo 127.0.0.1 yandex.com/games >> %HOSTS%
echo 127.0.0.1 yandex.ru/games >> %HOSTS%
echo 127.0.0.1 games.yandex.ru >> %HOSTS%
echo 127.0.0.1 games.yandex.com >> %HOSTS%
echo 127.0.0.1 app-games.yandex.net >> %HOSTS%
echo 127.0.0.1 storage.yandexcloud.net >> %HOSTS%

:: Poki, CrazyGames va boshqa mashhur manbalar
echo 127.0.0.1 poki.com >> %HOSTS%
echo 127.0.0.1 poki.ru >> %HOSTS%
echo 127.0.0.1 crazygames.com >> %HOSTS%
echo 127.0.0.1 youtube.com >> %HOSTS%
echo 127.0.0.1 www.youtube.com >> %HOSTS%
echo 127.0.0.1 instagram.com >> %HOSTS%
echo 127.0.0.1 www.instagram.com >> %HOSTS%
echo 127.0.0.1 tiktok.com >> %HOSTS%
echo 127.0.0.1 www.tiktok.com >> %HOSTS%
echo 127.0.0.1 reddit.com >> %HOSTS%
echo 127.0.0.1 www.reddit.com >> %HOSTS%

:: DNS keshni tozalash va brauzer ulanishlarini uzish
ipconfig /flushdns
netsh interface ip delete arpcache

echo Blocked successfully!
pause
