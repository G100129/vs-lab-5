create table institutes (
	id serial Primary key,
	name varchar(1024) NOT NULL
);

create table groups (
	id serial Primary key,
	name varchar(2048) NOT NULL,
	short_name varchar(64) NOT NULL UNIQUE,
	year int,
	institute_id int not null
)

create table students (
	id serial Primary key,
	surname varchar(512) NOT NULL,
	name varchar(512) NOT NULL,
	father_name varchar(512),
	group_id int not null
);