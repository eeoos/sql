-- 문제: 잡은 물고기 중 가장 큰 물고기의 길이 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/298515

SELECT
    CONCAT(MAX(LENGTH), 'cm')
FROM
    FISH_INFO
;
