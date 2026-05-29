-- 문제: 인기있는 아이스크림
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133024

select
    FLAVOR
from
    FIRST_HALF
order by
    TOTAL_ORDER desc, SHIPMENT_ID
;
