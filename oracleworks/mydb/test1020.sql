CREATE TABLE TEST20(
    DEPTCODE NUMBER,
    DEPTNAME VARCHAR2(10)
);

CREATE TABLE TEST21(
    EMPNO NUMBER,
    EMPNAME VARCHAR2(10),
    DEPTNO NUMBER
);

SELECT EMPNO, EMPNAME, DEPTNO, DEPTNAME
FROM TEST21 ,TEST20
WHERE a.deptno = b.deptcode;

drop table test20;