create table salary(
   id serial primary key,
   monthly_salary int not null
);

create table roles(
   id serial primary key,
   role_title varchar(30) unique not null
);

create table roles_salary(
  id serial primary key,
  id_role int not null,
  id_salary int not null,
  foreign key(id_role) references roles(id),
  foreign key(id_salary) references salary(id)
);

insert into salary(monthly_salary)
values(300),
      (500),
      (900),
      (1000),
      (1300),
      (1500),
      (1800),
      (2000),
      (2300),
      (2500),
      (2800),
      (3000),
      (3200),
      (3500),
      (3800),
      (4000);
     
     
     insert into roles(role_title)
     values ('QA_manual_junior'),
            ('QA_manual_middle'),
            ('QA_manual_senior'),
            ('QA_automation_junior'),
            ('QA_automation_middle'),
            ('QA_automation_senior'),
            ('Java_developer_junior'),
            ('Java_developer_middle'),
            ('Java_developer_senior'),
            ('CEO'),
            ('CTO'),
            ('HR'),
            ('Manager'),
            ('Designer');
     
     insert into roles_salary(id_role,id_salary)
     values (1,1),
            (2,4),
            (3,7),
            (8,6),
            (11,15);


select role_title,monthly_salary from roles_salary       
join roles on roles_salary.id_role = roles.id
join salary on roles_salary.id_salary = salary.id;


alter table roles
add column parking int;

alter table roles
rename column parking to taxi;

alter table roles
drop column taxi;

update salary 
set monthly_salary = 1450
where id = 5;

select * from salary
order by id;


