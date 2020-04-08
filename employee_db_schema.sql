drop database if exists employee_db;
create database employee_db;
use employee_db;

create table department (
	id int not null auto_increment,
    name varchar(30),
    primary key (id)
);

create table role (
	id int not null auto_increment,
    title varchar(30),
    salary decimal,
    department_id int,
    index dept_ind (department_id),
    foreign key (department_id)
    references department(id)
    on delete set null,
    primary key(id)
);

create table employee (
	id int not null auto_increment,
    first_name varchar(30),
    last_name varchar(30),
    role_id int,
    index rol_ind (role_id),
    foreign key (role_id)
    references role(id)
    on delete set null,
    manager_id int,
    index man_ind (manager_id),
    foreign key (manager_id)
    references employee(id)
    on delete set null,
    primary key (id)
);
