-- 문제: 대여 횟수가 많은 자동차들의 월별 대여 횟수 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151139
-- *

SELECT
    MONTH(H.START_DATE) AS `MONTH`,
    H.CAR_ID,
    COUNT(*) AS RECORDS
FROM
    CAR_RENTAL_COMPANY_RENTAL_HISTORY H
JOIN
    (
        SELECT
            COUNT(*) AS CNT,
            CAR_ID
        FROM
            CAR_RENTAL_COMPANY_RENTAL_HISTORY
        WHERE
            '2022-08-01' <= START_DATE
            AND START_DATE < '2022-11-01'
        GROUP BY
            CAR_ID
    ) C ON H.CAR_ID = C.CAR_ID
WHERE
    C.CNT >= 5
    AND '2022-08-01' <= START_DATE
    AND START_DATE < '2022-11-01'
GROUP BY
    MONTH(H.START_DATE),
    H.CAR_ID
ORDER BY
    MONTH(H.START_DATE),
    H.CAR_ID DESC
;
