# 프로젝트 구성 개요

## 1. 아키텍처 맵
- **Backend**: `octofit-tracker/backend/octofit_tracker`에는 Django 앱(모델/시리얼라이저/뷰/URL/테스트/관리자)이 들어 있습니다. MongoDB(Djongo) 연결과 CORS 설정은 `settings.py`에서 관리됩니다.
- **Frontend**: `octofit-tracker/frontend`는 React SPA이며, `/api/[component]/` 엔드포인트를 호출하는 UI와 테스트 로직을 포함합니다.
- **Codespace/Devcontainer**: `.devcontainer/devcontainer.json`은 Python/Node 버전, `forwardPorts: [8000, 3000, 27017]`, `postCreateCommand`/`postStartCommand` 옵션을 정의하여 Codespace가 pip, npm, MongoDB 등을 자동 설치하도록 구성합니다.

## 2. instruction/prompt 흐름
- `.github/instructions/octofit_tracker_setup_project.instructions.md`: 프로젝트 구조, 가상환경/포트 설정, Django/Mongo 제약, Agent mode 작업 순서를 안내합니다.
- `.github/instructions/octofit_tracker_django_backend.instructions.md`: Django-specific backend 설정, MongoDB 컬렉션/데이터, 환경 변수, middleware 구성 등 세부 가이드입니다.
- `.github/instructions/harness_engineering.instructions.md`: 하네스 실습의 목적, Codespace 워크플로, Agent 제약, 포트/보안, referential prompt 링크를 포함합니다.
- `.github/instructions/harness_engineering.instructions.md`와 `.github/prompts/*`을 함께 읽고 `WHAT` 프롬프트/`HOW` 지침 구조로 작업을 진행합니다.
- `.github/prompts/harness_engineering.prompt.md`, `.github/prompts/update-octofit-tracker-app.prompt.md`, `.github/prompts/harness_remember_hook.prompt.md` 등이 Copilot에게 전달할 템플릿입니다.

## 3. remember hook 순서
1. 작업(코드/문서/프롬프트/테스트 등)을 완료합니다.
2. `scripts/ppt_hook.sh` 또는 유사 remember hook을 실행하여 새 메모/프롬프트 요약을 `slides/github_copilot_training.md`에 붙입니다.
3. 슬라이드/README의 “Hook 자동 추가” 블록을 확인하여 작업이 기록됐는지 검증합니다.
4. `git status`가 clean인지 확인한 뒤 커밋 및 push합니다.

## 4. 참고 항목
- `slides/github_copilot_training.md`: 전체 워크플로 요약, Codespace/testing/remember hook을 포함한 안내.
- `docs/quick_start.md`: Codespace 환경부터 remember hook 실행, 검증 스크립트까지 빠르게 확인하는 핸드오프 체크리스트(아래 참조).
