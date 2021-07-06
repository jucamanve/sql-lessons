drop table if exists employees;
drop table if exists departments;

create table departments(
    department_id int primary key not null,
    department_name varchar(20)
);

create table employees(
    lastname varchar(20),
    department_id int references departments(department_id)
);

insert into departments values
(31, 'Sales'),
(33, 'Engineering'),
(34, 'Clerical'),
(35, 'Marketing');

insert into employees values
('Rafferty', 31),
('Jones', 33),
('Heisenberg', 33),
('Robinson', 34),
('Smith', 34),
('Williams', NULL);