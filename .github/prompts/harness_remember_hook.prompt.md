---
mode: 'agent'
model: GPT-5.3-Codex
---

# Harness Hook 순서 프롬프트

## 상황/컨텍스트
- `build-octofit-app` 하위 작업을 Copilot agent mode로 마무리하고 있으며, 여러 지침(`.github/instructions` 폴더)과 프롬프트를 통해 실습 기록을 남기는 중입니다.
- 이 실습의 핵심 제약 중 하나는 “remember hook(예: `scripts/ppt_hook.sh`)을 항상 마지막에 실행한다”는 규칙입니다.

## 행동 요청
1. 현재 작업(개발/문서/프롬프트 추가)을 모두 마무리한 뒤, 변경 내용을 확인하고 `git status`가 원하는 상태인지 검토하세요.
2. 마지막으로 `scripts/ppt_hook.sh` 혹은 해당 기억 훅을 실행하여 새로운 설명/프롬프트 요약을 `slides/github_copilot_training.md`에 붙입니다. 이 실행이 “실습 회고”나 “지식 기록”의 마지막 단계가 됩니다.
3. 훅 실행 결과를 확인하고, 필요하면 `artifacts/`에 스크린샷 또는 요약을 저장해 두세요.

## 제약 조건
- remember hook은 반드시 모든 작업(코드, 문서, 프롬프트 작성, 테스트 등) 이후에 한 번만 실행되어야 합니다.
- 훅 실행 전 작업 디렉터리는 `git status`가 깨끗하거나, 커밋 준비 중이어야 하며, 이전 커밋에 영향을 주지 않도록 합니다.
- 훅은 슬라이드/README 등 실습 기록을 업데이트하기 위한 롱텀 저장소의 마지막 연결 고리가 되어야 합니다.

## 확인 항목
- `scripts/ppt_hook.sh`가 실제로 실행되었고, `slides/github_copilot_training.md`에 새로운 “후기/프롬프트” 섹션이 붙었는지 확인하세요.
- `git status`가 clean인지, 기억 훅 이후 필요한 추가 작업(커밋/훅 수행)이 남아 있지 않은지 점검합니다.
