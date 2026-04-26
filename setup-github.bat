@echo off
chcp 65001 > nul
echo.
echo ============================================
echo   IVNT 앱 - GitHub + Vercel 최초 세팅
echo ============================================
echo.

cd /d "%~dp0"

:: 기존 깨진 .git 폴더 제거
if exist ".git" (
  echo [0/5] 기존 .git 폴더 정리 중...
  rmdir /s /q ".git"
)

:: Git 초기화
echo [1/5] Git 초기화 중...
git init
git config user.email "fnaticdoc@gmail.com"
git config user.name "gravo0801"
git branch -M main

:: 파일 추가 및 커밋
echo [2/5] 파일 커밋 중...
git add .
git commit -m "feat: IVNT 정맥영양요법 학습 앱 v1.0"

:: GitHub 원격 저장소 연결
echo [3/5] GitHub 연결 중...
git remote remove origin 2>nul
git remote add origin https://github.com/gravo0801/ivnt-app.git

:: GitHub에 푸시
echo [4/5] GitHub에 업로드 중...
echo      (GitHub 로그인 창이 뜨면 로그인해주세요)
git push -u origin main

echo.
echo [5/5] Vercel 배포 설정...
echo.
echo ============================================
echo  GitHub 업로드 완료!
echo.
echo  이제 아래 링크에서 Vercel 배포하세요:
echo  https://vercel.com/new
echo.
echo  1. "Import Git Repository" 클릭
echo  2. "ivnt-app" 선택
echo  3. "Deploy" 클릭
echo  (1분 후 자동 배포 완료)
echo ============================================
echo.

:: GitHub 저장소 열기
start https://vercel.com/new
echo.
pause
