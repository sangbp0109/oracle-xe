/*
������ ����Ͽ� �� ����
    WHERE ���� ����Ͽ� ��ȯ�Ǵ� ���� �����մϴ�.

WHERE
    ������ �����ϴ� ������ query�� �����մϴ�.
    
    ������ ���
    - ���̸�
    - �� ����
    - �� �̸�, ��� �Ǵ� �� ����Ʈ
*/

-- WEHRE �� ���
SELECT
    employee_id
    ,last_name
    ,job_id
    ,department_id
FROM
    employees
WHERE
    department_id = 90
;

/*
���ڿ� �� ��¥
    ���ڿ� �� ��¥ ���� ���� ����ǥ�� �����ϴ�.
    ���� ���� ��ҹ��ڸ� �����ϰ� ��¥ ���� ������ �����մϴ�.
    �⺻ ��¥ ǥ�� ������ DD-MON--RR�Դϴ�.
*/
SELECT
    last_name
    ,job_id
    ,department_id
FROM
    employees
WHERE 
    last_name = 'Whalen'
;

SELECT
    last_name
    ,hire_date
FROM
    employees
WHERE 1=1
    AND hire_date = '03/06/17'
;

/*
�� ������
    Ư�� ǥ������ �ٸ����̳� ǥ���İ� ���ϴ� ���ǿ��� ���˴ϴ�.
    
    =   ����
    >   ���� ŭ
    >=  ���� ũ�ų� ����
    <   ���� ����
    <=  ���� �۰ų� ����
    <>  ���� ����
    BETWEEN ... AND ...     �� �� ����(��谪 ����)
    IN(set)                 �� ����Ʈ �� ��ġ�ϴ� �� �˻�
    LIKE                    ��ġ�ϴ� ���� ���� �˻�
    IS NULL                 NULL�� ���� ����    
*/

-- �� ������ ���
SELECT
    last_name
    ,salary
FROM
    employees
WHERE
    salary <= 3000
;

-- BETWEEN �� �̿��� 
SELECT

FROM
   employees 
WHERE
    salray BERWEEN 2500 AND 3500
;

-- IN �����ڸ� ����ϴ� �������
SELECT
    employee_id
    ,last_name
    ,salary
    ,manager_id
FROM
    employees
WHERE
    manager_id IN (100, 101, 201)
;
/*
LIKE �����ڸ� ����Ͽ� ���� ��ġ
    LIKE �����ڸ� ����Ͽ� ��ȿ�� �˻� ���ڿ� ���� ��ü ���� �˻��� �����մϴ�.
    �˻����ǿ��� ���ͷ� ���ڳ� ���ڰ� ���� �� �� �ֽ��ϴ�.
        - % �� 0�� �̻��� ���ڸ� ��Ÿ���ϴ�
        - _�� �� ���ڸ� ��Ÿ���ϴ�.
        - ��ҹ��� ������
*/
SELECT
    first_name
FROM
    employees
WHERE
    first_name LIKE 'S%'    
;

-- ��ü ���� ����
SELECT
    last_name
FROM
    employees
WHERE
    last_name LIKE '_o%'
;

-- ESCAPE �ĺ���
SELECT
    employee_id
    ,last_name
    ,job_id
FROM
    employees
WHERE
    job_id LIKE '%SA\_%' ESCAPE '\'
;

/*
NULL ���� ���
    IS NULL �����ڷ� null�� �׽�Ʈ �մϴ�.
*/
SELECT
    last_name
    ,manager_id
FROM
    employees
WHERE
    manager_id IS NULL
;

/*
�� �����ڸ� ����Ͽ� ��������
    AND : ���� ��� ������ ��� ���� ��� TRUE ��ȯ
    OR  : ���� ��� ���� �� �ϳ��� ���� ��� TRUE ��ȯ
    NOT : ������ ������ ��� TRUE ��ȯ
*/
-- AND ������
SELECT
    employee_id
    ,last_name
    ,job_id
    ,salary
FROM
    employees
WHERE
    salary >= 10000
    AND job_id LIKE '%MAN%'
;
-- OR ������
SELECT
    employee_id
    ,last_name
    ,job_id
    ,salary
FROM
    employees
WHERE
    salary >= 10000
    OR job_id LIKE '%MAN%'
;






