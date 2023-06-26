create table employees1(
id serial primary key,
employee_name varchar(50) not null
);

insert into employees1(employee_name)
values('jhon winchester'),
('mery winchester'),
('din winchester'),
('sam winchester'),
('crouly'),
('Kas'),
('Hulck'),
('Boby Singer'),
('Houwck'),
('shoun dort'),
('Kris tacker'),
('Neo'),
('Storm forf'),
('impala shevy'),
('doge gort'),
('stock trupm'),
('losy Don'),
('Mikle Carleone'),
('Jony Cach'),
('Jolp kort'),
('tatar malay'),
('Yotum hein'),
('samy truck'),
('phill kon'),
('drump foll'),
('Jansen Acklse'),
('Jared Padalleky'),
('Artem samson'),
('slamon keyn'),
('Altair'),
('Encio Auditore'),
('Nikollo Makiovelli'),
('show time'),
('Lu cen'),
('sub ziro'),
('Hitman'),
('Vin dizel'),
('Jack Sparrow'),
('fire time'),
('angel tone'),
('angel boune'),
('tony stark'),
('speeedy fu'),
('ghost busters'),
('andry gun'),
('jou si'),
('sims vim'),
('rewsd gjol'),
('soule'),
('jho black'),
('bill kill'),
('mikhail'),
('makle si'),
('genny to'),
('koul terner'),
('sunny chess'),
('fige bone'),
('geralde'),
('alastar'),
('abadon'),
('jacke chan'),
('li chu'),
('huan gonzales'),
('jhon sigal'),
('tim berton'),
('Loky'),
('spider man'),
('Super man'),
('khristofor'),
('Nikitos'),
('Alexsandr Kurtushkin'),
('elena lukash'),
('Kate tebyakina'),
('sergey tikhonov'),
('ruslan khasanov');

create table salary1(
id serial primary key,
monthly_salary int not null
);

insert into salary1(monthly_salary)
values(1000),
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
employee_id int not null unique,
salary_id int not null
);


insert into employee_salary(employee_id,salary_id)
values(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,1),
(17,2),
(18,3),
(19,4),
(20,5),
(21,6),
(22,7),
(23,8),
(24,9),
(25,10),
(26,11),
(27,12),
(28,13),
(29,14),
(30,7),
(88,1),
(89,2),
(90,3),
(91,4),
(92,5),
(93,6),
(94,7),
(95,8),
(96,9),
(97,10);

select * from employee_salary;

create table roles1(
id serial primary key,
role_name int not null unique
);

select * from roles1;

alter table roles1
drop column role_name;


select * from roles1;

alter table roles1
add column role_name varchar(30) not null unique;

select * from roles1;

insert into roles1(role_name)
values('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaSkript developer'),
('Middle JavaSkript developer'),
('Senior JavaSkript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Progect Manadger'),
('Desiner'),
('HR'),
('CEO'),
('Sales manadger'),
('Junior Automotion QA engineer'),
('Middle Automotion QA engineer'),
('Senior Automotion QA engineer');

select * from roles1;

create table roles1_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id) references employees1(id),
foreign key (role_id) references roles1(id)
);

insert into roles1_employee(employee_id,role_id)
values(1,1),
(2,5),
(3,12),
(4,9),
(5,4),
(6,7),
(7,12),
(8,14),
(9,11),
(10,1),
(11,20),
(12,18),
(25,11),
(27,15),
(37,6),
(19,7),
(26,17),
(33,1),
(40,10),
(41,5),
(42,3),
(43,4),
(44,11),
(45,19),
(46,4),
(50,17),
(51,13),
(52,6),
(53,5),
(54,8),
(55,6),
(62,3),
(63,7),
(64,19),
(65,14),
(66,3),
(67,2),
(68,8),
(39,5),
(14,1);


select employee_name, monthly_salary from employee_salary 
join salary1 on salary_id = salary1.id
join employees1 on employee_id = employees1.id;

select employee_name, monthly_salary from employee_salary 
join employees1 on employee_id = employees1.id 
join salary1 on salary_id = salary1.id 
where monthly_salary < 2000;




select monthly_salary
from salary1
join employee_salary es  on salary_id = salary1.id 
left join employees1 on employee_id = employees1.id 
where employee_name is null;

select monthly_salary
from salary1
join employee_salary es on salary_id = salary1.id
left join employees1 on employee_id = employees1.id 
where monthly_salary < 2000 and employee_name is null;

select * from employee_salary es ;
select * from salary1 s ;

select employee_name
from employee_salary 
right join employees1 on employee_id = employees1.id 
where employee_salary.salary_id  is null;



select employee_name,role_name
from roles1_employee
join employees1 on roles1_employee.employee_id = employees1.id 
join roles1  on roles1.id = roles1_employee.role_id ;


select employee_name, role_name
from roles1_employee 
join employees1 on roles1_employee.employee_id  = employees1.id
join roles1 on roles1.id = roles1_employee.role_id 
where roles1.id between 4 and 6 ;

select employee_name , role_name
from roles1_employee
join employees1 on roles1_employee.employee_id = employees1.id
join roles1 on roles1.id = roles1_employee.role_id 
where roles1.id between 1 and 3;

select employee_name , role_name
from roles1_employee
join employees1 on roles1_employee.employee_id = employees1.id
join roles1 on roles1.id = roles1_employee.role_id 
where roles1.id between 18 and 20;

select employee_name, monthly_salary
from employee_salary  
join salary1 on salary1.id = employee_salary.salary_id 
join employees1 on employees1.id =  employee_salary.employee_id  
join roles1_employee on roles1_employee.employee_id = employee_salary.employee_id  
join roles1 on roles1.id = roles1_employee.role_id
where role_name like 'Junior%';


select employee_name , monthly_salary
from employee_salary
join salary1 on salary1.id = employee_salary.salary_id
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where role_name like 'Junior%';

select employee_name , monthly_salary
from employee_salary
join salary1 on salary1.id = employee_salary.salary_id
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where role_name like 'Middle%';

select employee_name , monthly_salary
from employee_salary
join salary1 on salary1.id = employee_salary.salary_id
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where role_name like 'Senior%';


select monthly_salary
from salary1 
join employee_salary on employee_salary.salary_id = salary1.id 
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where role_name like '%Java%';


select monthly_salary
from salary1
join employee_salary on employee_salary.salary_id = salary1.id 
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where role_name like '%Python%';

select employee_name, role_name, monthly_salary
from employee_salary
join salary1 on salary1.id = employee_salary.salary_id 
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id ;



select employee_name, monthly_salary
from employee_salary 
join salary1 on salary_id = salary1.id 
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where role_name like 'Junior Python%';

select employee_name, monthly_salary
from employee_salary 
join salary1 on salary_id = salary1.id 
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where role_name like 'Middle JavaSkript%';

select employee_name, monthly_salary
from employee_salary 
join salary1 on salary_id = salary1.id 
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where role_name like 'Senior Java developer';

select monthly_salary
from salary1
join employee_salary on salary_id = salary1.id 
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where role_name like 'Junior %QA%';


select avg(monthly_salary)
from salary1
join employee_salary on salary_id = salary1.id 
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where role_name like 'Junior%';

select sum(monthly_salary)
from salary1
join employee_salary on salary_id = salary1.id 
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where role_name like '%JavaSkript%';


select min(monthly_salary)
from salary1
join employee_salary on salary_id = salary1.id 
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where role_name like '%QA%';

select max(monthly_salary)
from salary1
join employee_salary on salary_id = salary1.id 
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where role_name like '%QA%';


select count(employee_name)
from employee_salary 
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where role_name like '%QA%';


select count(employee_name)
from employee_salary 
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where role_name like 'Middle%';


select count(employee_name)
from employee_salary 
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where roles1.id  not between 13 and 17;

select sum(monthly_salary)
from salary1 
join employee_salary on employee_salary.salary_id = salary1.id 
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
where roles1.id not between 13 and 17;


select  employee_name, role_name, monthly_salary
from employee_salary
join salary1 on salary1.id = employee_salary.salary_id 
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id 
order by employee_name, role_name ,monthly_salary;


select  employee_name, role_name, monthly_salary
from employee_salary
join salary1 on salary1.id = employee_salary.salary_id
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id
where monthly_salary between 1700 and 2300
order by employee_name, role_name ,monthly_salary;

select  employee_name, role_name, monthly_salary
from employee_salary
join salary1 on salary1.id = employee_salary.salary_id
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id
where monthly_salary < 2300
order by employee_name, role_name ,monthly_salary;

select  employee_name, role_name, monthly_salary
from employee_salary
join salary1 on salary1.id = employee_salary.salary_id
join employees1 on employees1.id = employee_salary.employee_id 
join roles1_employee on roles1_employee.id = employees1.id 
join roles1 on roles1.id = roles1_employee.role_id
where salary1.id in (2,6,11)
order by employee_name, role_name ,monthly_salary;

