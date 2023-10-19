-- ��¥, �ð� �Լ�
-- ���� ��¥ ���
SELECT SYSDATE FROM dual;
--���� ��¥ ���� ��ȯ
SELECT TO_CHAR(SYSDATE, 'yyyy') �⵵,
TO_CHAR(SYSDATE,'mm') ��,
TO_CHAR(SYSDATE,'dd') ��,
TO_CHAR(SYSDATE,'yyyy/mm/dd') ��¥
FROM dual;
-- ���� ��¥�� �ð�
SELECT SYSTIMESTAMP FROM dual;
-- �ð����� ��ȯ
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS') �ð�����,
TO_CHAR(SYSDATE,'yyyy/mm/dd HH:MI:SS') ��¥�ͽð�
FROM dual;

-- ���� ��¥���� 10�� ��, ���� ��¥ ���
SELECT SYSDATE - 10 FROM dual;
SELECT SYSDATE + 10 FROM dual;

-- Ư�� ��¥���� 10�� ��, �� ���
-- to_date(���ڿ�(��¥))
SELECT TO_DATE('2023-09-01') + 10 AS Ư����¥ FROM dual;
-- ���� ���ϰ� ����
-- ADD_MONTHS()
SELECT ADD_MONTHS(SYSDATE, 3) FROM dual;
SELECT ADD_MONTHS(SYSDATE, -3) FROM dual;
SELECT ADD_MONTHS(TO_DATE('2023-05-01') , 3) AS ��� FROM dual;


-- ���� �� ����ϱ�
-- MONTHS_BETWEEN(�����, ���ۿ�)
SELECT MONTHS_BETWEEN(SYSDATE, TO_DATE('2023-01-01')) AS �Ѱ����� FROM dual;
SELECT 
ROUND (MONTHS_BETWEEN(SYSDATE, TO_DATE('2023-1-1')), 0) �Ѱ�����
FROM dual;
-- orders ���̺��� ��¥ �ð��Լ� ����ϱ�
-- ������ �ֹ��Ϸκ��� 10���� ������ Ȯ���Ѵ�.
-- �� �ֹ��� Ȯ�����ڸ� ���Ͻÿ�
SELECT orderid �ֹ���ȣ,
TO_DATE(orderdate) + 10 ����Ȯ����
FROM orders;

-- �ֹ��Ͽ��� 3���� ���ϰ�, ����
-- ���� �ֹ���ȣ�� 6���� 10������ ���
SELECT orderid �ֹ���ȣ,
orderdate �ֹ���,
ADD_MONTHS(orderdate, -3) �ֹ�3������,
ADD_MONTHS(orderdate, 3) �ֹ�3������
FROM orders
--WHERE orderid>=6 AND orderid <=10;
WHERE orderid between 6 AND 10;

-- �ֹ���ȣ�� 10�� ������ �ֹ��Ϸκ��� ���ñ����� �� �������� ���Ͻÿ�
SELECT 
orderid �ֹ���ȣ,
orderdate �ֹ���,
ROUND(MONTHS_BETWEEN(SYSDATE, orderdate)) �Ѱ�����
FROM orders
WHERE orderid = 10;

-- ��ȯ �Լ� : TO_NUMBER() : ���ڸ� ���ڷ� ��ȯ
SELECT TO_NUMBER('320') FROM dual;

