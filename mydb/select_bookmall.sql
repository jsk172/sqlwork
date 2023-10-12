SELECT * FROM orders;
SELECT * FROM book;
-- orders ���̺��� Į��, �ڷ��� ����
DESC orders;

-- ��� �Լ� - ����(count), �հ�(sum), ���(avg), �ִ밪(max), �ּҰ�(min)
-- COUNT(*) : '*' - Į����
-- COUNT(Į����) : 
SELECT COUNT(*) AS ���ǸŰǼ� FROM orders;
SELECT COUNT(*) AS �Ѱ���, COUNT(phone) AS ��ȭ��ȣ�� FROM customer;
-- ���� �ֹ��� ������ ���Ǹž� ���
SELECT SUM(saleprice) ���Ǹž� FROM orders;
-- ������ �ֹ��� ������ ���Ǿװ� �������� ���(���������� 3���̻��� �ڷ� �˻�), 
-- �׷����� ������ ��� : (GROUP BY Į����)
SELECT custid, SUM(saleprice) ���Ǹž�, COUNT(*) �������� 
FROM orders GROUP BY custid HAVING COUNT(*) >= 3; --AND SUM(saleprice)>35000;


-- �����߿��� �ִ밡��, �������� ã��
SELECT MAX(price) �ְ���, MIN(price) �������� FROM book;
-- 3�� ��(�Ȼ�)�� �ֹ��� ������ �� �Ǹž� ���ϱ�
SELECT SUM(saleprice) ���Ǹž� from orders WHERE custid = 3;
-- 3������ id�� �ֹ����� �˻�
SELECT custid, saleprice FROM orders WHERE custid = 3;

-- ����
-- ��������(EQUI JOIN) : equal(=)�� ����ϴ� ����
-- ���̺� A.Į���� = ���̺�B.Į���� (Į�� - �ܷ�Ű)


-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� �˻�(customer, orders ����)
select customer.name, orders.saleprice
from customer, orders where customer.custid = orders.custid;

-- 3������ id�� �ֹ�����, �����̸� �˻�
select custid, bookname, saleprice
from orders, book
where orders.bookid = book.bookid and orders.custid = 3;


-- ��Ī ��� ����(�� �̸��� ����, ��������)
select cus.name, ord.saleprice
from customer cus, orders ord
where cus.custid = ord.custid
order by cus.name, ord.saleprice DESC;
