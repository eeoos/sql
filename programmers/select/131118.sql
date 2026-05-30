-- 문제: 서울에 위치한 식당 목록 출력하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131118

SELECT
    I.REST_ID,
    I.REST_NAME,
    I.FOOD_TYPE,
    I.FAVORITES,
    I.ADDRESS,
    ROUND(AVG(R.REVIEW_SCORE)) AS SCORE
FROM
    REST_INFO I
JOIN
    REST_REVIEW R
ON
    I.REST_ID = R.REST_ID
WHERE
    I.ADDRESS LIKE '서울%'
ORDER BY
    SCORE DESC,
    I.FAVORITES DESC
;
