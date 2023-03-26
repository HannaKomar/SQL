create table employees(
    id serial primary key,
    employee_name varchar(50) not null
   );
   
select * from employees;
 
  insert
	into
	employees(employee_name)
values ('Ivan'),
       ('Alex'),
       ('Oleg'),
       ('Sergei'),
       ('Semen'),
       ('Peter'),
       ('Michal'),
       ('Igor'),
       ('Vladimir'),
       ('Aleksandr'),
       ('Maksim'),
       ('Nicolaj'),
       ('Evgenij'),
       ('Anna'),
       ('Elena'),
       ('Olga'),
       ('Marina'),
       ('Zoja'),
       ('Lilij'),
       ('Irina'),
       ('Svetlana'),
       ('Kate'),
       ('Julija'),
       ('Sofia'),
       ('Vera'),
       ('Violeta'),
       ('Tatsiana'),
       ('Margo'),
       ('Arina'),
       ('Valentina'),
       ('Nika'),
       ('Andrew'),
       ('Kirill'),
       ('Matvej'),
       ('Zahar'),
       ('Arhip'),
       ('Aslan'),
       ('Bogdan'),
       ('Vlad'),
       ('Victor'),
       ('Ilya'),
       ('Vitalij'),
       ('Genrih'),
       ('Gari'),
       ('Valerij'),
       ('Georgij'),
       ('Gleb'),
       ('Zlata'),
       ('Arsen'),
       ('John'),
       ('Dominik'),
       ('Jack'),
       ('Rosa'),
       ('Liza'),
       ('Ignat'),
       ('Lev'),
       ('Richard'),
       ('Orest'),
       ('Makar'),
       ('Timur'),
       ('Fred'),
       ('Filipp'),
       ('Artur'),
       ('Galina'),
       ('Anastasia'),
       ('Natalia'),
       ('Daria'),
       ('Erik'),
       ('Miroslav'),
       ('Larisa');
       
 create table salary(
    id serial primary key,
    monthly_salary int not null
   );
   
  select * from salary; 
  
 insert
	into
	salary (monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
       
 create table employee_salary(
    id serial primary key,
    employee_id int unique not null,
    salary_id int not null
   ); 
  
  select * from employee_salary; 
  
 insert into employee_salary(employee_id, salary_id)
     values (3,7),
            (1,4),
            (5,9),
            (40,13),
            (23,4),
            (11,2),
            (52,10),
            (15,13),
            (26,4),
            (16,1),
            (33,7),
            (34,6),
            (38,2),
            (42,15),
            (44,1),
            (46,10),
            (48,6),
            (50,2),
            (53,1),
            (58,2),
            (60,6),
            (62,2),
            (63,4),
            (68,1),
            (66,13),
            (14,6),
            (8,2),
            (6,1),
            (21,2),
            (82,1),
            (71,1),
            (72,2),
            (73,6),
            (74,2),
            (75,4),
            (76,2),
            (77,6),
            (78,2),
            (79,6),
            (80,6);
            
 create table roles(
    id serial primary key,
   role_name int unique not null
  ); 
  
 select * from roles;

alter table roles 
alter column role_name type varchar(30);

insert
	into
	roles(role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');
       
create table roles_employee(
    id serial primary key,
   employee_id int unique not null,
   role_id int not null
  ); 
  
 select * from roles_employee;
 
insert into roles_employee(employee_id, role_id)
     values (1,2),
            (2,4),
            (3,6),
            (4,8),
            (5,10),
            (6,12),
            (7,14),
            (11,16),
            (12,18),
            (14,20),
            (16,1),
            (18,3),
            (20,5),
            (22,7),
            (24,9),
            (46,11),
            (26,13),
            (28,15),
            (30,17),
            (31,19),
            (32,6),
            (33,2),
            (34,4),
            (36,1),
            (60,13),
            (61,6),
            (62,2),
            (63,1),
            (64,2),
            (50,1),
            (51,1),
            (52,2),
            (53,6),
            (54,2),
            (55,4),
            (56,2),
            (57,6),
            (58,2),
            (59,6),
            (40,6);