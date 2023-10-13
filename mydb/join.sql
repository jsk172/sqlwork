/*
���� : �� ���̺��� �����ϴ� ���
�������� : ���� ������ ��Ȯ�� ��ġ�ϴ� ��쿡 ��� ���
�ܺ����� : ���� ������ ��Ȯ�� ��ġ���� �ʾƵ� ��� ����� ���
*/
-- ��(customer)�� ���� �ֹ�(orders)�� ���� �����͸� ��� �˻�
SELECT cus.name, ord.saleprice 
FROM customer cus, orders ord WHERE cus.custid = ord.custid ORDER BY cus.name;
-- �ֹ����� ���� �����͵� ��� �˻�
SELECT cus.name, ord.saleprice 
FROM customer cus, orders ord WHERE cus.custid = ord.custid(+) --(+)���Ͻ� �ܺ�����
ORDER BY cus.name;
-- ���� �̸��� �ֹ��� ���� �̸�,�ֹ���,�ֹ��ݾ�
SELECT cus.name, bk.bookname, ord.orderdate, ord.saleprice
FROM customer cus, book bk, orders ord 
WHERE cus.custid = ord.custid AND bk.bookid = ord.bookid; -- �⺻Ű = �ܷ�Ű

-- ��(customer)�� ���� �ֹ�(orders)�� ���� �����͸� ��� �˻�
-- ���� : '������' ���� �ֹ������� �˻�
SELECT cus.name, ord.saleprice 
FROM customer cus, orders ord WHERE cus.custid = ord.custid AND cus.name = '������' ORDER BY cus.name;

-- ��(customer)�� ���� �ֹ�(orders)�� ���� �����͸� ��� �˻�
-- ���� �ֹ� �ݾ��� �Ѿ��� ���(GROUP BY)
-- �迬�� ���� �ֹ��ݾ��� �Ѿ��� ���(HAVING���� ������ ��)
SELECT cus.name, SUM(ord.saleprice) 
FROM customer cus, orders ord WHERE cus.custid = ord.custid 
GROUP BY cus.name HAVING cus.name = '�迬��' ORDER BY cus.name;

-- ǥ�� ����(ANSI SQL)
-- ���� ����(INNER JOIN)
-- ��(customer)�� ���� �ֹ�(orders)�� ���� ������ �� ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� �˻�
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord ON cus.custid = ord.custid
ORDER BY cus.name;
-- �ܺ� ����(OUTER JOIN) - JOIN ���ǿ� �����ϴ� �����Ͱ� �ƴϿ��� ����ϴ� ���
-- ��(customer)�� ���� �ֹ�(orders)�� ���� ������ �� �ֹ����� ���� �����͸� �����Ͽ�
-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� �˻�
SELECT cus.name, ord.saleprice
FROM customer cus LEFT OUTER JOIN orders ord ON cus.custid = ord.custid
ORDER BY cus.name;

