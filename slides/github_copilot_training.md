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
- **Agent 브랜치 생성 예시**: `build-octofit-app` 브랜치 생성을 Copilot에게 맡기는 이유는 에이전트가 실습 기준선을 자동으로 만들고, 일관된 브랜치와 푸시 수행을 통해 Agent 워크플로를 체험하게 하기 위함
- 에이전트에게 맡기면 오타 없이 브랜치가 생성되고 푸시되어 Mona나 리뷰어가 쉽게 따라올 수 있고, 명령→Continue→결과 확인 흐름을 반복적으로 경험해 답답함 없이 자동화에 익숙해질 수 있음
- **Agent 프롬프트 예시**: “OctoFit Tracker 앱 구조를 확인하세요.”라고 요청하면 Copilot agent가 `.github/instructions/octofit_tracker_setup_project.instructions.md`에 정리된 backend/venv+frontend 구조와 에이전트 정책을 다시 안내하고, 그 다음 Task로 이어갈 수 있도록 해 줍니다.

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

## 7. Codespaces를 통한 실습 환경
- Codespaces를 열면 브라우저/VS Code에서 바로 `github_lecture` 개발 환경 실행 가능
- 미리 구성된 `.devcontainer/devcontainer.json`이 있다면 Copilot + Actions 연동 상태를 바로 확인
- 학습자에게 Codespaces URL을 공유해 실습 환경을 통일하고, PR 생성 전 필요한 검증을 모두 자동화할 수 있음
- **Devcontainer**는 Codespace 시작 시 어떤 도구/버전/포트를 열지 지정하는 설정 파일 집합이며, Codespace는 그 devcontainer를 기반으로 실행되는 “클라우드 IDE”임
- devcontainer 설정이 없으면 로컬에서 환경을 직접 맞춰야 하지만, Codespace + devcontainer를 활용하면 모든 학습자가 동일한 빌드/런 환경을 즉시 띄울 수 있음

## 8. 실습 환경 준비 단계 (Python 가상환경 + 요구사항)
- **가상환경 생성**: Copilot에게 `python3 -m venv octofit-tracker/backend/venv` 명령을 요청하면 backend 디렉터리 내부에 통일된 가상환경을 자동으로 만듦. `.github/instructions/octofit_tracker_setup_project.instructions.md` 규칙을 따라 루트 디렉터리는 변경하지 않고 경로를 명시합니다.
- **`requirements.txt` 작성**: `backend/requirements.txt`에 Django, djangorestframework, djongo, pymongo 등 실습 전용 패키지를 목록으로 만들도록 지시. Agent에게 “파일을 생성하고 아래 의존성을 추가해 주세요”라는 형식으로 요청하면 바로 작성됨.
- **패키지 설치**: 가상환경을 활성화한 뒤 `pip install -r backend/requirements.txt`를 실행해 모든 Python 요구사항을 설치하고, 설치 로그와 `pip freeze` 결과를 함께 확인하여 안정성을 보장합니다.
- 이 세 단계가 완료되면 Copilot agent mode 실습이 시작되기 전에 backend 가상환경과 의존성이 모두 갖춰진 상태가 됩니다. 슬라이드에 “Step 2: 환경 준비”로 붙이면 학습 흐름이 명확해집니다.
- **프롬프트 예시**: `.github/instructions/prompt_instruction_guide.instructions.md` 템플릿을 따라 “현재 `build-octofit-app` 브랜치에서 `backend/requirements.txt`를 만들고 필요한 의존성을 추가한 뒤, `pip install -r backend/requirements.txt`를 실행해 주세요”와 같이 상황·행동·제약·확인 항목을 한 문단으로 적어, `scripts/ppt_hook.sh`를 돌려 슬라이드에 자동반영하세요.
- **시각 자료 제안**: Codespace/Agent 화면 스크린샷(코드패널, Copilot Chat, Agent 로그)과 `pip install` 터미널 로그를 슬라이드 하단에 포함하면 참가자들이 “이런 화면을 보면 작업이 잘 되고 있는지” 직관적으로 이해할 수 있습니다.

## 9. Harness 엔지니어링 참고 자료
- `.github/prompts/harness_remember_hook.prompt.md`를 참고하면 “작업 → 훅” 흐름에서 remember 훅을 항상 마지막 단계로 실행하는 규칙을 Copilot에게 알려주는 프롬프트를 확인할 수 있습니다.
- **3단계 백그라운드**: 이 실습에서는 Copilot 응답을 안내하는 `.github/instructions/octofit_tracker_setup_project.instructions.md`와 `.github/instructions/octofit_tracker_django_backend.instructions.md` 같은 커스텀 지침을 활용합니다. Django 백엔드 가이드라인, MongoDB 설정, 프로젝트 구조가 포함되어 있어 Copilot은 하네스 관련 코드 생성 시 해당 내용을 참조합니다.
- `.github/instructions/octofit_tracker_setup_project.instructions.md`는 프로젝트 구조·가상환경·포트·Agent 제약을, `.github/instructions/octofit_tracker_django_backend.instructions.md`는 Django/MongoDB 세부 설정을 담고 있으니, 프롬프트 입력 전 반드시 살펴보게 안내하세요.
- `.github/instructions/harness_engineering.instructions.md`에는 목적, 환경 조건, Codespace 기반 작업 흐름, Agent 제약, 포트/보안, 프롬프트·스크린샷 참조 링크를 담아 두었습니다.
- `.github/prompts/harness_engineering.prompt.md` 템플릿을 복사해 Copilot에게 특정 테스트 하네스 단위를 생성하라고 요청하면, 상황·행동·제약·확인 항목이 자동으로 반영됩니다.
- `scripts/ppt_hook.sh`를 통해 새로운 하네스 관련 메모/요약을 Markdown에 붙여 넣고, 나중에 PowerPoint로 옮기는 흐름을 유지하면 슬라이드와 실습 문서가 항상 동기화됩니다.
