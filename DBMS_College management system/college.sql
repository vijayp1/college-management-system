create table DEPARTMENT(
Dept_id varchar2(30) constraint depid primary key,
Name varchar2(30),
HOD varchar2(30));

create table SEMESTER(
Sem_code varchar2(30) constraint semcc PRIMARY KEY,
name varchar2(30),
Start_date date,
End_date date);

create table STUDENT(
S_ID varchar2(30) constraint sid primary key,
gender varchar2(9),
Dob date,
F_name varchar2(30),
L_name varchar2(30),
phone number(15),
Dept_id varchar2(30),
constraint depidd foreign key(Dept_id) references DEPARTMENT(Dept_id));

create table FACULTY(
F_ID varchar2(30) constraint fid primary key,
Gender varchar2(9),
Phone number(15),
Name varchar2(30),
Email varchar2(30),
Qualification varchar2(30),
Dept_id varchar2(30),
constraint depiddd foreign key(Dept_id) references DEPARTMENT(Dept_id));

create table DEPARTMENT_PHONE(
Dept_id varchar2(30),
phone number(15),
constraint depidddd foreign key(Dept_id) references DEPARTMENT(Dept_id)
);

create table SEM_CGPA(
Sem_code varchar2(30),
CGPA float,
Dept_id varchar2(30),
S_ID varchar2(30),
constraint depiddddd foreign key(Dept_id) references DEPARTMENT(Dept_id),
constraint semc foreign key(sem_code) references semester(sem_code),
constraint siddd foreign key(S_ID) references STUDENT(S_ID));

create table SUBJECT(
CODE varchar2(30) constraint cod primary key,
Name varchar2(30),
Tot_hours number(10));

create table ATTENDANCE(
S_ID varchar2(30),
CODE varchar2(30),
percentage number(10),
constraint sidddd foreign key(S_ID) references STUDENT(S_ID),
constraint codd foreign key(CODE) references SUBJECT(CODE));

create table SUB_GPA(
GPA number(12),
Sem_code varchar2(30),
S_ID varchar2(30),
CODE varchar2(30),
constraint semccc foreign key(Sem_code) references SEMESTER(Sem_code),
constraint siddddd foreign key(S_ID) references STUDENT(S_ID),
constraint coddd foreign key(CODE) references SUBJECT(CODE));

insert into department(dept_id,name,hod) values('CSE','COMPUTER SCIENCE','VIJAY');
insert into department(dept_id,name,hod) values('EEE','ELECTRICAL','ARUN');
insert into department(dept_id,name,hod) values('ECE','ELECTRONICS AND COMMUNICATION','SURYA');
insert into department(dept_id,name,hod) values('MEC','MECHANICAL','ARJUN');
insert into department(dept_id,name,hod) values('CHE','CHEMICAL','ABHI');

insert into subject(code,name,tot_hours) values('CSE2001','DBMS',12);
insert into subject(code,name,tot_hours) values('CSE2002','DSA',13);
insert into subject(code,name,tot_hours) values('CSE2003','DLD',12);
insert into subject(code,name,tot_hours) values('EEE2001','BEEE',13);
insert into subject(code,name,tot_hours) values('EEE2002','CENSOR',11);
insert into subject(code,name,tot_hours) values('ECE2001','BIOMETRIC',13);
insert into subject(code,name,tot_hours) values('ECE2002','NANO TECH',14);
insert into subject(code,name,tot_hours) values('MECH2001','3D PRINTING',10);
insert into subject(code,name,tot_hours) values('MECH2002','AUTOMATION',13);
insert into subject(code,name,tot_hours) values('CHE2001','METALLURGY',13);
insert into subject(code,name,tot_hours) values('CHE2002','TITRATION',12);
insert into subject(code,name,tot_hours) values('CHE2003','THERMODYNAMICS',14);

insert into student(S_ID,gender,dob,f_name,l_name,phone,dept_id) values('S001','F','12-NOV-2001','rakul','preet',9587537284,'CSE');
insert into student(S_ID,gender,dob,f_name,l_name,phone,dept_id) values('S002','M','28-OCT-2001','raju','nayak',6483976548,'CSE');
insert into student(S_ID,gender,dob,f_name,l_name,phone,dept_id) values('S003','F','12-SEP-1999','samantha','ruth',9763532875,'EEE');
insert into student(S_ID,gender,dob,f_name,l_name,phone,dept_id) values('S004','M','11-MAR-1999','allu','arjun',9495739584,'ECE');
insert into student(S_ID,gender,dob,f_name,l_name,phone,dept_id) values('S005','M','10-APR-2000','vijay','reddy',9876587976,'EEE');
insert into student(S_ID,gender,dob,f_name,l_name,phone,dept_id) values('S006','F','19-FEB-2002','SHRUTHI','HASAN',9876879689,'ECE');
insert into student(S_ID,gender,dob,f_name,l_name,phone,dept_id) values('S007','M','13-SEP-2000','hari','krishna',8798789767,'MEC');
insert into student(S_ID,gender,dob,f_name,l_name,phone,dept_id) values('S008','F','07-AUG-1999','karun','teja',9876983456,'MEC');
insert into student(S_ID,gender,dob,f_name,l_name,phone,dept_id) values('S009','M','04-JUN-2000','aryan','rajesh',9874359879,'CSE');
insert into student(S_ID,gender,dob,f_name,l_name,phone,dept_id) values('S010','M','14-FEB-1999','arun','krishna',9876987456,'CHE');
insert into student(S_ID,gender,dob,f_name,l_name,phone,dept_id) values('S011','F','06-SEP-2002','k','kavya',9878987098,'CHE');
insert into student(S_ID,gender,dob,f_name,l_name,phone,dept_id) values('S012','F','10-JUL-2001','KRUTHI','SANAN',7908908657,'ECE');
insert into student(S_ID,gender,dob,f_name,l_name,phone,dept_id) values('S013','M','15-JUL-2000','MUKESH','DHIRUBHAI',7098437828,'CHE');

insert into attendance(S_ID,CODE,percentage) values('S001','CSE2001',97);
insert into attendance(S_ID,CODE,percentage) values('S001','CSE2002',89);
insert into attendance(S_ID,CODE,percentage) values('S001','CSE2003',91);
insert into attendance(S_ID,CODE,percentage) values('S002','CSE2001',95);
insert into attendance(S_ID,CODE,percentage) values('S002','CSE2002',80);
insert into attendance(S_ID,CODE,percentage) values('S002','CSE2003',92);
insert into attendance(S_ID,CODE,percentage) values('S009','CSE2001',78);
insert into attendance(S_ID,CODE,percentage) values('S009','CSE2002',91);
insert into attendance(S_ID,CODE,percentage) values('S009','CSE2003',88);
insert into attendance(S_ID,CODE,percentage) values('S003','EEE2001',89);
insert into attendance(S_ID,CODE,percentage) values('S003','EEE2002',92);
insert into attendance(S_ID,CODE,percentage) values('S005','EEE2001',79);
insert into attendance(S_ID,CODE,percentage) values('S005','EEE2002',77);
insert into attendance(S_ID,CODE,percentage) values('S004','ECE2001',80);
insert into attendance(S_ID,CODE,percentage) values('S004','ECE2002',77);
insert into attendance(S_ID,CODE,percentage) values('S006','ECE2001',90);
insert into attendance(S_ID,CODE,percentage) values('S006','ECE2002',80);
insert into attendance(S_ID,CODE,percentage) values('S012','ECE2001',85);
insert into attendance(S_ID,CODE,percentage) values('S012','ECE2002',69);
insert into attendance(S_ID,CODE,percentage) values('S007','MECH2001',83);
insert into attendance(S_ID,CODE,percentage) values('S007','MECH2002',91);
insert into attendance(S_ID,CODE,percentage) values('S008','MECH2001',69);
insert into attendance(S_ID,CODE,percentage) values('S008','MECH2002',74);
insert into attendance(S_ID,CODE,percentage) values('S010','CHE2001',80);
insert into attendance(S_ID,CODE,percentage) values('S010','CHE2002',77);
insert into attendance(S_ID,CODE,percentage) values('S010','CHE2003',92);
insert into attendance(S_ID,CODE,percentage) values('S011','CHE2001',78);
insert into attendance(S_ID,CODE,percentage) values('S011','CHE2002',87);
insert into attendance(S_ID,CODE,percentage) values('S011','CHE2003',89);
insert into attendance(S_ID,CODE,percentage) values('S013','CHE2001',92);
insert into attendance(S_ID,CODE,percentage) values('S013','CHE2002',88);
insert into attendance(S_ID,CODE,percentage) values('S013','CHE2003',90);

insert into faculty(f_id,gender,phone,name,email,qualification,dept_id) values('F001','M',9879879879,'paul','paul@gmail.com','B.COM','CSE');
insert into faculty(f_id,gender,phone,name,email,qualification,dept_id) values('F002','M',9876587698,'hari','hari@gmail.com','B.TECH','CSE');
insert into faculty(f_id,gender,phone,name,email,qualification,dept_id) values('F003','F',7098006678,'anu','anu@gmail.com','M.TECH','CSE');
insert into faculty(f_id,gender,phone,name,email,qualification,dept_id) values('F004','M',7709899056,'arjun','arjun@gmail.com','B.TECH','ECE');
insert into faculty(f_id,gender,phone,name,email,qualification,dept_id) values('F005','F',7989347349,'priya','priya@gmail.com','B.COM','ECE');
insert into faculty(f_id,gender,phone,name,email,qualification,dept_id) values('F006','F',8398798327,'shuthi','shruthi@gmail.com','BSE','EEE');
insert into faculty(f_id,gender,phone,name,email,qualification,dept_id) values('F007','M',7349875987,'mahesh','mahesh@gmail.com','DEGREE','EEE');
insert into faculty(f_id,gender,phone,name,email,qualification,dept_id) values('F008','M',9834579734,'hruthik','hruthik@gmail.com','PG','MEC');
insert into faculty(f_id,gender,phone,name,email,qualification,dept_id) values('F009','F',9873498744,'rakul','rakul@gmail.com','B.TECH','MEC');
insert into faculty(f_id,gender,phone,name,email,qualification,dept_id) values('F010','F',3897439797,'moni','moni@gmail.com','M.TECH','CHE');
insert into faculty(f_id,gender,phone,name,email,qualification,dept_id) values('F011','M',3984729734,'arun','arun@gmail.com','PG','CHE');
insert into faculty(f_id,gender,phone,name,email,qualification,dept_id) values('F012','M',9809898833,'srinu','srinu@gmail.com','PG','CHE');

insert into semester(sem_code,name,start_date,end_date) values('FALL19','FALL SEMESTER','06-JUL-2019','10-DEC-2019');
insert into semester(sem_code,name,start_date,end_date) values('WIN19','WINTER SEMESTER','13-DEC-2019','09-APR-2020');

insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('FALL19',8.9,'CSE','S001');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('WIN19',8.6,'CSE','S001');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('FALL19',8.4,'CSE','S002');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('WIN19',9.2,'CSE','S002');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('FALL19',8.0,'ECE','S004');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('WIN19',8.6,'ECE','S004');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('FALL19',9.1,'EEE','S005');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('WIN19',9.0,'EEE','S005');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('FALL19',8.9,'EEE','S003');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('WIN19',8.6,'EEE','S003');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('FALL19',8.4,'ECE','S006');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('WIN19',9.2,'ECE','S006');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('FALL19',8.0,'MEC','S007');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('WIN19',8.6,'MEC','S007');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('FALL19',9.1,'MEC','S008');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('WIN19',9.0,'MEC','S008');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('FALL19',9.1,'CSE','S009');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('WIN19',9.0,'CSE','S009');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('FALL19',8.9,'CHE','S010');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('WIN19',8.6,'CHE','S010');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('FALL19',8.4,'CHE','S011');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('WIN19',9.2,'CHE','S011');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('FALL19',8.0,'ECE','S012');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('WIN19',8.6,'ECE','S012');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('FALL19',9.1,'CHE','S013');
insert into sem_cgpa(sem_code,cgpa,dept_id,s_id) values('WIN19',9.0,'CHE','S013');

insert into department_phone(dept_id,phone) values('CSE',987894873);
insert into department_phone(dept_id,phone) values('ECE',093049884);
insert into department_phone(dept_id,phone) values('CSE',438743985);
insert into department_phone(dept_id,phone) values('EEE',394879487);
insert into department_phone(dept_id,phone) values('MEC',348972398);
insert into department_phone(dept_id,phone) values('CHE',398409238);
insert into department_phone(dept_id,phone) values('CHE',345437554);

insert into sub_gpa(gpa,sem_code,s_id,code) values(8,'FALL19','S001','CSE2001');
insert into sub_gpa(gpa,sem_code,s_id,code) values(9,'WIN19','S001','CSE2002');
insert into sub_gpa(gpa,sem_code,s_id,code) values(8,'WIN19','S001','CSE2003');
insert into sub_gpa(gpa,sem_code,s_id,code) values(7,'FALL19','S002','CSE2001');
insert into sub_gpa(gpa,sem_code,s_id,code) values(9,'FALL19','S002','CSE2002');
insert into sub_gpa(gpa,sem_code,s_id,code) values(8,'WIN19','S002','CSE2003');
insert into sub_gpa(gpa,sem_code,s_id,code) values(6,'FALL19','S003','EEE2001');
insert into sub_gpa(gpa,sem_code,s_id,code) values(7,'WIN19','S003','EEE2002');
insert into sub_gpa(gpa,sem_code,s_id,code) values(9,'WIN19','S005','EEE2001');
insert into sub_gpa(gpa,sem_code,s_id,code) values(8,'FALL19','S005','EEE2002');
insert into sub_gpa(gpa,sem_code,s_id,code) values(9,'FALL19','S004','ECE2001');
insert into sub_gpa(gpa,sem_code,s_id,code) values(8,'WIN19','S004','ECE2002');
insert into sub_gpa(gpa,sem_code,s_id,code) values(6,'FALL19','S006','ECE2001');
insert into sub_gpa(gpa,sem_code,s_id,code) values(7,'WIN19','S006','ECE2002');
insert into sub_gpa(gpa,sem_code,s_id,code) values(9,'WIN19','S012','ECE2001');
insert into sub_gpa(gpa,sem_code,s_id,code) values(8,'FALL19','S012','ECE2002');
insert into sub_gpa(gpa,sem_code,s_id,code) values(6,'FALL19','S007','MECH2001');
insert into sub_gpa(gpa,sem_code,s_id,code) values(7,'WIN19','S007','MECH2002');
insert into sub_gpa(gpa,sem_code,s_id,code) values(9,'WIN19','S008','MECH2001');
insert into sub_gpa(gpa,sem_code,s_id,code) values(8,'FALL19','S008','MECH2002');
insert into sub_gpa(gpa,sem_code,s_id,code) values(9,'FALL19','S010','CHE2001');
insert into sub_gpa(gpa,sem_code,s_id,code) values(8,'WIN19','S010','CHE2002');
insert into sub_gpa(gpa,sem_code,s_id,code) values(6,'FALL19','S011','CHE2001');
insert into sub_gpa(gpa,sem_code,s_id,code) values(7,'WIN19','S011','CHE2002');
insert into sub_gpa(gpa,sem_code,s_id,code) values(9,'WIN19','S013','CHE2001');
insert into sub_gpa(gpa,sem_code,s_id,code) values(8,'FALL19','S013','CHE2002');