SELECT
    *
FROM
    EMPLOYEES
;

SELECT
    LAST_NAME || ' IS A ' || JOB_ID AS "Employess Details"
FROM
    EMPLOYEES
;

/*
대체 인용(q) 연산자
    자신의 따음표 구분자를 지정합니다.
    구분자를 임의로 선택합니다.
    가독성 및 사용성이 증가합니다.
*/
SELECT 
    DEPARTMENT_NAME || Q'[Department's Mager ID: ]' || MANAGER_ID AS "DEPARTMENT AND MANAGER"
FROM
    DEPARTMENTS
;    

SELECT
    *
FROM
    DEPARTMENTS
;

