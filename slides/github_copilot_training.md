# GitHub Copilot 실무자 교육 (Copilot 주관)

## 1. 교육 개요
- 대상: 실무자
- 주관: Microsoft GitHub Copilot
- 목표: Copilot 기반 협업 흐름으로 깃헙 운영 이해하고 적용하기

## 2. GitHub 기본 용어 정리
### Repository, Commit, Branch
- **Repository**: 코드, 이슈, PR 등 전체 자산을 담는 프로젝트 공간
- **Commit**: 변경 스냅샷. 메시지와 해시로 이력을 기록
- **Branch**: 독립된 작업 흐름. `main`에서 분리하여 실험/기능 개발

### Pull Request, Merge
- **Pull Request(PR)**: 브랜치 포인트를 특정 브랜치(`main`)로 병합하도록 요청, 자동화/리뷰 포함
- **Merge**: PR 승인 또는 수동 병합으로 변경을 통합

### Issue, GitHub Actions, Fork/Clone
- **Issue**: 버그/작업을 트래킹하는 티켓. 라벨·담당자·마일스톤 활용
- **GitHub Actions**: `.github/workflows/*`에 정의된 CI/CD 워크플로가 커밋/PR에 자동 실행
- **Fork**: 다른 계정 리포지토리 복제 후 PR 보내기 위한 작업본
- **Clone**: 원본 리포지토리를 로컬에 복제(`git clone ...`)

## 3. GitHub Copilot 모드 (Ask / Plan / Agent)
- **Ask Mode**: 에디터에서 질문을 던져 설명/예제/조언을 받는 대화형 지원
- **Plan Mode**: 실행 계획을 단계별로 제시하여 복잡한 작업을 정리한 뒤 협업
- **Agent Mode**: Copilot이 코드 변경, 테스트, 검토 등 일련의 액션을 자체 조율

## 4. Copilot과 GitHub 연결 실습 아이디어
- 단계 1: 리포지토리 클론 → Copilot 사이드바 열기
- 단계 2: Ask Mode로 요건 문의 → 코드 초안 생성 확정
- 단계 3: Plan Mode로 작업 단계 정리 → PR 템플릿 포함
- 단계 4: Agent Mode로 PR 리뷰 재검토/테스트 자동 실행

## 5. 실전 팁 & 참고
- Copilot 추천 코드에 라인을 추가하기 전 항상 코드 리뷰
- Actions 워크플로로 포맷/보안 스캔 통합하면 PR 워크플로가 매끄러움
- Q&A: 실무 팀에서 Copilot 도입할 때 경험 공유

## 6. `.github/instructions` 활용 안내
- GitHub UI에서 `.github/instructions` 폴더를 참고하면 실습 지침(브랜치 전략·PR 템플릿·리뷰 기준)을 빠르게 열람할 수 있음
- Copilot 모드별 요청 예시와 Actions/Docs 링크를 문서에 담아두고 실습 중 참조
- 지침 문서를 업데이트하면 슬랙/이메일로 알림을 보내어 팀원들과 공유하면 효과적
