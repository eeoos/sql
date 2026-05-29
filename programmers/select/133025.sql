-- 문제: 과일로 만든 아이스크림 고르기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133025

select
    fh.FLAVOR
from
    FIRST_HALF fh
        join
    ICECREAM_INFO ii on fh.FLAVOR = ii.FLAVOR
where
    TOTAL_ORDER > 3000 and ii.INGREDIENT_TYPE = 'fruit_based'
order by
    fh.TOTAL_ORDER desc
;
