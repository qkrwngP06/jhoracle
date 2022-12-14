CREATE TABLE DEPARTMENT(
DEPT_ID CHAR(2) NOT NULL ENABLE,
DEPT_TITLE VARCHAR2(35) NOT NULL DISABLE,
LOCATION_ID CHAR(2) NOT NULL ENABLE
);

COMMENT ON TABLE DEPARTMENT IS '학과';
COMMENT ON COLUMN DEPARTMENT.DEPT_ID IS '부서코드';
COMMENT ON COLUMN DEPARTMENT.DEPT_TITLE IS '부서명';
COMMENT ON COLUMN DEPARTMENT.LOCATION_ID IS '지역코드';

INSERT INTO DEPARTMENT VALUES('D1', '인사관리부', 'L1');

INSERT INTO DEPARTMENT VALUES('D2', '회계관리부', 'L1');

INSERT INTO DEPARTMENT VALUES('D3', '마케팅부', 'L1');

INSERT INTO DEPARTMENT VALUES('D4', '국내영업부', 'L1');

INSERT INTO DEPARTMENT VALUES('D5', '해외영업1부', 'L2');

INSERT INTO DEPARTMENT VALUES('D6', '해외영업21부', 'L3');

INSERT INTO DEPARTMENT VALUES('D7', '해외영업3부', 'L4');

INSERT INTO DEPARTMENT VALUES('D8', '기술지원부', 'L5');

INSERT INTO DEPARTMENT VALUES('D9', '총무부', 'L1');

SELECT * FROM DEPARTMENT;

CREATE TABLE EMPLOYEE(
EMP_ID VARCHAR2(3) NOT NULL,
EMP_NAME VARCHAR2(20) NOT NULL,
EMP_NO CHAR(14) NOT NULL,
EMAIL VARCHAR(25),
PHONE VARCHAR2(25),
DEPT_CODE CHAR(2),
JOB_CODE CHAR(2) NOT NULL,
SAL_LEVEL CHAR(2) NOT NULL,
SALARY NUMBER,
BONUS NUMBER,
MANAGER_ID VARCHAR2(3),
HIRE_DATE VARCHAR2(3),
ENT_DATE DATE,
ENT_YN CHAR(1) default 'N' not null
);

COMMENT ON TABLE EMPLOYEE IS '고용주';
COMMENT ON COLUMN EMPLOYEE.EMP_ID IS '사원번호';
COMMENT ON COLUMN EMPLOYEE.EMP_NAME IS '직원명';
COMMENT ON COLUMN EMPLOYEE.EMP_NO IS '주민등록번호';
COMMENT ON COLUMN EMPLOYEE.EMAIL IS '이메일';
COMMENT ON COLUMN EMPLOYEE.PHONE IS '전화번호';
COMMENT ON COLUMN EMPLOYEE.DEPT_CODE IS '부서코드';
COMMENT ON COLUMN EMPLOYEE.JOB_CODE IS '직급코드';
COMMENT ON COLUMN EMPLOYEE.SAL_LEVEL IS '급여등급';
COMMENT ON COLUMN EMPLOYEE.SALARY IS '급여';
COMMENT ON COLUMN EMPLOYEE.BONUS IS '보너스율';
COMMENT ON COLUMN EMPLOYEE.MANAGER_ID IS '관리자사번';
COMMENT ON COLUMN EMPLOYEE.HIRE_DATE IS '입사일';
COMMENT ON COLUMN EMPLOYEE.ENT_DATE IS '퇴사일';
COMMENT ON COLUMN EMPLOYEE.ENT_YN IS '재직여부';

CREATE TABLE JOB(
JOB_CODE CHAR(2)NOT NULL,
JOB_NAME VARCHAR2(35)
);

COMMENT ON TABLE JOB IS '직업';
COMMENT ON COLUMN JOB.JOB_CODE IS '직급코드';
COMMENT ON COLUMN JOB.JOB_NAME IS '직급명';

INSERT INTO JOB VALUES('J1', '대표');
INSERT INTO JOB VALUES('J2', '부사장');
INSERT INTO JOB VALUES('J3', '부장');
INSERT INTO JOB VALUES('J4', '차장');
INSERT INTO JOB VALUES('J5', '과장');
INSERT INTO JOB VALUES('J6', '대리');
INSERT INTO JOB VALUES('J7', '사원');

CREATE TABLE LOCATION(
LOCAL_CODE CHAR(2) NOT NULL,
NATIONAL_CODE CHAR(2) NOT NULL,
LOCAL_NAME VARCHAR2(40)
);

COMMENT ON TABLE LOCATION IS '지역';
COMMENT ON COLUMN LOCATION.LOCAL_CODE IS '지역코드';
COMMENT ON COLUMN LOCATION.NATIONAL_CODE IS '국가코드';
COMMENT ON COLUMN LOCATION.LOCAL_NAME IS '지역명';

INSERT INTO LOCATION VALUES('L1', 'KO', 'ASIA1');
INSERT INTO LOCATION VALUES('L2', 'JP', 'ASIA2');
INSERT INTO LOCATION VALUES('L3', 'CH', 'ASIA3');
INSERT INTO LOCATION VALUES('L4', 'US', 'AMERICA');
INSERT INTO LOCATION VALUES('L5', 'RU', 'EU');

CREATE TABLE NATIONAL(
NATIONAL_CODE CHAR(2) NOT NULL,
NATIONAL_NAME VARCHAR2(35)
);

COMMENT ON TABLE NATIONAL IS '나라';
COMMENT ON COLUMN NATIONAL.NATIONAL_CODE IS '국가코드';
COMMENT ON COLUMN NATIONAL.NATIONAL_NAME IS '국가명';


INSERT INTO NATIONAL VALUES('KO', '한국');
INSERT INTO NATIONAL VALUES('JP', '일본');
INSERT INTO NATIONAL VALUES('CH', '중국');
INSERT INTO NATIONAL VALUES('US', '미국');
INSERT INTO NATIONAL VALUES('RU', '러시아');

CREATE TABLE SAL_GRADE(
SAL_LEVEL CHAR(2) NOT NULL,
MIN_SAL NUMBER,
MAX_SAL NUMBER
);

COMMENT ON TABLE SAL_GRADE IS '등급';
COMMENT ON COLUMN SAL_GRADE.SAL_LEVEL IS '등급급여';
COMMENT ON COLUMN SAL_GRADE.MIN_SAL IS '최소급여';
COMMENT ON COLUMN SAL_GRADE.MAX_SAL IS '최대급여';

INSERT INTO SAL_GRADE VALUES('S1', 6000000, 10000000);
INSERT INTO SAL_GRADE VALUES('S2', 5000000, 5999999);
INSERT INTO SAL_GRADE VALUES('S3', 4000000, 4999999);
INSERT INTO SAL_GRADE VALUES('S4', 3000000, 3999999);
INSERT INTO SAL_GRADE VALUES('S5', 2000000, 2999999);
INSERT INTO SAL_GRADE VALUES('S6', 1000000, 1999999);


