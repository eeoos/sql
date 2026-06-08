-- 문제: 즐겨찾기가 가장 많은 식당 정보 출력하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131123

SELECT
    R.FOOD_TYPE,
    R.REST_ID,
    R.REST_NAME,
    R.FAVORITES
FROM
    REST_INFO R
JOIN
    (
    SELECT
        FOOD_TYPE,
        MAX(FAVORITES) AS MAX_FAVORITES
    FROM
        REST_INFO
    GROUP BY
        FOOD_TYPE
         ) M
    ON R.FOOD_TYPE = M.FOOD_TYPE
    AND R.FAVORITES = M.MAX_FAVORITES
ORDER BY
    FOOD_TYPE DESC
;
