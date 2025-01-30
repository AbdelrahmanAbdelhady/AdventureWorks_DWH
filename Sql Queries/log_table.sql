create table log_table 
(id int ,
table_name varchar(50) ,
modified_last_date datetime);

insert into log_table
values (1,'facttable' , '1900-01-01')

select modified_last_date from log_table
where table_name = 'facttable'


