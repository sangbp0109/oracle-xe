/*
파일명 : HR-Day05-Select-Join.sql

조인(JOIN)
    조인은 여러 테이블의 정보를 보는 데 사용됩니다.
    테이블을 조인하여 두 개 이상의 테이블에 있는 정보를 볼 수 있습니다.
*/

/*
Natural Join 생성
    두 테이블에서 데이터 유형과 이름이 일치하는 열을 기반으로 자동으로 테이블을 조인 할 수 있습니다.
/*

SELECT
    department_id
    ,department_name
    ,location_id
    ,city
FROM
    departments
NATURAL JOIN locations
;