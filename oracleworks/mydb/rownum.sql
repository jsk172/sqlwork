-- ROWNUM(�ο��ȣ, ���ȣ)
-- �� ���� �����ϰ� ���� �� ���, SUDO COLUME�̶� ��
CREATE TABLE ex_score(
    name VARChAR2(20),
    score NUMBER(3)
);
INSERT INTO ex_score VALUES('���ϳ�', 94);
INSERT INTO ex_score VALUES('���ϳ�', 100);
INSERT INTO ex_score VALUES('���ϳ�', 97);
INSERT INTO ex_score VALUES('���ϳ�', 91);
INSERT INTO ex_score VALUES('���ϳ�', 88);
INSERT INTO ex_score VALUES('���ϳ�', 88);
INSERT INTO ex_score VALUES('���ϳ�', 65);
INSERT INTO ex_score VALUES('���ϳ�', 44);
INSERT INTO ex_score VALUES('���ϳ�', 92);
INSERT INTO ex_score VALUES('���ϳ�', 71);

select * from ex_score;

select ROWNUM, name, score FROM ex_score
WHERE ROWNUM <= 5;

-- 2���� 6����� ������ �˻� (ROWNUM�� 1���� �����ؾ���)
SELECT ROWNUM, name, score FROM ex_score
WHERE ROWNUM between 1 AND 6;
-- ������ ���������� ����
select * from ex_score order by score desc;
-- ������ ���������� ����(��������) 5������� -> ���������� 5���� �ȳ���
SELECT rownum, name, score FROM ex_score
WHERE ROWNUM <=5 ORDER BY score DESC ;
-- ������ ������������ ������ �� 5���� �˻�
SELECT * FROM (select * from ex_score order by score desc)
WHERE rownum <= 5;
-- ��������
SELECT name, score, 
rank() OVER(order by score desc) ����,
dense_rank() OVER(ORDER BY score desc) ����2
FROM (select * from ex_score order by score desc);

commit;