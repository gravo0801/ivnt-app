@echo off
chcp 65001 > nul
echo.
echo ========================================
echo   IVNT 앱 업데이트 배포
echo ========================================
echo.
cd /d "%~dp0"
git add .
echo.
echo [변경된 파일]
git diff --cached --name-only
echo.
set /p msg="커밋 메시지 (엔터로 건너뛰기): "
if "%msg%"=="" set msg=fix: vercel.json 설정 수정
if "%msg%"=="" set msg=Update app
git commit -m "%msg%"
git push origin main
echo.
echo ✅ 완료! Vercel이 자동 배포를 시작합니다 (약 30초 소요)
echo    배포 현황: https://vercel.com/gravo0801s-projects
echo.
pause
