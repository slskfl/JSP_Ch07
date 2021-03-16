-- member 테이블 생성하기
create table member(
    name    VARCHAR2(10),
    userid  VARCHAR2(10),
    pwd     VARCHAR2(10),
    email   VARCHAR2(20),
    phone   CHAR(13),
    admin   NUMBER(1)   DEFAULT 0, -- 0: 사용자, 1: 관리자
    PRIMARY KEY (userid)
);
SHOW user;

-- 레코드 삽입하기
INSERT INTO member 
values('라이언', 'ryan', '1234', 'ryan@gmail.com', '010-1111-2222', 0);
INSERT INTO member 
VALUES('어피치','apeach','1234','apeach@gmail.com','010-1234-5678',1);
INSERT INTO member 
VALUES('무지','muzi','1234','muzi@gmail.com','010-5555-9999',0);

COMMIT;

--레코드 조회하기
SELECT
    *
FROM member;
