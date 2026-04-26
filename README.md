# IVNT 정맥영양요법 학습 앱

개원의를 위한 의학 지식 + 실제 처방 통합 임상 가이드

---

## 📁 파일 구조

```
ivnt-app/
├── index.html     ← 앱 전체 (이 파일만 수정하면 됨)
├── vercel.json    ← Vercel 배포 설정
├── push.bat       ← 업데이트 배포 스크립트 (Windows)
└── README.md      ← 이 파일
```

---

## 🚀 최초 세팅 (한 번만)

### 1단계 — GitHub 저장소 생성

1. https://github.com/new 접속
2. Repository name: `ivnt-app`
3. Public 선택 → **Create repository** 클릭

### 2단계 — 코드 업로드

이 폴더(`ivnt-app`)에서 PowerShell 또는 CMD 실행:

```powershell
git init
git add .
git commit -m "feat: IVNT 앱 초기 버전"
git branch -M main
git remote add origin https://github.com/[내GitHub아이디]/ivnt-app.git
git push -u origin main
```

### 3단계 — Vercel 연동

1. https://vercel.com/new 접속
2. **Import Git Repository** → `ivnt-app` 선택
3. **Deploy** 클릭 → 1분 후 배포 완료
4. URL 예시: `https://ivnt-app.vercel.app`

---

## 🔄 Claude 채팅으로 업데이트하는 방법

1. **Claude에게 요청**: "감기 처방에 ~~ 약물 추가해줘" 등
2. **Claude가 `index.html` 수정** (자동으로 이 폴더의 파일 편집)
3. **`push.bat` 더블클릭** → 자동으로 GitHub push & Vercel 배포

> 💡 한 번 세팅 후에는 `push.bat` 더블클릭 한 번으로 전체 배포 완료!

---

## ✅ 앱 구성

| 섹션 | 내용 |
|------|------|
| 의학 지식 | IVNT 기초, 항산화제, 비타민 B군, Myers' Cocktail, 고용량 IVC |
| 실제 처방 | 장염, 감기/독감, 대상포진, 피부염, 경추통, 간기능, 싸이모신 |
| 소견서 | 복사 가능한 소견서 템플릿 + 법적 근거 |
| 약물 목록 | 전체 약물 식약처 허가 근거 요약 |
