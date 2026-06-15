-- 문제: 자동차 대여 기록에서 장기/단기 대여 구분하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151138

-- CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서
-- 대여 시작일이 2022년 9월에 속하는 대여 기록에 대해서
-- 대여 기간이 30일 이상이면 '장기 대여'
-- 그렇지 않으면 '단기 대여' 로 표시하는 컬럼(컬럼명: RENT_TYPE)을 추가하여
-- 대여기록을 출력하는 SQL문을 작성해주세요.
-- 결과는 대여 기록 ID를 기준으로 내림차순 정렬해주세요.

SELECT
    HISTORY_ID,
    CAR_ID,
    START_DATE,
    END_DATE,
    CASE
        WHEN DATEDIFF(END_DATE, START_DATE) + 1 >= 30 THEN '장기 대여'
        ELSE '단기 대여'
    END
        AS RENT_TYPE
FROM
    CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE
    START_DATE >= '2022-09-01'
    AND START_DATE < '2022-10-01'
ORDER BY
    HISTORY_ID DESC
;
