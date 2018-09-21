create database tp_sql;
	use tp_sql;

create table module(
	id int(10) unique not null auto_increment,
	name varchar(255) not null,
	primary key (id)
);

create table year(
	id int(10) unique not null auto_increment,
	label varchar(255) not null,
	primary key (id)
);

create table enrolment(
	id_student int(10),
	id_year int(10),
	`from` datetime not null,
	`to` datetime
	);

create table student(
	id int(10) unique not null auto_increment,
	firstname varchar(255) not null,
	lastname varchar(255) not null,
	primary key (id)
);

create table assessment(
	id_student int(10),
	id_module int(10),
	attempted datetime not null,
	passed datetime,
	grade int(10),
	primary key (attempted)
);
   
ALTER TABLE enrolment    
ADD CONSTRAINT FK_student_id FOREIGN KEY (id_student)     
    REFERENCES student (id)     
    ON DELETE CASCADE    
    ON UPDATE CASCADE    
;

ALTER TABLE enrolment    
ADD CONSTRAINT FK_year_id FOREIGN KEY (id_year)     
    REFERENCES year (id)     
    ON DELETE CASCADE    
    ON UPDATE CASCADE    
;

ALTER TABLE module    
ADD CONSTRAINT FK_year_id2 FOREIGN KEY (year)     
    REFERENCES year (id)        
;

ALTER TABLE assessment    
ADD CONSTRAINT FK_student_id2 FOREIGN KEY (id_student)     
    REFERENCES student (id)        
;

ALTER TABLE assessment    
ADD CONSTRAINT FK_module FOREIGN KEY (id_module)     
    REFERENCES module(id)        
;