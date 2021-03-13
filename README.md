# 도커 7번째 강의

### traivs-ci 테스트
결과적으로 실패했다. test에서 로그는 모두 통과된 것으로 나오지만 `Run all test suites.`라고 나온 후 10분동안 반응이 없다가 
`No output has been received in the last 10m0s, ...`라는 결과가 나오고 실패라고 나온다.

(해결) : 오타였다. `CI=true`라고 작성해야하는데 `CI:true`라고 작성하고 있었다.
