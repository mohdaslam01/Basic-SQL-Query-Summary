
--use [AdventureWorks2012]
--select * from [HumanResources].[Department]
-- * means give all columns

--select Groupname from HumanResources.Department
-- Show me all group names

--select distinct Groupname from HumanResources.Department

--show all distict Group Names

--select name, groupname from HumanResources.Department
--where Groupname like 'Manufacturing' 

--select all the dept. name and group name who are part of manufacturing 

--select * from HumanResources.Employee

--select all employees names

--select * from HumanResources.Employee where OrganizationLevel=2

--list of all employees who has org level = 2

--select * from HumanResources.Employee where OrganizationLevel=2 or OrganizationLevel=3
--list of all employees who has org leve = (2, 3) where orlevel in (2, 3)
 
--select * from HumanResources.Employee where JobTitle like 'facilities manager' 

--list of all employees whose job title is facilites manager

--select * from HumanResources.Employee where JobTitle like 'Manager'
  
--select * from HumanResources.Employee where JobTitle like '%Manager'

--list of all employees whose job ends with title manager or job title has manager

--select * from HumanResources.Employee where Birthdate > '1/1/1970'

--select * from HumanResources.Employee where Birthdate > '1/1/1950' and BirthDate < '1/1/1989' and Gender = 'F' and JobTitle like 'Manager'
--select * from HumanResources.Employee where Birthdate > '1/1/1950' and BirthDate < '1/1/1989' and Gender = 'M'and JobTitle like 'Manager'

-- list details of employee whose age range in define set

--select * from [Production].[Product]
--select name, listprice, listprice+10 as adjusted_list_price from [Production].[Product] 

--calculated columns

--select name, listprice, listprice+10 as adjusted_list_price into [Production].[Product_2] from [Production].[Product]

--into enlist the calculated values in the another table or create table and list the calculated in the calculated column

--select * from Production.product_2 

--display the created table from table

--select name as coolprice   into #tempname  from  [Production].[Product_2]

--creating temporary table to store the calculated values and these temp table is deleted after closing of db operation or create table and store computed values and then after performng operation the table should be deleted from - genearlly know as temp table

--select * from Production.#tempname

--list the computed names only from the newly created table in the operation

--elete from Production.Product_2 
--where name 
--like 'bearing ball'

-- remove bearing ball item from table product and display

--select * from Production.Product_2

--display or list post deleting item like 'bearing ball'

--update [Production].[Product_2] 
--set name = 'razor blade' 
--where name like 'blade'

--change name of any one entity in product using update 

--select * from [Production].[Product_2] 
--where name like 'razor blade'

--list only name of the entity upated in the last query

-- joins inner join, outer join, left outer join, right outer join, full outer join, cross join

--Create Table myemp (empid int, firstname varchar(50), lastname varchar(50))

--create table to perform joins

--insert into myemp values(1, 'Mohammed', 'Aslam')
--insert into myemp values(2, 'Mohammed', 'Irfan Sadiq')
--insert into myemp values(1, 'Rukiya', 'Begum')
--insert into myemp values(1, 'Ayesha', 'Kareem')

--delete from myemp where firstname like 'Rukiya' or firstname like 'Ayesha'

--insert into myemp values(3, 'Rukiya', 'Begum')
--insert into myemp values(4, 'Ayesha', 'Begum')

--select * from myemp

--create table mysalary(empid int, salary float)
--insert into mysalary values(1, 90000.00)
--insert into mysalary values(2, 88000.00)
--insert into mysalary values(3, 98000.00)
--insert into mysalary values(4, 90000.00)

--select * from mysalary

--select * from myemp e inner join mysalary s on e.empid=s.empid

--select e.firstname, e.lastname, s.salary from myemp e inner join mysalary s on e.empid=s.empid

--inner join

--create table phonebook (empid int, phonenumber int)

--insert into phonebook values(1, 12345)
--insert into phonebook values(2, 74123)

--select * from phonebook

--select e.firstname, e.lastname, s.salary from myemp e left join mysalary s on e.empid=s.empid

--select e.firstname, e.lastname, b.phonenumber from myemp e left join phonebook b on e.empid=b.empid

--left outer join

--select e.firstname, e.lastname, b.phonenumber from myemp e right join phonebook b on e.empid=b.empid

--select e.firstname, e.lastname, b.phonenumber from phonebook b right join myemp e on b.empid=e.empid 

--right outer join if tables are reverse gives result as left outer join, 

--create table parkinginfo(empid int, carname varchar(28))

--insert into parkinginfo values (1, 'Porche')
--insert into parkinginfo values (2, 'Lamborghini')

--select e.firstname, e.lastname, i.carname from myemp e right join parkinginfo i on e.empid=i.empid
--select e.firstname, e.lastname, i.carname from parkinginfo i right join myemp e on i.empid=e.empid

--create table enterprise(empid int, enname varchar(40))
--insert into enterprise values ( 1, 'Software Enterprise')
--insert into enterprise values ( 2, 'Halal Bank Foundation')
--insert into enterprise values ( 3, 'Hospitable Hospitals')
--insert into enterprise values ( 4, 'IRD Foundation')
--select * from enterprise
--select e.phonenumber, p.enname from phonebook e full outer join enterprise p
--on e.empid = p.empid

--select e.firstname, e.lastname, i.carname from myemp e full outer join parkinginfo i on e.empid=i.empid

--full outer right join

--select e.firstname, e.lastname, p.enname from myemp e cross join enterprise p 
--select e.firstname, e.lastname, i.carname, p.enname, s.salary, b.phonenumber from myemp e, parkinginfo i, enterprise p, mysalary s, phonebook b

--cross join

--select getdate()

--date

--select datepart(yyyy, getdate()) as Year
--select datepart(mm, getdate()) as Month
--select datepart(dd, getdate()) as Day

--datepart

--select dateadd(day, 4, getdate())

--dateadd

--use AdventureWorks2012

--select top 10 * from [Production].[WorkOrder]

--select workOrderId, ProductID, StartDate, EndDate, DATEDIFF(day, startDate, EndDate) from [Production].WorkOrder

--select Datepart(day, GETDATE())

--select DATEADD(dd, (datepart(day, getdate())-1), GETDATE())

--TSQL Date Functions

--select * from mysalary

--select AVG(salary) from mysalary

--select COUNT(salary) from mysalary

--select COUNT(*) from mysalary

--select SUM(salary) from mysalary

--select MAX(salary) from mysalary

--elect MIN(salary) from mysalary

--print CONCAT('String 1, ', 'String 2, ', RAND())

--select right (salary, 89000) from mysalary

--select getdate()-10000;

--select datepart(mm, getdate());
--select datepart(dd, getdate());
--select datepart(yyyy, getdate());

--select dateadd(day, 4, getdate())
--select datepart(mm, (dateadd(month, 4, '03/06/2024')))
--select datepart(yyyy, (dateadd(year, 4, '03/06/2024')))

--use AdventureWorks2012
--select * from [Production].[WorkOrder]

--select workOrderID, ProductID, startdate, enddate, datediff(day, startdate, enddate) from [production].[workorder]
--select datepart(dd, Dateadd(dd, -(datepart(dd, getdate())-1), getdate()))
--select datepart(mm, dateadd(mm, -(datepart(mm, getdate())-1), getdate()))
--select datepart(yyyy, datepart(mm, dateadd(mm, -(datepart(mm, getdate())-1), getdate())))
--select datepart(yyyy, datepart(yyyy, datepart(mm, dateadd(mm, -(datepart(mm, getdate())-1), getdate()))) )
--select datepart(yyyy, datepart(yyyy, datepart(yyyy, datepart(mm, dateadd(mm, -(datepart(mm, getdate())-1), getdate()))) ))
--select datepart(yyyy, datepart(yyyy,  datepart(yyyy, datepart(yyyy, datepart(mm, dateadd(mm, -(datepart(mm, getdate())-1), getdate()))) )))
--dateadd
--select * from mysalary;
--select avg(salary) from mysalary;
--select count(salary) from mysalary;
--select count(*) from mysalary;
--select sum(salary) from mysalary;
--select min(salary) from mysalary;
--select max(salary) from mysalary;

--select * from parkinginfo

--print concat('good ', 'is ', 'good', 'print')

--select empid, carname, concat(empid, ' ', carname)  as concanetedtext from parkinginfo
--select empid, carname, left(carname, 5) from parkinginfo
--select empid, carname, right(carname, 5) from parkinginfo
--select empid, carname, substring(carname, 2, 5) from parkinginfo
--select empid, carname, lower(carname) as LowerCase from parkinginfo
--select empid, carname, upper(carname) as UpperCase from parkinginfo
--select empid, carname, len(carname) as Length from parkinginfo
--select empid, carname, concat(upper(substring(carname, 0, 2)), lower(substring(carname, 2, len(carname))) ) as FirstURL from parkinginfo
--select '    mytext   ' as text
--select len('    mytext   ') as len
--select len(ltrim('    mytext   ')) as ltrim
--select len(rtrim('    mytext   ')) as rtrim
--select len(ltrim(rtrim('    mytext   '))) as lrtrim

--TSQL Aggregation and String Function
