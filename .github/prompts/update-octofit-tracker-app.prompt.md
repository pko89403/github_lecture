---
mode: 'agent'
model: GPT-5.3-Codex
---

# OctoFit Tracker 앱 업데이트 프롬프트

## 상황/컨텍스트
- `build-octofit-app` 브랜치에서 Jenkins/Copilot 환경을 유지하며, OctoFit Django/React 애플리케이션을 발전시키는 중입니다.
- `.github/instructions/octofit_tracker_setup_project.instructions.md`와 `.github/instructions/octofit_tracker_django_backend.instructions.md`를 먼저 읽어, 환경/포트/Agent 제약을 숙지했습니다.

## 행동 요청
1. Django 앱의 비즈니스 로직 일부를 변경하고, 관련 serializer/view/tests를 업데이트합니다.
2. React 프론트엔드에서 새로운 화면(예: 하네스 상태 뷰)을 추가하고, API 호출을 테스트할 수 있는 UI를 만듭니다.
3. 필요한 경우 MongoDB에 sample 데이터를 추가/조회하는 스크립트를 마련하고, Django ORM 기반 서비스 API가 새로운 필드를 제대로 처리하는지 확인하세요.

## 제약 조건
- 디렉터리 이동 금지: 명령어에 `backend/` 또는 `frontend/` 경로를 명시합니다.
- 포트는 8000/3000/27017만 사용하고, sample data 관련 명령은 가상환경(`backend/venv/bin/activate`)을 활성화한 상태에서 실행합니다.
- Copilot이 생성한 코드/테스트 파일에는 docstring과 주석을 붙여 설명을 추가하고, DB 연결 정보는 `.env`나 `settings.py` 변경 없이 `populate_db` 스크립트를 통해 처리합니다.

## 검증 항목
- `python backend/manage.py test` 및 `npm --prefix frontend test`가 통과했는지 로그를 확보하고, 필요시 `pip freeze`/`npm list`도 준비합니다.
- `git status`가 clean한 상태인지 확인하고, 변경된 파일을 적절한 커밋 메시지로 묶을 준비를 합니다.
