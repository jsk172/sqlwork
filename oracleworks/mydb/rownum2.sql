select * from drink2;

-- ���̺� ����
CREATE TABLE drink2 AS
SELECT * FROM drink;

-- ��ͺ���(INSERT INTO ~ SELECT) : VALUES ������
INSERT INTO drink2
(SELECT * FROM drink2);

-- ROWNUM (SUDO COLUMN - ������ ������ Į��)
select rownum, drink_code, drink_name
from drink2;
-- where rownum >= 11 AND rownum <= 20; 1�� ���ԵǾ�� �˻��� ��
select rownum, drink_code, drink_name
from drink2
where rownum >=1 and rownum <= 10;

-- from �� �������� ��� - �ζ��κ�
select rn, drink_code, drink_name
from (select rownum rn, drink_code, drink_name from drink2)
where rn >=20 and rn <= 40; -- rownum�� ����ϸ� �˻��� �ȵǰ� rownum rn���� ��Ī�� ����� ��Ī�� ����ϸ� �˻��� ��.