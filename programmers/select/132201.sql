-- 문제: 12세 이하인 여자 환자 목록 출력하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132201

select
    PT_NAME,
    PT_NO,
    GEND_CD,
    AGE,
    coalesce(TLNO, 'NONE') as TLNO
from
    PATIENT
where
    AGE <= 12 and GEND_CD = 'W'
order by
    AGE desc, PT_NAME
;
