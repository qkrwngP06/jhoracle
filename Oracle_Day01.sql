CREATE TABLE STUDENT_TBL(
    STUDENT_NAME VARCHAR2(20),
    STUDENT_AGE NUMBER,
    STUDENT_GRADE NUMBER,
    STUDENT_ADDRESS VARCHAR2(100)
);
--���� -> ���� + ����
--���̺� ����
--ORA-00942: table or view does not exist
DROP TABLE STUDENT_TBL;

--TABLE�� �����͸� �ִ� ���! -> ȸ������
INSERT INTO STUDENT_TBL(STUDENT_NAME, STUDENT_AGE, STUDENT_GRADE, STUDENT_ADDRESS)
VALUES ('�Ͽ���', 22, 1, '���� �߱�');
--�÷��� ���� ����!
INSERT INTO STUDENT_TBL VALUES ('�̿���', 23, 2, '���� ���α�');

INSERT INTO STUDENT_TBL VALUES('�����', 25, 3, '���� ���빮��');

INSERT INTO STUDENT_TBL VALUES('�����', 44, 4, '���� ���빮��');

INSERT INTO STUDENT_TBL
VALUES(' ', 33, 3, NULL);

UPDATE STUDENT_TBL 
SET STUDENT_AGE = 30
WHERE STUDENT_GRADE = 2;

--�����͸� �����غ��� -> ȸ��Ż��
DELETE FROM STUDENT_TBL;

DELETE FROM STUDENT_TBL
WHERE STUDENT_GRADE = 2;

CREATE TABLE DATATYPE_TBL(
    MOONJJA CHAR(10),  
    --���ĺ� 10����, �ѱ� 3����
    MOONJJAYUL VARCHAR2(100), 
    --���ĺ� 100����, �ѱ� 33����
    SOOJJA NUMBER,
    NALJJA DATE,
    NALJJA2 TIMESTAMP  
);

--������ ��ȸ
SELECT * 
FROM STUDENT_TBL
--WHERE STUDENT_GRADE = 2;



