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
-- ������ ��������
SELECT name FROM customer
WHERE custid IN(SELECT custid FROM orders);

-- FROM���� �ִ� �������� - �ζ��κ��� ��
-- ���� �̸��� ���� �Ǹž� �˻� (�׷캰 : GROUP BY)
-- ��, ���� ��ȣ�� 2 ������
SELECT cs.name, SUM(od.saleprice) 
FROM (SELECT * FROM customer WHERE customer.custid <= 2) cs, 
     orders od
WHERE cs.custid = od.custid
GROUP BY cs.name
HAVING SUM(od.saleprice) >= 30000;

-- ������ ������ ���� �ִ� ���� �̸��� �˻� (���ι�� : customer, orders)
SELECT DISTINCT cus.name 
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

select * FROM product;
select * from product_review;
-- ��ǰ ���� ���̺� �ִ� ��ǰ �̸� �˻�
-- ��Į�� �������� : select�����ִ� select���� ����
SELECT a.product_code, a.memberid, a.content, 
(select b.product_name from product b WHERE a.product_code = b.product_code) product_name
FROM product_review a;
