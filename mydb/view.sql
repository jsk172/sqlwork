-- VIEW ����
-- �ּҿ� '���ѹα�'�� �����ϴ� ����� ������ �並 ����ÿ�

CREATE VIEW vw_customer
AS SELECT * FROM customer
WHERE address LIKE '%���ѹα�%';

SELECT * FROM vw_customer;
-- �̸��� �迬�Ƹ� ���������� ����
UPDATE vw_customer SET name = '������' WHERE name = '�迬��';
-- �� ID�� 3�� �� ����
DELETE FROM vw_customer WHERE custid = 3; -- �����ϰ��ִ� order ���̺��� �־ ���� �Ұ�

DROP VIEW vw_customer; -- �� ����
commit;