/*
���ϸ� : HR-Day03-Select.sql
SQL (Structured Query Language) - ������ ���� ���
    ������ �����ͺ��̽� �ý���(RDBMS)���� �ڷḦ ���� �� ó���ϱ� ���� ����� ���
    
SELECT ��
    �����ͺ��̽����� ���� �˻�
*/

-- ��� �� ���� * 
SELECT * 
FROM departments;

-- Ư�� �� ����
SELECT department_id, location_id
FROM departments;

/*
�����
    ��� �����ڸ� ����Ͽ� ����/��¥ ������ ǥ���� �ۼ�
    
    + ���ϱ�
    - ����
    * ���ϱ�
    / ������
*/

-- ��� ������ ���
SELECT LAST_NAME, SALARY, SALARY + 300
FROM employees;

/* 
������ �켱����
    ���ϱ�� ������� ���ϱ� ���⺸�ٴ� ���� ����
*/
SELECT last_name, salary, 12*salary+100
FROM employees;

SELECT last_name, salary, 12*(salary+100)
FROM employees;

/*
������� Null ��
    null ���� �����ϴ� ������� null�� ���
*/
SELECT last_name, 12*salary*commission_pct, salary, commission_pct
FROM employees;

/*
�� alias ���� - ����
    �� �Ӹ����� �̸��� �ٲߴϴ�.
    ��꿡�� �����մϴ�.
    �� �̸� �ٷ� �ڿ� ���ɴϴ�. (�� �̸��� alias ���̿� ���� ������ AS Ű���尡 �� ���� �ֽ��ϴ�.)
    �����̳� Ư�� ���ڸ� �����ϰų� ��ҹ��ڸ� �����ϴ� ��� ū ����ǥ�� �ʿ��մϴ�.
*/
SELECT last_name AS name, commission_pct comm, salary * 10 as �޿�10��
FROM employees;

SELECT last_name "Name", salary*12 "Annual Salary"
FROM employees;

/*
���� ������
    ���̳� ���ڿ��� �ٸ����� �����մϴ�.
    �� ���� ���μ�(||)���� ��Ÿ���ϴ�.
    ��� ���� ���� ǥ������ �ۼ� �մϴ�.
*/ 
SELECT last_name||job_id AS "Employees", last_name, job_id
FROM employees;

/*
���ͷ� ���ڿ�
    ���ͷ��� SELECT ���� ���Ե� ����, ���� �Ǵ� ��¥�Դϴ�.
    ��¥ �� ���� ���ͷ� ���� ���� ����ǥ�� ����� �մϴ�.
    �� ���ڿ��� ��ȯ�Ǵ� �� �࿡ �� �� ��µ˴ϴ�.
*/
SELECT last_name || ' is a ' || job_id AS "Employee Details"
FROM employees;

/*
��ü �ο�(q) ������
    �ڽ��� ����ǥ �����ڸ� �����մϴ�.
    �����ڸ� ���Ƿ� �����մϴ�.
    ������ �� ��뼺�� �����մϴ�.
*/
SELECT department_name || q'[ Department's Manager Id: ]' || manager_id
AS "Department and Manager"
FROM departments;

/*
�ߺ���
    �⺻������ query ������� �ߺ� ���� ������ ������� ǥ�õ˴ϴ�.
    
DISTINCT
    ������� �ߺ��� ����
*/
-- �ߺ���
SELECT 
    department_id
FROM
    employees
;

-- �ߺ�����
SELECT DISTINCT 
    department_id
FROM
    employees
;

/*
���̺� ����ǥ��
    DESCRIBE ����� ����Ͽ� ���̺� ������ ǥ���մϴ�.    
*/



