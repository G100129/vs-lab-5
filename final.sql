create table cathedrals (
	id serial Primary key,
	name varchar(2048) NOT NULL,
	chief varchar(512) NOT NULL
);

alter table groups
add column cathedral_id int;

insert into cathedrals (name, chief)
values ('Кафедра информационных технологий', 'Васильева Наталья Васильевна'),
	   ('Математическая экономика и прикладная информатика', 'Матвеева Нюргуяна Николаевна');

select * from cathedrals;

update groups
set cathedral_id = 1
where groups.short_name = 'Б-ИВТ-25-1' or groups.short_name = 'Б-ИВТ-25-2' or groups.short_name = 'Б-ФИИТ-25';

update groups
set cathedral_id = 2
where groups.short_name = 'Б-ПИ-25-1';

select * from groups
where groups.cathedral_id = 1;