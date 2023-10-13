-- ���� Ÿ�� ���� �Լ�
-- ���밪 ���ϱ� : ABS()
-- ���� ���̺� : dual
SELECT abs(-10) FROM dual;

-- �ݿø� : ROUND()
SELECT ROUND(127.69, 1) FROM dual; -- �Ҽ��� ��°�ڸ����� �ݿø�.
SELECT ROUND(127.67, 0) FROM dual; -- �Ҽ��� ù°�ڸ����� �ݿø�
SELECT ROUND(127.67, -1) FROM dual; -- 1���ڸ����� �ݿø�
SELECT ROUND(127.67, -2) FROM dual; -- 10���ڸ����� �ݿø�

-- ����(����) : TRUNC()
SELECT TRUNC(127.67, 1) FROM dual; --�Ҽ��� ��°�ڸ����� ����.
SELECT TRUNC(127.67, 0) FROM dual; --�Ҽ��� ù°�ڸ����� ����.
SELECT TRUNC(127.67, -1) FROM dual; --1���ڸ� ���� ����.
SELECT TRUNC(127.67, -2) FROM dual; --10���ڸ� ���� ����.

SELECT FLOOR(127.67) FROM dual; -- �Ҽ��� ���� ����

SELECT POWER(2, 3) FROM dual; -- 2�� 3��

-- ���� Ÿ��
-- �ҹ��ڷ� �����ϱ� : LOWER('ABCD')
-- �빮�ڷ� �����ϱ� : UPPER('abcd')
SELECT LOWER('ABCD') FROM dual;
SELECT UPPER('abcd') FROM dual;
-- ���ڿ��� �Ϻκ��� ���� : SUBSTR(���ڿ�, �ε���, �ڸ���)
SELECT SUBSTR('abcd', 2, 2) FROM dual;
-- ���ڿ��� ã�� �ٲٱ� : REPLACE(���ڿ�, ����������, �����Ĺ���)
SELECT REPLACE('abcd', 'c', 'e') FROM dual;
-- ���ڿ��� ���� : LENGTH(���ڿ�)
SELECT LENGTH('abcde') FROM dual;
-- ����ŷ : 
--LPAD(���ڿ�, ����, Ư������) : ������ ���̸�ŭ ���ʺ��� Ư�����ڷ� ä����
--RPAD(���ڿ�, ����, Ư������) : ������ ���̸�ŭ �����ʺ��� Ư�����ڷ� ä����
SELECT LPAD('today', 10, '*') FROM dual;
SELECT RPAD('today', 10, '*') FROM dual;



-- �ֹ����̺�
-- ���� ��� �ֹ� �ݾ��� �ݿø�
SELECT custid,
SUM(saleprice) AS �հ�ݾ�,
COUNT(saleprice) AS �ֹ��Ǽ�,
ROUND(AVG(saleprice), -2) AS ����ֹ��ݾ� --10���ڸ����� �ݿø�
FROM orders
GROUP BY custid;

-- �������̺�
-- å ������ ���ڼ�
SELECT bookname,
LENGTH(bookname) as ���ڼ�,
LENGTHB(bookname) as ����Ʈ�� -- �ѱ� - 3byte, (����, Ư������) - 1byte
FROM book;

-- '�౸'�� '��'�� �����Ͽ� �˻�
SELECT bookname,
REPLACE(bookname,'�౸','��') as bookname
FROM book;

-- �� ���̺�
-- �� �̸��� ���� ���� ���� ���� �ο����� ���Ͻÿ�
SELECT SUBSTR(name, 1, 1) ��, --���� ���
COUNT(*) �ο�
FROM customer
GROUP BY SUBSTR(name, 1, 1);