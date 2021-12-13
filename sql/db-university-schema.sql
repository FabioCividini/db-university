create database db_university;
use db_university;


-- SCHEMA


create table departments(
	id int not null auto_increment,
	name varchar(100) not null,
	address varchar(255),
	primary key(id)
);

alter table departments add column email varchar(100);
alter table departments add column website varchar(255);
alter table departments add column head_of_department varchar(100);
alter table departments add column phone int;


create table degress(
	id int not null auto_increment,
	name varchar(255) not null,
	email varchar(100),
	level varchar(100),
	departments_id int not null,
	primary key (id),
	foreign key (departments_id) references departments(id)
);

alter table degress add column address varchar(255);
alter table degress add column website varchar(255);


create table courses(
	id int not null auto_increment,
	name varchar(255) not null,
	description text,
	website varchar(255),
	cfu int,
	degress_id int not null,
	primary key (id),
	foreign key (degress_id) references degress(id)
);


create table teachers(
	id int not null auto_increment,
	name varchar(255) not null,
	surname varchar(255) not null,
	phone int,
	email varchar(100),
	office_address varchar(255),
	primary key (id)
);


-- TABELLA PONTE TRA TEACHERS E COURSES


create table teachers_courses(
	teachers_id int not null,
	courses_id int not null,
	primary key (teachers_id, courses_id),
	foreign key (teachers_id) references teachers(id),
	foreign key (courses_id) references courses(id)
);


create table students(
	id int not null auto_increment,
	name varchar(255) not null,
	surname varchar(255) not null,
	date_of_birth date,
	fiscal_code smallint,
	enrolment_date date,
	registration_number int,
	email varchar(100),
	degress_id int not null,
	primary key (id),
	foreign key (degress_id) references degress(id)
);


create table exams(
	id int not null auto_increment,
	date_exams date not null,
	hour_exams time not null,
	location varchar(255),
	address varchar(255),
	courses_id int not null,
	primary key (id),
	foreign key (courses_id) references courses(id)
);


-- TABELLA PONTE VOTI X EXAMS E STUDENTS


create table vote(
	students_id int not null,
	exams_id int not null,
	vote smallint not null,
	primary key (students_id, exams_id),
	foreign key (students_id) references students(id),
	foreign key (exams_id) references exams(id)
);