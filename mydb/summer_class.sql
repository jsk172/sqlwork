-- �����б� ���̺�
CREATE TABLE summer_class(
    sid NUMBER, -- �й�
    subject VARCHAR2(20), -- ��������
    price NUMBER -- ������
);

INSERT INTO summer_class VALUES(100, 'C', 30000);
INSERT INTO summer_class VALUES(101, 'Java', 45000);
INSERT INTO summer_class VALUES(200, 'Python', 40000);
INSERT INTO summer_class VALUES(201, 'Java', 45000);


-- �����б⸦ �����ϴ� �л��� �й��� �����ϴ� ������?
select sid, subject from summer_class;
-- 200�� �л��� �������
DELETE FROM summer_class WHERE sid = 200;
-- �����̻�

-- 'Python' ������ �������?
select price from summer_class WHERE subject = 'Python';
-- �����б⸦ ��� �л����� ������ �Ѿ���?
select COUNT(*) �л���, SUM(price) �������Ѿ� from summer_class ;

-- ���� �̻�
-- C++���� ���� : ��û�� �л��� ����
INSERT INTO summer_class VALUES(NULL, 'C++', 35000);
-- �л� 3��, Ʃ�� 4��
select COUNT(*) �����ο� FROM  summer_class;
select COUNT(sid) �����ο� FROM  summer_class;

-- ���� �̻�
-- Java �����ᰡ 45,000 -> 40,000 ����
UPDATE summer_class SET price = 40000 WHERE subject = 'Java';
-- ���� UPDATE���� ����ó�� �̻����� �߻� 1�Ǹ� ����
UPDATE summer_class SET price = 40000 WHERE subject = 'Java' AND sid = 101;
-- Java �������?
select price from summer_class where subject = 'Java';

select * from summer_class;
rollback;
commit;