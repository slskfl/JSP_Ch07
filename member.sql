-- member ���̺� �����ϱ�
create table member(
    name    VARCHAR2(10),
    userid  VARCHAR2(10),
    pwd     VARCHAR2(10),
    email   VARCHAR2(20),
    phone   CHAR(13),
    admin   NUMBER(1)   DEFAULT 0, -- 0: �����, 1: ������
    PRIMARY KEY (userid)
);
SHOW user;

-- ���ڵ� �����ϱ�
INSERT INTO member 
values('���̾�', 'ryan', '1234', 'ryan@gmail.com', '010-1111-2222', 0);
INSERT INTO member 
VALUES('����ġ','apeach','1234','apeach@gmail.com','010-1234-5678',1);
INSERT INTO member 
VALUES('����','muzi','1234','muzi@gmail.com','010-5555-9999',0);

COMMIT;

--���ڵ� ��ȸ�ϱ�
SELECT
    *
FROM member;

-- ���̵� 'muzi'�� ���ڵ� ��ȸ�ϱ�
SELECT
    *
FROM member
WHERE userid='muzi';

-- ���̵� 'muzi'�� ���ڵ� ��й�ȣ '5678'���� �����ϱ�
UPDATE member 
SET pwd='5678'
WHERE userid='muzi';
COMMIT;

-- ���ڵ� ��ȸ�ϱ�
SELECT
    *
FROM member;

-- ���̵� 'muzi'�� ���ڵ� �����ϱ�
DELETE 
FROM member 
WHERE userid='muzi';

COMMIT;

-- ���ڵ� ��ȸ�ϱ�
SELECT
    *
FROM member;











