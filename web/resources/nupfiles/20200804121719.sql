
DROP TABLE totalscore CASCADE CONSTRAINTS;
DROP TABLE termscore CASCADE CONSTRAINTS;
DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE attendance CASCADE CONSTRAINTS;
DROP TABLE lroom CASCADE CONSTRAINTS;
DROP TABLE lecture CASCADE CONSTRAINTS;
DROP TABLE scholarship CASCADE CONSTRAINTS;
DROP TABLE category CASCADE CONSTRAINTS;
DROP TABLE major CASCADE CONSTRAINTS;
DROP TABLE lapplication CASCADE CONSTRAINTS;
DROP TABLE reception CASCADE CONSTRAINTS;
DROP TABLE student CASCADE CONSTRAINTS;
DROP TABLE admin CASCADE CONSTRAINTS;
DROP TABLE ssbenefitst CASCADE CONSTRAINTS;
DROP TABLE absence CASCADE CONSTRAINTS;
DROP TABLE lplan CASCADE CONSTRAINTS;
DROP TABLE book CASCADE CONSTRAINTS;
DROP TABLE lecturescore CASCADE CONSTRAINTS;
DROP TABLE professor CASCADE CONSTRAINTS;
DROP TABLE schedule CASCADE CONSTRAINTS;






DROP TABLE totalscore CASCADE CONSTRAINTS;
DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE attendance CASCADE CONSTRAINTS;
    
    
CREATE TABLE totalscore (
	studentid	VARCHAR2(10)		NOT NULL,
	lcode	VARCHAR2(10)		NOT NULL,
	totpoint	NUMBER		NULL,
	totgetpoint	NUMBER		NULL,
	grdpoint	NUMBER	DEFAULT 130	NULL,
	tgpa	NUMBER		NULL
);

COMMENT ON COLUMN totalscore.studentid IS '학번';

COMMENT ON COLUMN totalscore.lcode IS '강의코드';

COMMENT ON COLUMN totalscore.totpoint IS '총신청학점';

COMMENT ON COLUMN totalscore.totgetpoint IS '총취득학점';

COMMENT ON COLUMN totalscore.grdpoint IS '졸업이수학점';

COMMENT ON COLUMN totalscore.tgpa IS '총평균평점';

DROP TABLE termscore CASCADE CONSTRAINTS;

CREATE TABLE termscore (
	studentid	VARCHAR2(10)		NOT NULL,
	lcode	VARCHAR2(10)		NOT NULL,
	getpoint	NUMBER		NULL,
	sgpa	NUMBER		NULL
);

COMMENT ON COLUMN termscore.studentid IS '학번';

COMMENT ON COLUMN termscore.lcode IS '강의코드';

COMMENT ON COLUMN termscore.getpoint IS '취득학점';

COMMENT ON COLUMN termscore.sgpa IS '학기평균평점';



CREATE TABLE notice (
	noticeno	NUMBER		NOT NULL,
	adno	VARCHAR2(10)		NOT NULL,
	noticetitle	VARCHAR2(100)		NOT NULL,
	noticewriter	VARCHAR2(40)		NOT NULL,
	noticedate	DATE	DEFAULT SYSDATE	NULL,
	originalfile	VARCHAR2(100)		NULL,
	renamefile	VARCHAR2(100)		NULL,
	noticecontent	VARCHAR2(1500)		NULL,
	noticereadcount	NUMBER	DEFAULT 0	NULL
);

COMMENT ON COLUMN notice.noticeno IS '글번호';

COMMENT ON COLUMN notice.adno IS '관리자번호';

COMMENT ON COLUMN notice.noticetitle IS '제목';

COMMENT ON COLUMN notice.noticewriter IS '작성자';

COMMENT ON COLUMN notice.noticedate IS '작성날짜';

COMMENT ON COLUMN notice.originalfile IS '원본파일';

COMMENT ON COLUMN notice.renamefile IS '수정파일';

COMMENT ON COLUMN notice.noticecontent IS '글내용';

COMMENT ON COLUMN notice.noticereadcount IS '조회수';



CREATE TABLE attendance (
	lcode	VARCHAR2(10)		NOT NULL,
	studentid	VARCHAR2(10)		NOT NULL,
	thisweek	VARCHAR2(10)		NULL,
	absent	CHAR(1)	DEFAULT 'N'	NULL,
	week1	CHAR(1)		NULL,
	week2	CHAR(1)		NULL,
	week3	CHAR(1)		NULL
);

COMMENT ON COLUMN attendance.lcode IS '강의코드';

COMMENT ON COLUMN attendance.studentid IS '학번';

COMMENT ON COLUMN attendance.thisweek IS '현재출석주차';

COMMENT ON COLUMN attendance.absent IS '결석3번';

COMMENT ON COLUMN attendance.week1 IS '1주차출결';

COMMENT ON COLUMN attendance.week2 IS '2주차출결';

COMMENT ON COLUMN attendance.week3 IS '3주차출결';

DROP TABLE schedule CASCADE CONSTRAINTS;

CREATE TABLE schedule (
   scheduleid   varchar2(10)      NOT NULL,
   adno   varchar2(10)      NOT NULL,
   schname   varchar2(1000)      NULL,
   schstartdate   date      NOT NULL,
    schenddate date       NULL

);



COMMENT ON COLUMN schedule.scheduleid IS '학사일정코드';

COMMENT ON COLUMN schedule.adno IS '관리자번호';

COMMENT ON COLUMN schedule.schname IS '일정명';

COMMENT ON COLUMN schedule.schstartdate IS '시작날짜';

COMMENT ON COLUMN schedule.schenddate IS '끝날짜';


DROP TABLE lroom CASCADE CONSTRAINTS;

CREATE TABLE lroom (
	room	VARCHAR2(20)		NOT NULL,
	lcode	VARCHAR2(10)		NOT NULL,
	building	VARCHAR2(20)		NULL,
	roommax	NUMBER	DEFAULT 30	NULL
);

COMMENT ON COLUMN lroom.room IS '강의실명';

COMMENT ON COLUMN lroom.lcode IS '강의코드';

COMMENT ON COLUMN lroom.building IS '건물명';

COMMENT ON COLUMN lroom.roommax IS '수용인원';

DROP TABLE lecture CASCADE CONSTRAINTS;

CREATE TABLE lecture (
	lcode	VARCHAR2(10)		NOT NULL,
	professorid	VARCHAR2(10)		NOT NULL,
	lname	VARCHAR2(100)		NULL,
	category	VARCHAR2(30)		NULL,
	capacity	NUMBER		NULL,
	termno	VARCHAR2(10)		NULL,
	ltime	VARCHAR2(100)		NULL,
	room	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN lecture.lcode IS '강의코드';

COMMENT ON COLUMN lecture.professorid IS '교수번호';

COMMENT ON COLUMN lecture.lname IS '강의명';

COMMENT ON COLUMN lecture.category IS '이수구분';

COMMENT ON COLUMN lecture.capacity IS '수강인원';

COMMENT ON COLUMN lecture.termno IS '년도학기';

COMMENT ON COLUMN lecture.ltime IS '강의시간';

COMMENT ON COLUMN lecture.room IS '강의실명';

DROP TABLE scholarship CASCADE CONSTRAINTS;

CREATE TABLE scholarship (
	ssname	VARCHAR2(30)		NOT NULL,
	benefitcon	VARCHAR2(100)		NOT NULL,
	value	NUMBER		NOT NULL
);

COMMENT ON COLUMN scholarship.ssname IS '장학금명';

COMMENT ON COLUMN scholarship.benefitcon IS '수혜조건';

COMMENT ON COLUMN scholarship.value IS '장학금액';

DROP TABLE category CASCADE CONSTRAINTS;

CREATE TABLE category (
	categoryname	VARCHAR2(30)		NOT NULL
);

COMMENT ON COLUMN category.categoryname IS '구분명';

DROP TABLE major CASCADE CONSTRAINTS;

CREATE TABLE major (
	majorno	VARCHAR2(10)		NOT NULL,
	majorname	VARCHAR2(30)		NOT NULL,
	capacity	NUMBER		NOT NULL,
	tuition	NUMBER(9)	NOT NULL,
	categoryname	VARCHAR2(30)		NOT NULL
);

COMMENT ON COLUMN major.majorno IS '학과코드';

COMMENT ON COLUMN major.majorname IS '학과명';

COMMENT ON COLUMN major.capacity IS '정원';

COMMENT ON COLUMN major.tuition IS '등록금';

COMMENT ON COLUMN major.categoryname IS '구분명';

DROP TABLE lapplication CASCADE CONSTRAINTS;

CREATE TABLE lapplication (
	receptionno	VARCHAR2(10)		NOT NULL,
	lcode	VARCHAR2(10)		NOT NULL,
	semester	VARCHAR2(10)	DEFAULT '1학기'	NOT NULL,
	lgoal	VARCHAR2(20)		NOT NULL,
	fclass	VARCHAR2(500)		NOT NULL,
	lpersonnel	VARCHAR2(20)		NOT NULL,
	lpoint	NUMBER	DEFAULT 3	NOT NULL,
	lcheck	VARCHAR2(1)	DEFAULT 'N'	NOT NULL,
	aplpoint	NUMBER	DEFAULT 0	NULL,
	studentid	VARCHAR2(10)		NOT NULL,
	professorid	VARCHAR2(10)		NOT NULL,
	room	VARCHAR2(20)		NOT NULL,
	bookno	VARCHAR2(10)		NOT NULL
);

COMMENT ON COLUMN lapplication.receptionno IS '강의신청번호';

COMMENT ON COLUMN lapplication.lcode IS '강의코드';

COMMENT ON COLUMN lapplication.semester IS '학기명';

COMMENT ON COLUMN lapplication.lgoal IS '교과목목표';

COMMENT ON COLUMN lapplication.fclass IS 'F강죄진행방법';

COMMENT ON COLUMN lapplication.lpersonnel IS '강의정원';

COMMENT ON COLUMN lapplication.lpoint IS '과목학점';

COMMENT ON COLUMN lapplication.lcheck IS '이수구분';

COMMENT ON COLUMN lapplication.aplpoint IS '신청학점';

COMMENT ON COLUMN lapplication.studentid IS '학번';

COMMENT ON COLUMN lapplication.professorid IS '교수번호';

COMMENT ON COLUMN lapplication.room IS '강의실명';

COMMENT ON COLUMN lapplication.bookno IS '교재번호';

DROP TABLE reception CASCADE CONSTRAINTS;

CREATE TABLE reception (
	receptionno	NUMBER		NOT NULL,
	professorid	VARCHAR2(10)		NOT NULL,
	reason	VARCHAR2(500)		NOT NULL,
	way	VARCHAR2(20)		NOT NULL,
	dayoff	DATE	DEFAULT SYSDATE	NOT NULL,
	rday	DATE	DEFAULT SYSDATE	NOT NULL,
	rtime	VARCHAR2(10)		NOT NULL,
	lcode	VARCHAR2(10)		NOT NULL,
	room	VARCHAR2(20)		NOT NULL,
	subprofessorid	VARCHAR2(10)		NULL
);

COMMENT ON COLUMN reception.receptionno IS '접수번호';

COMMENT ON COLUMN reception.professorid IS '신청교수번호';

COMMENT ON COLUMN reception.reason IS '사유';

COMMENT ON COLUMN reception.way IS '수업방식';

COMMENT ON COLUMN reception.dayoff IS '휴강일자';

COMMENT ON COLUMN reception.rday IS '보강일자';

COMMENT ON COLUMN reception.rtime IS '보강시간';

COMMENT ON COLUMN reception.lcode IS '강의코드';

COMMENT ON COLUMN reception.room IS '강의실명';

COMMENT ON COLUMN reception.subprofessorid IS '대리교수번호';

DROP TABLE lecturescore CASCADE CONSTRAINTS;

CREATE TABLE lecturescore (
	lcode	VARCHAR2(10)		NOT NULL,
	studentid	VARCHAR2(10)		NOT NULL,
	atndscore	NUMBER		NULL,
	examscore	NUMBER		NULL,
	lgpa	NUMBER		NULL,
	grade	CHAR(1)		NULL
);

COMMENT ON COLUMN lecturescore.lcode IS '강의코드';

COMMENT ON COLUMN lecturescore.studentid IS '학번';

COMMENT ON COLUMN lecturescore.atndscore IS '출결점수';

COMMENT ON COLUMN lecturescore.examscore IS '시험점수';

COMMENT ON COLUMN lecturescore.lgpa IS '과목평점';

COMMENT ON COLUMN lecturescore.grade IS '과목등급';

DROP TABLE student CASCADE CONSTRAINTS;

CREATE TABLE student (
	studentid	VARCHAR2(10)		NOT NULL,
	studentname	VARCHAR2(20)		NOT NULL,
	studentssn	VARCHAR2(14)		NOT NULL,
	address	VARCHAR2(500)	NOT NULL,
	phone	VARCHAR2(20)	NULL,
	gender	VARCHAR2(1)	DEFAULT 'M'	NOT NULL,
	email	VARCHAR2(500)	NOT NULL,
	treasure	VARCHAR2(200)	NOT NULL,
	categoryname	VARCHAR2(30)		NOT NULL,
	majorno	VARCHAR2(20)		NOT NULL,
	entrancedate	DATE	DEFAULT SYSDATE	NULL,
	absencewhether	VARCHAR2(1)	DEFAULT 'N'	NULL,
	absencecount	NUMBER	DEFAULT 0	NULL,
	ssname	VARCHAR2(30)	NULL
);

COMMENT ON COLUMN student.studentid IS '학생번호';

COMMENT ON COLUMN student.studentname IS '학생명';

COMMENT ON COLUMN student.studentssn IS '주민등록번호';

COMMENT ON COLUMN student.categoryname IS '구분명';

COMMENT ON COLUMN student.majorno IS '학과코드';

COMMENT ON COLUMN student.address IS '주소';

COMMENT ON COLUMN student.phone IS '전화번호';

COMMENT ON COLUMN student.gender IS '성별';

COMMENT ON COLUMN student.email IS '이메일';

COMMENT ON COLUMN student.treasure IS '나의보물1호';

COMMENT ON COLUMN student.entrancedate IS '입학년월';

COMMENT ON COLUMN student.absencewhether IS '휴학여부';

COMMENT ON COLUMN student.absencecount IS '휴학카운트';

COMMENT ON COLUMN student.ssname IS '장학금명';

DROP TABLE professor CASCADE CONSTRAINTS;

CREATE TABLE professor (
	professorid	VARCHAR2(10)		NOT NULL,
	professorname	VARCHAR2(10)		NOT NULL,
	professorssn	VARCHAR2(20)		NULL,
	address	VARCHAR2(500)	NOT NULL,
	phone	VARCHAR2(20)	NULL,
	gender	VARCHAR2(1)	DEFAULT 'M'	NOT NULL,
	email	VARCHAR2(500)	NOT NULL,
	treasure	VARCHAR2(200)	NOT NULL,
	categoryname	VARCHAR2(30)		NOT NULL,
	majorno	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN professor.professorid IS '교수번호';

COMMENT ON COLUMN professor.professorname IS '교수명';

COMMENT ON COLUMN professor.professorssn IS '주민등록번호';

COMMENT ON COLUMN professor.categoryname IS '구분명';

COMMENT ON COLUMN professor.majorno IS '학과코드';

COMMENT ON COLUMN professor.address IS '주소';

COMMENT ON COLUMN professor.phone IS '전화번호';

COMMENT ON COLUMN professor.gender IS '성별';

COMMENT ON COLUMN professor.email IS '이메일';

COMMENT ON COLUMN professor.treasure IS '나의보물1호';

DROP TABLE admin CASCADE CONSTRAINTS;

CREATE TABLE admin (
	adminid	VARCHAR2(10)	NOT NULL,
	adminname	VARCHAR2(10)	NOT NULL,
	adminadssn	VARCHAR2(20)	NOT NULL,
	address	VARCHAR2(500)	NOT NULL,
	phone	VARCHAR2(20)	NULL,
	gender	VARCHAR2(1)	DEFAULT 'M'	NOT NULL,
	email	VARCHAR2(500)	NOT NULL,
	treasure	VARCHAR2(200)	NOT NULL,
	adminhiredate	DATE		NULL,
	admindeptnum	VARCHAR2(10)	NULL
);

COMMENT ON COLUMN admin.adminid IS 'admin no';

COMMENT ON COLUMN admin.adminname IS 'ad name';

COMMENT ON COLUMN admin.adminadssn IS 'ad ssn';

COMMENT ON COLUMN admin.address IS 'ad address';

COMMENT ON COLUMN admin.phone IS 'ad phone';

COMMENT ON COLUMN admin.gender IS 'ad gender';

COMMENT ON COLUMN admin.email IS 'ad email';

COMMENT ON COLUMN admin.treasure IS 'ad treasure';

COMMENT ON COLUMN admin.adminhiredate IS 'ad hire date';

COMMENT ON COLUMN admin.admindeptnum IS '부서코드';

DROP TABLE ssbenefitst CASCADE CONSTRAINTS;

CREATE TABLE ssbenefitst (
	benefitterm	NUMBER		NOT NULL,
	studentid	VARCHAR2(10)		NOT NULL,
	ssname	VARCHAR2(40)		NOT NULL
);

COMMENT ON COLUMN ssbenefitst.benefitterm IS '장학금수혜학기';

COMMENT ON COLUMN ssbenefitst.studentid IS '학번';

COMMENT ON COLUMN ssbenefitst.ssname IS '장학금명';

DROP TABLE absence CASCADE CONSTRAINTS;

CREATE TABLE absence (
	requestid	VARCHAR2(30)		NOT NULL,
	studentid	VARCHAR2(10)		NOT NULL,
	requestdate	DATE	DEFAULT SYSDATE	NOT NULL,
	limitcancledate	DATE	DEFAULT SYSDATE+1	NOT NULL,
	information	VARCHAR2(200)		NOT NULL
);

COMMENT ON COLUMN absence.requestid IS '신청코드';

COMMENT ON COLUMN absence.studentid IS '학번';

COMMENT ON COLUMN absence.requestdate IS '신청일';

COMMENT ON COLUMN absence.limitcancledate IS '취소제한날짜';

COMMENT ON COLUMN absence.information IS '안내사항';

DROP TABLE lplan CASCADE CONSTRAINTS;

CREATE TABLE lplan (
	lcode	VARCHAR2(10)		NOT NULL,
	room	VARCHAR2(20)		NOT NULL,
	professorid	VARCHAR2(10)		NOT NULL,
	bookno	VARCHAR2(10)		NOT NULL,
	content	VARCHAR2(500)		NULL
);

COMMENT ON COLUMN lplan.lcode IS '강의코드';

COMMENT ON COLUMN lplan.room IS '강의실명';

COMMENT ON COLUMN lplan.professorid IS '교수번호';

COMMENT ON COLUMN lplan.bookno IS '교재번호';

COMMENT ON COLUMN lplan.content IS '수업내용';

DROP TABLE book CASCADE CONSTRAINTS;

CREATE TABLE book (
	bookno	VARCHAR2(10)		NOT NULL,
	issue	DATE		NULL,
	writer	VARCHAR2(20)		NOT NULL,
	bookname	VARCHAR2(20)		NOT NULL,
	publisher	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN book.bookno IS '교재번호';

COMMENT ON COLUMN book.issue IS '교재 발행년도';

COMMENT ON COLUMN book.writer IS '교재저자';

COMMENT ON COLUMN book.bookname IS '교재이름';

COMMENT ON COLUMN book.publisher IS '출판사';

ALTER TABLE totalscore ADD CONSTRAINT PK_TOTALSCORE PRIMARY KEY (
	studentid,
	lcode
);

ALTER TABLE termscore ADD CONSTRAINT PK_TERMSCORE PRIMARY KEY (
	studentid,
	lcode
);

ALTER TABLE notice ADD CONSTRAINT PK_NOTICE PRIMARY KEY (
	noticeno
);

ALTER TABLE attendance ADD CONSTRAINT PK_ATTENDANCE PRIMARY KEY (
	lcode,
	studentid
);

ALTER TABLE schedule ADD CONSTRAINT PK_SCHEDULE PRIMARY KEY (
	scheduleid
);

ALTER TABLE lroom ADD CONSTRAINT PK_LROOM PRIMARY KEY (
	room
);

ALTER TABLE lecture ADD CONSTRAINT PK_LECTURE PRIMARY KEY (
	lcode
);

ALTER TABLE scholarship ADD CONSTRAINT PK_SCHOLARSHIP PRIMARY KEY (
	ssname
);

ALTER TABLE category ADD CONSTRAINT PK_CATEGORY PRIMARY KEY (
	categoryname
);

ALTER TABLE major ADD CONSTRAINT PK_MAJOR PRIMARY KEY (
	majorno
);

ALTER TABLE lapplication ADD CONSTRAINT PK_LAPPLICATION PRIMARY KEY (
	receptionno
);

ALTER TABLE reception ADD CONSTRAINT PK_RECEPTION PRIMARY KEY (
	receptionno
);

ALTER TABLE lecturescore ADD CONSTRAINT PK_LECTURESCORE PRIMARY KEY (
	lcode,
	studentid
);

ALTER TABLE student ADD CONSTRAINT PK_STUDENT PRIMARY KEY (
	studentid
);

ALTER TABLE professor ADD CONSTRAINT PK_PROFESSOR PRIMARY KEY (
	professorid
);

ALTER TABLE admin ADD CONSTRAINT PK_ADMIN PRIMARY KEY (
	adminid
);

ALTER TABLE ssbenefitst ADD CONSTRAINT PK_SSBENEFITST PRIMARY KEY (
	benefitterm,
	studentid
);

ALTER TABLE absence ADD CONSTRAINT PK_ABSENCE PRIMARY KEY (
	requestid
);

ALTER TABLE lplan ADD CONSTRAINT PK_LPLAN PRIMARY KEY (
	lcode
);

ALTER TABLE book ADD CONSTRAINT PK_BOOK PRIMARY KEY (
	bookno
);

ALTER TABLE totalscore ADD CONSTRAINT FK_student_TO_totalscore_1 FOREIGN KEY (
	studentid
)
REFERENCES student (
	studentid
);

ALTER TABLE totalscore ADD CONSTRAINT FK_lecture_TO_totalscore_1 FOREIGN KEY (
	lcode
)
REFERENCES lecture (
	lcode
);

ALTER TABLE termscore ADD CONSTRAINT FK_student_TO_termscore_1 FOREIGN KEY (
	studentid
)
REFERENCES student (
	studentid
);

ALTER TABLE termscore ADD CONSTRAINT FK_lecture_TO_termscore_1 FOREIGN KEY (
	lcode
)
REFERENCES lecture (
	lcode
);

ALTER TABLE notice ADD CONSTRAINT FK_admin_TO_notice_1 FOREIGN KEY (
	adno
)
REFERENCES admin (
	adminid
);

ALTER TABLE attendance ADD CONSTRAINT FK_lecture_TO_attendance_1 FOREIGN KEY (
	lcode
)
REFERENCES lecture (
	lcode
);

ALTER TABLE attendance ADD CONSTRAINT FK_student_TO_attendance_1 FOREIGN KEY (
	studentid
)
REFERENCES student (
	studentid
);

ALTER TABLE schedule ADD CONSTRAINT FK_admin_TO_schedule_1 FOREIGN KEY (
	adno
)
REFERENCES admin (
	adminid
);

ALTER TABLE lroom ADD CONSTRAINT FK_lecture_TO_lroom_1 FOREIGN KEY (
	lcode
)
REFERENCES lecture (
	lcode
);

ALTER TABLE lecture ADD CONSTRAINT FK_professor_TO_lecture_1 FOREIGN KEY (
	professorid
)
REFERENCES professor (
	professorid
);

ALTER TABLE lecture ADD CONSTRAINT FK_lroom_TO_lecture_1 FOREIGN KEY (
	room
)
REFERENCES lroom (
	room
);

ALTER TABLE major ADD CONSTRAINT FK_category_TO_major_1 FOREIGN KEY (
	categoryname
)
REFERENCES category (
	categoryname
);

ALTER TABLE lapplication ADD CONSTRAINT FK_lecture_TO_lapplication_1 FOREIGN KEY (
	lcode
)
REFERENCES lecture (
	lcode
);

ALTER TABLE lapplication ADD CONSTRAINT FK_student_TO_lapplication_1 FOREIGN KEY (
	studentid
)
REFERENCES student (
	studentid
);

ALTER TABLE lapplication ADD CONSTRAINT FK_professor_TO_lapplication_1 FOREIGN KEY (
	professorid
)
REFERENCES professor (
	professorid
);

ALTER TABLE lapplication ADD CONSTRAINT FK_lroom_TO_lapplication_1 FOREIGN KEY (
	room
)
REFERENCES lroom (
	room
);

ALTER TABLE lapplication ADD CONSTRAINT FK_book_TO_lapplication_1 FOREIGN KEY (
	bookno
)
REFERENCES book (
	bookno
);

ALTER TABLE reception ADD CONSTRAINT FK_professor_TO_reception_1 FOREIGN KEY (
	professorid
)
REFERENCES professor (
	professorid
);

ALTER TABLE reception ADD CONSTRAINT FK_professor_TO_reception_2 FOREIGN KEY (
	subprofessorid
)
REFERENCES professor (
	professorid
);

ALTER TABLE reception ADD CONSTRAINT FK_lecture_TO_reception_1 FOREIGN KEY (
	lcode
)
REFERENCES lecture (
	lcode
);

ALTER TABLE reception ADD CONSTRAINT FK_lroom_TO_reception_1 FOREIGN KEY (
	room
)
REFERENCES lroom (
	room
);

ALTER TABLE lecturescore ADD CONSTRAINT FK_lecture_TO_lecturescore_1 FOREIGN KEY (
	lcode
)
REFERENCES lecture (
	lcode
);

ALTER TABLE lecturescore ADD CONSTRAINT FK_student_TO_lecturescore_1 FOREIGN KEY (
	studentid
)
REFERENCES student (
	studentid
);

ALTER TABLE student ADD CONSTRAINT FK_category_TO_student_1 FOREIGN KEY (
	categoryname
)
REFERENCES category (
	categoryname
);

ALTER TABLE student ADD CONSTRAINT FK_major_TO_student_1 FOREIGN KEY (
	majorno
)
REFERENCES major (
	majorno
);

ALTER TABLE student ADD CONSTRAINT FK_scholarship_TO_student_1 FOREIGN KEY (
	ssname
)
REFERENCES scholarship (
	ssname
);

ALTER TABLE professor ADD CONSTRAINT FK_category_TO_professor_1 FOREIGN KEY (
	categoryname
)
REFERENCES category (
	categoryname
);

ALTER TABLE professor ADD CONSTRAINT FK_major_TO_professor_1 FOREIGN KEY (
	majorno
)
REFERENCES major (
	majorno
);

ALTER TABLE ssbenefitst ADD CONSTRAINT FK_student_TO_ssbenefitst_1 FOREIGN KEY (
	studentid
)
REFERENCES student (
	studentid
);

ALTER TABLE ssbenefitst ADD CONSTRAINT FK_scholarship_TO_ssbenefitst FOREIGN KEY (
	ssname
)
REFERENCES scholarship (
	ssname
);

ALTER TABLE absence ADD CONSTRAINT FK_student_TO_absence_1 FOREIGN KEY (
	studentid
)
REFERENCES student (
	studentid
);

ALTER TABLE lplan ADD CONSTRAINT FK_lecture_TO_lplan_1 FOREIGN KEY (
	lcode
)
REFERENCES lecture (
	lcode
);

ALTER TABLE lplan ADD CONSTRAINT FK_lroom_TO_lplan_1 FOREIGN KEY (
	room
)
REFERENCES lroom (
	room
);

ALTER TABLE lplan ADD CONSTRAINT FK_professor_TO_lplan_1 FOREIGN KEY (
	professorid
)
REFERENCES professor (
	professorid
);

ALTER TABLE lplan ADD CONSTRAINT FK_book_TO_lplan_1 FOREIGN KEY (
	bookno
)
REFERENCES book (
	bookno
);



