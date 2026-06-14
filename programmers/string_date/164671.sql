-- 문제: 조회수가 가장 많은 중고거래 게시판의 첨부파일 조회하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164671

-- 조회수가 가장 높은 게시글이 여러 개라는 가정하에 푼 풀이
WITH BOARD_VIEWS AS (
                SELECT
                    BOARD_ID,
                    VIEWS
                FROM
                    USED_GOODS_BOARD
    ), MAX_VIEWS_BOARD AS (
        SELECT
            MAX(VIEWS) AS MAX_VIEWS
        FROM
            USED_GOODS_BOARD
    )
SELECT
    CONCAT('/home/grep/src/', BOARD_ID, '/', FILE_ID, FILE_NAME, FILE_EXT) AS FILE_PATH
FROM
    USED_GOODS_FILE
WHERE
    BOARD_ID IN
    (
        SELECT
            BOARD_ID
        FROM
            BOARD_VIEWS V
        JOIN
            MAX_VIEWS_BOARD M ON V.VIEWS = M.MAX_VIEWS
    )
ORDER BY
    FILE_ID DESC
;
