-- 문제: 카테고리 별 도서 판매량 집계하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144855

SELECT
    B.CATEGORY,
    SUM(S.SALES)
FROM
    BOOK B
JOIN
    BOOK_SALES S ON B.BOOK_ID = S.BOOK_ID
WHERE
    '2022-01-01' <= S.SALES_DATE
  AND S.SALES_DATE < '2022-02-01'
GROUP BY
    B.CATEGORY
ORDER BY
    B.CATEGORY
;
