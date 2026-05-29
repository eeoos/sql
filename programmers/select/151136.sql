-- 문제: 평균 일일 대여 요금 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151136

SELECT round(avg(DAILY_FEE)) as AVERAGE_FEE
from CAR_RENTAL_COMPANY_CAR
where CAR_TYPE = 'SUV';
