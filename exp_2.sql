create table Instructor_28 (
inst_id int,
inst_name varchar(30) NOT NULL,
Department varchar(20));

Alter table Instructor_28 modify (inst_id int primary key);

DESC Instructor_28

CREATE TABLE Course_28 (
course_id int PRIMARY KEY,
file_1 varchar(30) NOT NULL,
credit INT check(credit>0));

Alter table Course_28 modify (course_id int primary key);
Alter table Course_28 ADD (inst_id int);
Alter table Course_28 add (foreign key (inst_id) references Instructor_28 (inst_id )ON DELETE SET NULL);
DESC Course_28

CREATE TABLE Student_28
  (Roll_no int primary key,
  S_name varchar(20) not null,
  DOB DATE,
  Department varchar(20)
  );
  DESC Student_28
  
Create table Enrollment(
  Roll_no int primary key,foreign key (Roll_no) references Student_28 (Roll_no )ON DELETE SET NULL,
  course_id int ,foreign key (course_id) references Course_28 (course_id )ON DELETE SET NULL,
  grade char(2));
Alter table Enrollment modify (foreign key (Roll_no) references Student_28 (Roll_no )ON DELETE cascade);
 
DESC Enrollment

Alter table Enrollment ADD (email varchar(20));

DESC Enrollment

create index idx_student_dept ON Student_28 (Department);
create index idx_course_instructor ON Course_28 (inst_id);



select INDEX_NAME ,TABLE_NAME, STATUS from USER_INDEXES where INDEX_NAME= 'IDX_STUDENT_DEPT';
  select INDEX_NAME ,TABLE_NAME, STATUS from USER_INDEXES where INDEX_NAME= 'IDX_COURSE_INSTRUCTOR';

Drop table Enrollment