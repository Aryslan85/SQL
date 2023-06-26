
select * from students;

select name 
from students;

select id
from students;

select email 
from students;

select name,email
from students;

select id, name,email,created_on
from students;


select * from students
where password = '12333';


select * from students 
where created_on = '2021-03-26 00:00:00' ;

select * from students s 
where name like '%Anna%';

select * from students s 
where name like '%8';

select * from students s 
where name like '%a%';


select * from students 
where created_on = '2021-07-12 00:00:00' and password = '1m313';

select * from students 
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';

select * from students 
where created_on = '2021-07-12 00:00:00' and name like '%8%';

select * from  students s 
where id = 110;

select * from  students s 
where id = 153;

select * from  students s 
where id > 140;

select * from  students s 
where id < 130;


select * from  students s 
where id not between 127 and 188;


select * from  students s 
where id <= 137;

select * from  students s 
where id >= 137;

select * from  students s 
where id  between 181 and 189;


select * from  students s 
where id  between 180 and 190;

select * from  students s 
where password in ('12333','1m313','123313');


select * from students 
where created_on in('2020-10-03 00:00:00','2021-05-19 00:00:00','2021-03-26 00:00:00');

select min(id)
from students;

select max(id)
from students;

select count(name) 
from students;

select id, name,created_on
from students
order by created_on ;

select id, name,created_on
from students
order by created_on desc ;