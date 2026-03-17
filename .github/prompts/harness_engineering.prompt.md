# Harness 엔지니어링 프롬프트 템플릿

**상황/컨텍스트**
- `build-octofit-app` 브랜치의 Codespace에서 Copilot agent mode를 실행 중이며, backend Django + frontend React 하네스 테스트를 구축중입니다.

**행동 요청**
- `backend/tests/`에 새로운 테스트 모듈을 만들고, `frontend/tests/`에는 React 컴포넌트 테스트 스캔을 추가하면서 하네스를 구축하세요.
- 필요한 Django 모델/serializer 를 만들고, mock 데이터를 사용한 API 테스트 및 UI 시나리오를 포함하세요.

**제약 조건**
- 작업 중 디렉터리를 변경하지 않고, `backend/` 혹은 `frontend/` 경로를 명시해 명령을 실행합니다.
- 포트는 8000, 3000, 27017 외에는 forwarding 하지 않고, `npm` 대신 `npm --prefix frontend` 형태로 명령합니다.
- Copilot이 만든 테스트 로그와 `pip freeze`/`npm list` 결과를 기록하여 리포트에 붙여 주세요.

**확인 항목**
- `backend/`와 `frontend/` 세션에서 각각 `pytest`/`npm test` 또는 `npm run test`가 통과했는지 확인하고 출력물을 캡처합니다.
- `git status`가 clean 상태인지, 변경된 파일이 적절히 커밋 가능한 상태인지 검토합니다.
