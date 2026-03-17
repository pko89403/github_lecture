# GitHub Lecture

이 리포지토리는 GitHub Copilot 주관 실무자 대상 교육에서 사용할 자료를 정리합니다.

## 구성
- PPT 슬라이드 초안
- 데모 코드 및 실습 노트
- 참고 자료 링크

## 시작하기
1. `git clone https://github.com/pko89403/github_lecture.git`
2. 슬라이드를 `slides/` 폴더에 추가
3. 커밋 → `git push origin main`

## Instructions & Prompts
- `.github/instructions/harness_engineering.instructions.md`에서 하네스 실습 배경, Codespace/Agent 흐름, 포트/보안 규칙과 참고 링크를 확인하세요.
- `.github/prompts/harness_engineering.prompt.md` 템플릿을 복사해 Copilot에게 하네스 테스트 생성/검증을 지시하고, `scripts/ppt_hook.sh`를 이용해 요약을 슬라이드에 자동 추가할 수 있습니다.
## Artifacts Figures
![Figure 1: Luminous Syntax design philosophy](artifacts/figure-philosophy.png)
*Figure 1* — Luminous Syntax is mapped through spatial cues, color strokes, and connectors that mirror the meticulous layout of the philosophy document while keeping text minimal.

![Figure 2: GitHub basic canvas](artifacts/github-basic-canvas.png)
*Figure 2* — The canvas visualizes the branching narrative in gradient fields, grid lines, and labeled nodes, emphasizing a master-level study of GitHub’s commit structure.

![Figure 3: Figure Census survey](artifacts/figure-census-canvas.png)
*Figure 3* — The third canvas channels the Figure Census philosophy, stacking three framed materials with systematic grids to show how every resource earns its own meticulously crafted observation.

![Figure 4: Copilot Signal PPT companion](artifacts/figure-copilot-flow.png)
*Figure 4* — This companion figure maps the GitHub Copilot training slide flow, pairing each node (Terms, Modes, Practice, Instructions, Codespaces) with minimalist labels and connectors so the PPT feels like an expertly orchestrated study rather than a text-heavy list.
