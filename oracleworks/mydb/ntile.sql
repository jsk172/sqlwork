-- ��޸ű��, ntile()
CREATE TABLE exam_score(
    �̸� VARCHAR2(20),
    ���� NUMBER,
    ���� NUMBER,
    ���� NUMBER
);
INSERT INTO exam_score VALUES('���ϳ�', 100 , 100, 100);
INSERT INTO exam_score VALUES('���ϳ�', 97 , 100, 97);
INSERT INTO exam_score VALUES('���ϳ�', 100 , 88, 92);
INSERT INTO exam_score VALUES('���ϳ�', 76 , 82, 88);
INSERT INTO exam_score VALUES('���ϳ�', 92 , 92, 100);
INSERT INTO exam_score VALUES('���ϳ�', 44 , 32, 56);
INSERT INTO exam_score VALUES('���ϳ�', 97 , 54, 100);
INSERT INTO exam_score VALUES('���ϳ�', 73 , 56, 88);
INSERT INTO exam_score VALUES('���ϳ�', 44 , 100, 68);
INSERT INTO exam_score VALUES('���ϳ�', 60 , 66, 82);

select * from exam_score;
-- ������� ��� �˻�
select �̸�, ����, NTILE(8) OVER(ORDER BY ���� DESC) ������ from exam_score;
-- ���ϳ��� ������ ���� ���� ��� �˻�
select �̸�, ����, NTILE(8) OVER(ORDER BY ���� DESC) ������ from exam_score
WHERE �̸� <> '���ϳ�'; -- <> �� = �� �ݴ�
-- ��ü����
select �̸�,
����, NTILE(8) OVER(ORDER BY ���� DESC) ������,
����, NTILE(8) OVER(ORDER BY ���� DESC) ������,
����, NTILE(8) OVER(ORDER BY ���� DESC) ���е��
from exam_score;
commit;