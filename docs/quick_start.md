# 빠른 시작 체크리스트
1. **Codespace/Devcontainer**
   - `Create Codespace` 버튼을 눌러 `.devcontainer/devcontainer.json`에 정의된 Python/Node/Mongo 이미지를 로드합니다.
   - `forwardPorts` 8000/3000/27017 확인, `postCreateCommand`/`postStartCommand`가 dependencies 설치하는지 확인하세요.
2. **Instruction/Prompt 준비**
   - `.github/instructions/octofit_tracker_setup_project.instructions.md`, `.github/instructions/octofit_tracker_django_backend.instructions.md`, `.github/instructions/harness_engineering.instructions.md`를 읽습니다.
   - `.github/prompts/harness_engineering.prompt.md`, `.github/prompts/update-octofit-tracker-app.prompt.md` 등 회고할 프롬프트를 검토하고 WHAT/HOW 구조를 이해합니다.
3. **작업 수행**
   - Copilot agent mode 프롬프트를 실행하고 `build-octofit-app` 브랜치에서 Django/React/DB 변경을 적용합니다.
   - `/init-populate-octofit_db` 등 데이터 초기화 프롬프트를 적절히 활용합니다.
4. **remember hook**
   - 모든 변경 후 `scripts/ppt_hook.sh <note-file>`을 실행하여 `slides/github_copilot_training.md`에 메모를 추가합니다.
   - remember hook 내용이 슬라이드에 반영됐는지 검토하고, `git status`가 clean인지 확인합니다.
5. **검증 스크립트**
   - `./scripts/validate_instructions.sh`를 실행하여 필수 instructions/prompts 존재 여부 및 Hook 블록 확인(후술) 시나리오를 검증합니다.
6. **git 마무리**
   - 변경된 파일을 커밋하고 `git push`합니다. remember hook은 항상 마지막으로 실행된 후에만 푸시하세요.
