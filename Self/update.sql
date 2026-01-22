# Update table

# alter table is use for adding removing and updating any data in particular table

select * from students;

# Adding New Column in exist table
alter table students ADD COLUMN City varchar(50);

# Changing column Type
alter table students MODIFY Age smallint;

# Rename Column Name
Alter table students RENAME COLUMN Email TO StudentEmail;

# Drop Column
alter table students Drop Column City;

# Truncate table 
# Truncate is used for deleting all the data from table

truncate table students;