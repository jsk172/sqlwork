-- ���� ��ȹ : ��Ƽ������
SELECT * FROM board;

-- �ۼ��ڰ� admin0000�� �Խñ� �˻�
SELECT * FROM board where bwriter = 'admin0000';

-- ����Ŭ ��Ʈ ����(/*+ INDEX(���̺�� �ε�����) */
-- �ۼ��ڰ� admin0000�� �Խñ� �˻�
SELECT /*+INDEX(board idx_bl) */* FROM board where bwriter = 'admin0000';

--�ε��� ����(CREATE INDEX �ε����̸� ON ���̺��(Į����))
CREATE INDEX idx_bl ON board(bwriter);

    
DROP INDEX idx_bl;