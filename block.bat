@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

set HOSTS=%SystemRoot%\System32\drivers\etc\hosts

:: Poki'ning barcha server va CDN domenlarini bloklash
echo 127.0.0.1 poki.com >> %HOSTS%
echo 127.0.0.1 www.poki.com >> %HOSTS%
echo 127.0.0.1 poki-gdn.com >> %HOSTS%
echo 127.0.0.1 a.poki-gdn.com >> %HOSTS%
echo 127.0.0.1 b.poki-gdn.com >> %HOSTS%
echo 127.0.0.1 c.poki-gdn.com >> %HOSTS%
echo 127.0.0.1 img.poki.com >> %HOSTS%
echo 127.0.0.1 ak.poki.com >> %HOSTS%

:: Yandex Games va boshqalar
echo 127.0.0.1 yandex.ru >> %HOSTS%
echo 127.0.0.1 yandex.com >> %HOSTS%
echo 127.0.0.1 yagames.com >> %HOSTS%
echo 127.0.0.1 games.yandex.ru >> %HOSTS%
echo 127.0.0.1 crazygames.com >> %HOSTS%
echo 127.0.0.1 youtube.com >> %HOSTS%
echo 127.0.0.1 www.youtube.com >> %HOSTS%
echo 127.0.0.1 instagram.com >> %HOSTS%
echo 127.0.0.1 www.instagram.com >> %HOSTS%
echo 127.0.0.1 tiktok.com >> %HOSTS%
echo 127.0.0.1 www.tiktok.com >> %HOSTS%
echo 127.0.0.1 reddit.com >> %HOSTS%
echo 127.0.0.1 www.reddit.com >> %HOSTS%

ipconfig /flushdns
netsh interface ip delete arpcache

echo Blocked successfully!
pause
