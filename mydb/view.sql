-- VIEW ����
-- UPDATE, DELETE ����� ��� �� �� ����
-- �ּҿ� '���ѹα�'�� �����ϴ� ����� ������ �並 ����ÿ�

CREATE VIEW vw_customer
AS SELECT * FROM customer
WHERE address LIKE '%���ѹα�%';

SELECT * FROM vw_customer;
-- �̸��� �迬�Ƹ� ���������� ����
UPDATE vw_customer SET name = '������' WHERE name = '�迬��';
-- �� ID�� 3�� �� ����
DELETE FROM vw_customer WHERE custid = 3; -- �����ϰ��ִ� order ���̺��� �־ ���� �Ұ�

-- ���� ���� �ֹ��� ���� ������ �˻�
-- ��� �����
CREATE VIEW vw_book_order AS
SELECT cus.name, bk.bookname, ord.saleprice
FROM book bk, customer cus, orders ord
WHERE bk.bookid = ord.bookid AND cus.custid = ord.custid;

select * from vw_book_order;
select count(*) ��ü�Ǽ� from vw_book_order;

DROP VIEW vw_customer; -- �� ����
commit;