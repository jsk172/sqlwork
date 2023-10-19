-- JOB_INFO ���̺� ����
CREATE TABLE JOB_INFO(
    JOB_ID VARCHAR(10), -- ���� ���̵�
    MIN_SALARY NUMBER, -- ���� �޿�
    MAX_SALARY NUMBER -- �ְ� �޿�
);

INSERT INTO JOB_INFO VALUES('AD_PASS', 20000, 40000);
INSERT INTO JOB_INFO VALUES('AD_VP', 15000, 30000);
INSERT INTO JOB_INFO VALUES('AD_ASST', 3000, 6000);
INSERT INTO JOB_INFO VALUES('FI_MGR', 8000, 16000);
INSERT INTO JOB_INFO VALUES('FI_ACCOUNT', 4000, 9000);
INSERT INTO JOB_INFO VALUES('AC_MGR', 8000, 16000);
INSERT INTO JOB_INFO VALUES('AC_ACCOUNT', 4000, 9000);

select * from job_info;
-- �����޿�, �ְ�޿��� ����� ���Ͻÿ�
select ROUND(AVG(MIN_Salary),-1) �����ݾ����, ROUND(AVG(MAX_Salary),-1) �ְ�ݾ����
from job_info;
-- �����޿��� 5000�޷� �̻��� ���� �˻�
select * from job_info WHERE min_salary >= 5000;
-- ���� �޿��� 5000�޷� �̻��� ������ �˻��� �� ����
CREATE VIEW V_JOB_INFO
AS SELECT *
   FROM JOB_INFO
   WHERE MIN_SALARY >= 5000;

SELECT * FROM V_JOB_INFO;

-- �ְ� �޿��� ���� �޿��� ���� 10000�޷� �̻��� ���� ���̵� �˻�
SELECT JOB_ID FROM V_JOB_INFO WHERE max_salary - min_salary >=10000;
-- ���� ���̵��� �̸��� FI�� �����ϴ� �ڷḦ �˻�
SELECT * FROM V_JOB_INFO WHERE JOB_ID LIKE 'FI%';
-- MAX_SALARY �� �ְ��� ���� ID �˻�
SELECT JOB_ID FROM V_JOB_INFO 
WHERE MAX_salary = (SELECT MAX(MAX_salary) FROM V_JOB_INFO);

DROP VIEW V_JOB_INFO;
commit;