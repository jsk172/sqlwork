-- product ���̺� ����
CREATE TABLE product(
    product_code CHAR(6) PRIMARY KEY, --��ǰ�ڵ�
    product_name VARCHAR2(50) NOT NULL, --��ǰ��
    price NUMBER NOT NULL --����
);

INSERT INTO product(product_code, product_name, price) VALUES('100001', '������ ���� ���콺', 25000);
INSERT INTO product(product_code, product_name, price) VALUES('100002', '���� ���̹� Ű����', 30000);
INSERT INTO product(product_code, product_name, price) VALUES('100003', '������ �г� ���þ߰� �����', 120000);

select * from product;
-- ��ǰ�� �� ����, ������ ���
select COUNT(*) �Ѱ���, ROUND(AVG(price), -2) ��հ��� from product;
-- ��ǰ �߿��� ���콺 �˻�
select * from product WHERE product_name LIKE '%���콺%';
-- ��ǰ�� ���ݼ����� ����(��������)
select * from product ORDER BY price DESC;

commit;