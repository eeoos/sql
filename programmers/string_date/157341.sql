-- 문제: 대여 기록이 존재하는 자동차 리스트 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157341

SELECT DISTINCT
    C.CAR_ID
FROM
    CAR_RENTAL_COMPANY_CAR C
JOIN
    CAR_RENTAL_COMPANY_RENTAL_HISTORY H ON C.CAR_ID = H.CAR_ID
WHERE
    H.START_DATE >= '2022-10-01'
    AND H.START_DATE < '2022-11-01'
    AND C.CAR_TYPE = '세단'
ORDER BY
    C.CAR_ID DESC
;

