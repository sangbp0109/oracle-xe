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
��ü �ο�(q) ������
    �ڽ��� ����ǥ �����ڸ� �����մϴ�.
    �����ڸ� ���Ƿ� �����մϴ�.
    ������ �� ��뼺�� �����մϴ�.
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

