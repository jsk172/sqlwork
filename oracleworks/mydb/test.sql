-- �ǽ� ����
/*
1. ��� ���� �̸��� �ּҸ� �˻��Ͻÿ�
2. ��� ���� �̸�, �ּ�, ��ȭ��ȣ�� �˻��Ͻÿ� 
3. �ּҰ� '����'�� ���� �˻��Ͻÿ�
4. ���� �̸��� �迬�� Ȥ�� �Ȼ��� ���� �˻��Ͻÿ�
5. �ּҰ� ���ѹα��� �ƴ�  ���� �˻��Ͻÿ�
6. ��ȭ��ȣ�� �ִ� ���� �˻��Ͻÿ�
7. ���� �̸������� �����Ͻÿ�
8. ���� �� �ο����� ���Ͻÿ�
*/
SELECT name, address FROM customer; --1
SELECT name, address, phone FROM customer; --2
SELECT * FROM customer WHERE address LIKE '%����%'; --3
SELECT * FROM customer WHERE name IN('�迬��','�Ȼ�');; --4
SELECT * FROM customer WHERE address NOT LIKE '%���ѹα�%'; --5
SELECT * FROM customer WHERE phone IS NOT NULL; --6
SELECT * FROM customer ORDER BY name asc; --7
SELECT COUNT(*) as �Ѱ��� FROM customer; --8