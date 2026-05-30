-- 문제: 3월에 태어난 여성 회원 목록 출력하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131120

SELECT
    MEMBER_ID,
    MEMBER_NAME,
    GENDER,
    DATE_OF_BIRTH
FROM
    MEMBER_PROFILE
WHERE
    MONTH(DATE_OF_BIRTH) = 3 AND GENDER = 'W' AND TLNO IS NOT NULL
ORDER BY
    MEMBER_ID;

-- month() 사용으로 인덱스 활용 어려움,
-- 프로젝트였다면 월을 따로 컬럼으로 빼서 인덱스 타게 할 듯함
