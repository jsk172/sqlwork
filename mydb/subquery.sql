-- ���� ����(Sub Query) : �μ�����(��ø ����)
-- SELECT�� ���ο� SELECT���� ������.

-- ������ ������ ���� ���� ������ �˻�
SELECT MAX(price) FROM book;

-- ������ ������ ���� ���� ������ �̸� �˻�
SELECT bookname FROM book WHERE price = (SELECT MAX(price) FROM book);

-- ������ ������ ���� �ִ� ���� �̸��� �˻�
SELECT custid FROM orders;
/*
SELECT name FROM customer
WHERE custid IN(1,2,3,4);
*/
SELECT name FROM customer
WHERE custid IN(SELECT custid FROM orders);

-- ������ ������ ���� �ִ� ���� �̸��� �˻� (���ι�� : customer, orders)
SELECT DISTINCT cus.name 
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

