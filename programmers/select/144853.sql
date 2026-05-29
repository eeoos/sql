-- 문제: 조건에 맞는 도서 리스트 출력하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144853

SELECT
    BOOK_ID,
    PUBLISHED_DATE
FROM
    BOOK
WHERE
    PUBLISHED_DATE >= '2021-01-01' and PUBLISHED_DATE < '2022-01-01' and CATEGORY = '인문'
order by
    PUBLISHED_DATE;
