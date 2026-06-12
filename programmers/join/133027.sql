-- 문제: 주문량이 많은 아이스크림들 조회하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133027

-- JOIN
SELECT
    F.FLAVOR
FROM
    (
        SELECT
            FLAVOR,
            SUM(TOTAL_ORDER) AS TOTAL_ORDER
        FROM
            FIRST_HALF
        GROUP BY
            FLAVOR
    ) F
JOIN
    (
        SELECT
            FLAVOR,
            SUM(TOTAL_ORDER) AS TOTAL_ORDER
        FROM
            JULY
        GROUP BY
            FLAVOR
    ) J ON F.FLAVOR = J.FLAVOR
ORDER BY
    (F.TOTAL_ORDER + J.TOTAL_ORDER) DESC
LIMIT
    3
;

-- UNION ALL
SELECT
    FLAVOR
FROM
    (
        SELECT
            FLAVOR,
            SUM(TOTAL_ORDER) AS TOTAL_ORDER
        FROM
            (
                SELECT
                    FLAVOR,
                    TOTAL_ORDER
                FROM
                    FIRST_HALF
                UNION ALL
                SELECT
                    FLAVOR,
                    TOTAL_ORDER
                FROM
                    JULY
            ) T
        GROUP BY
            FLAVOR
    ) T
ORDER BY
    TOTAL_ORDER DESC
LIMIT
    3
;
