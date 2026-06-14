-- 문제: 상품을 구매한 회원 비율 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131534
-- *****

SELECT
    YEAR(S.SALES_DATE) AS `YEAR`,
    MONTH(S.SALES_DATE) AS `MONTH`,
    COUNT(DISTINCT U.USER_ID) AS PURCHASED_USERS,
    ROUND((COUNT(DISTINCT U.USER_ID) /
        (
            SELECT
                COUNT(*)
            FROM
                USER_INFO
            WHERE
                JOINED >= '2021-01-01' AND JOINED < '2022-01-01'
    )
    ), 1) AS PURCHASED_RADIO
FROM
    ONLINE_SALE S
JOIN
    USER_INFO U ON S.USER_ID = U.USER_ID
WHERE
    U.JOINED >= '2021-01-01' AND U.JOINED < '2022-01-01'
GROUP BY
    YEAR(S.SALES_DATE),
    MONTH(S.SALES_DATE)
ORDER BY
    `YEAR`,
    `MONTH`
;
