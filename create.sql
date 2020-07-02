create database student_examination_sys;
use student_examination_sys;
create table student(
	id char(3) primary key,
    `name` char(20) not null,
	age int not null,
    sex char(6) not null
);

create table `subject`(
	id char(4) primary key,
    `subject` char(20) not null,
    teacher char(20),
    `description` char(255)
);

create table score(
	id int auto_increment primary key,
	student_id char(3),
    subject_id char(4),
    score float not null,
    foreign key(student_id) references student(id),
    foreign key(subject_id) references `subject`(id)
);

