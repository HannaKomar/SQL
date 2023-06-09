--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами

select employees.employee_name, salary.monthly_salary 
from employee_salary
join salary on employee_salary.salary_id = salary.id
join employees on employees.id = employee_salary.employee_id;

--2. Вывести всех работников у которых ЗП меньше 2000

select employees.employee_name, salary.monthly_salary 
from employee_salary
join salary on employee_salary.salary_id = salary.id
join employees on employees.id = employee_salary.employee_id
where monthly_salary <2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен (ЗП есть, но не понятно кто её получает)

select employees.employee_name, salary.monthly_salary  
from employees
right join employee_salary on employee_salary.employee_id = employees.id 
right join salary on salary_id = salary.id 
where employee_name is null;

--4. Вывести все зарплатные позиции меньше 2000 но работник по ним не назначен (ЗП есть, но не понятно кто её получает)

select employees.employee_name, salary.monthly_salary  
from employees
right join employee_salary on employee_salary.employee_id = employees.id
right join salary on employee_salary.salary_id = salary.id 
where employee_name is null and monthly_salary <2000;

--5. Найти всех работников кому не начислена ЗП

select employees.employee_name, salary.monthly_salary
from employee_salary  
right join employees on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
where monthly_salary is null;  

--6. Вывести всех работников с названиями их должности

select employees.employee_name, roles.role_name
from roles_employee  
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id;

--7. Вывести имена и должность только Java разработчиков
 
select employees.employee_name, roles.role_name
from roles_employee  
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Java developer%';
 
--8. Вывести имена и должность только Python разработчиков
 
select employees.employee_name, roles.role_name
from roles_employee  
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Python developer%';

--9. Вывести имена и должность всех QA инженеров
 
select employees.employee_name, roles.role_name
from roles_employee  
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%QA engineer%';
  
--10. Вывести имена и должность ручных QA инженеров

select employees.employee_name, roles.role_name
from roles_employee  
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Manual QA engineer%';
  
--11. Вывести имена и должность автоматизаторов QA

select employees.employee_name, roles.role_name
from roles_employee  
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Automation QA engineer%';

--12. Вывести имена и зарплаты Junior специалистов

select employees.employee_name, salary.monthly_salary 
from roles_employee  
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
where roles.role_name like '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов

select employees.employee_name, salary.monthly_salary 
from roles_employee  
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
where roles.role_name like '%Middle%';
 
--14. Вывести имена и зарплаты Senior специалистов

select employees.employee_name, salary.monthly_salary 
from roles_employee  
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
where roles.role_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков

select salary.monthly_salary  
from employees 
join roles_employee on roles_employee.employee_id =employees.id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Java developer'; 

--16. Вывести зарплаты Python разработчиков
select salary.monthly_salary  
from employees 
join roles_employee on roles_employee.employee_id =employees.id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Python developer';

--17. Вывести имена и зарплаты Junior Python разработчиков
 
select employees.employee_name, salary.monthly_salary  
from employees 
join roles_employee on roles_employee.employee_id =employees.id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Junior Python developer';

--18. Вывести имена и зарплаты Middle JS разработчиков
 
select employees.employee_name, salary.monthly_salary  
from employees 
join roles_employee on roles_employee.employee_id =employees.id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Middle JavaScript developer';

 --19. Вывести имена и зарплаты Senior Java разработчиков

select employees.employee_name, salary.monthly_salary  
from employees 
join roles_employee on roles_employee.employee_id =employees.id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Senior JavaScript developer%';
 
--20. Вывести зарплаты Junior QA инженеров

select salary.monthly_salary  
from employee_salary 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Junior%QA engineer%'; 

 --21. Вывести среднюю зарплату всех Junior специалистов

select avg(salary.monthly_salary) 
from employee_salary 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Junior%'; 

 --22. Вывести сумму зарплат JS разработчиков
 
select sum(salary.monthly_salary) 
from employee_salary 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%JavaScript%';

 --23. Вывести минимальную ЗП QA инженеров

select min(salary.monthly_salary) 
from employee_salary 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%QA engineer%';

 --24. Вывести максимальную ЗП QA инженеров
  
select max(salary.monthly_salary) 
from employee_salary 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%QA engineer%';

 --25. Вывести количество QA инженеров 
 
select count (role_name)
from employees 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%QA engineer%';

 --26. Вывести количество Middle специалистов

select count (role_name)
from employees 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Middle%';

 --27. Вывести количество разработчиков

select count (role_name)
from employees 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%developer%';

 --28. Вывести фонд (сумму) зарплаты разработчиков
 
--1 вариант
select sum (salary.monthly_salary)
from employees 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id=employees.id
join salary on salary.id = employee_salary.salary_id 
where roles.role_name like '%developer%'; 

--2 вариант
select sum (salary.monthly_salary)
from employee_salary
join salary on salary.id = employee_salary.salary_id
join roles_employee on roles_employee.employee_id = employee_salary.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%developer%';

 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 
select employees.employee_name,roles.role_name,salary.monthly_salary  
from employees 
join roles_employee on roles_employee.employee_id =employees.id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id =employees.id
join salary on salary.id = employee_salary.salary_id
order by salary.monthly_salary asc;

 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 
select employees.employee_name,roles.role_name,salary.monthly_salary  
from employees 
join roles_employee on roles_employee.employee_id =employees.id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id =employees.id
join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary >=1700 or salary.monthly_salary>=2300
order by salary.monthly_salary asc;

 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employees.employee_name,roles.role_name,salary.monthly_salary  
from employees 
join roles_employee on roles_employee.employee_id =employees.id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id =employees.id
join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary <2300
order by salary.monthly_salary asc;

 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
 
select employees.employee_name,roles.role_name,salary.monthly_salary  
from employees 
join roles_employee on roles_employee.employee_id =employees.id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id =employees.id
join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary in(1100,1500,2000)
order by salary.monthly_salary asc;