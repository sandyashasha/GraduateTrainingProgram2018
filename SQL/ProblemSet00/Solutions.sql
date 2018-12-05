ProblemSet00, december 05 , 2018
--sandya.nandakumar@accenture.com

Create table employee(e_id varchar(10),name varchar(20),dep_id varchar(10),salary int(10),manager_id varchar(10));
insert into employee values("A114","MARTIN TREDEAU","D01",54497,"A120");
insert into employee values("A116","ROBIN WAYNE","D02",20196,"A187");
insert into employee values("A178","BRUCE WILLS","D03",66861,"A298");
insert into employee values("A132","PAUL VINCENT","D01",94791,"A120");
insert into employee values("A198","TOM HANKS","D02",16879,"A187");
insert into employee values("A120","TIM ARCHER","D01",48834,"A298");
insert into employee values("A143","BRAD MICHAEL","D01",24488,"A120");
insert into employee values("A187","ADAM NJUSTIN","D02",80543,"A298");
insert into employee values("A121","STUART WILLIAM","D02",78629,"A187");
insert into employee values("A187","ROBERT SWIFT","D04",27700,"A298");
insert into employee values("A176","EDWARD CANE","D01",898176,"A120");
insert into employee values("A142","TARA CUMMINGS","D04",99475,"A187");
insert into employee values("A130","VANESSA PARY","D04",28565,"A187");
insert into employee values("A128","ADAM WAYNE","D05",94324,"A165");
insert into employee values("A129","JOSEPH ANGELIN","D05",44280,"A165");
insert into employee values("A165","NATASHA STEVENS","D05",31377,"A298");
insert into employee values("A111","JOHN HELLEN","D01",15380,"A120");
insert into employee values("A194","HAROLLD STEVENS","D02",32166,"A187");
insert into employee values("A133","STEVE MICHELOS","D02",61215,"A187");
insert into employee values("A156","NICK MARTIN","D03",50174,"A178");
select*from employee;

A114|MARTIN TREDEAU|D01|54497|A120
A116|ROBIN WAYNE|D02|20196|A187
A178|BRUCE WILLS|D03|66861|A298
A132|PAUL VINCENT|D01|94791|A120
A198|TOM HANKS|D02|16879|A187
A120|TIM ARCHER|D01|48834|A298
A143|BRAD MICHAEL|D01|24488|A120
A187|ADAM NJUSTIN|D02|80543|A298
A121|STUART WILLIAM|D02|78629|A187
A187|ROBERT SWIFT|D04|27700|A298
A176|EDWARD CANE|D01|898176|A120
A142|TARA CUMMINGS|D04|99475|A187
A130|VANESSA PARY|D04|28565|A187
A128|ADAM WAYNE|D05|94324|A165
A129|JOSEPH ANGELIN|D05|44280|A165
A165|NATASHA STEVENS|D05|31377|A298
A111|JOHN HELLEN|D01|15380|A120
A194|HAROLLD STEVENS|D02|32166|A187
A133|STEVE MICHELOS|D02|61215|A187
A156|NICK MARTIN|D03|50174|A178

create table dept(dep_id varchar(4),depname varchar(19),depmanager varchar(20));
insert into dept values("d01","health","tim archer");
insert into dept values("d02","communication","adam justin");
insert into dept values("d03","product","bruce wills");
insert into dept values("d01","insurance","robert swift");
insert into dept values("d01","finance","natasha stefens");
select * from dept;

d01|health|tim archer
d02|communication|adam justin
d03|product|bruce wills
d01|insurance|robert swift
d01|finance|natasha stefens



/* <Question from the ProblemSet> */

1.Select the Employee with the top three salaries
 select * from EMPLOYEE order by SALARY desc LIMIT 3;

A142|TARA CUMMINGS|D04|99475|A187
 A132|PAUL VINCET|D01|94791|A120
 A128|ADAM WAYNE|D05|94324|A165

2.Select the Employee with the least salary:
SELECT * FROM EMPLOYEE ORDER BY SALARY LIMIT 1;

JOHN HELLEN|15380

3.Select the Employee who does not have a manager in the department table:
 select E_ID,NAME from EMPLOYEE where MANAGER_ID not in (select E_ID from EMPLOYEE);

A178|BRUCE WILLS
 A120|TIM ARCHER
 A187|ADAM JUSTIN
 A187|ROBERT SWIFT
 A165|NATASHA STEVENS
 
4.Select the Employee who is also a Manager:
select name from Employee e join dept d on e.name=d.depmanager;

 A120|TIM ARCHER
 A187|ADAM JUSTIN
 A187|ROBERT SWIFT
 A165|NATASHA STEVENS
 A178|BRUCE WILLS
 
5.Select the Employee who is a Manager and has least salary:
 select min(SALARY),NAME from EMPLOYEE e1 inner join DEPT d1 on d1.DEP_ID=e1.DEP_ID where e1.NAME=d1.DEP_MANAGER;
 
 27700|ROBERT SWIFT
 
6.Select the total number of Employees in Communications departments
select count(e_id) from employee e join dept d on e.dep_id=d.dep_id and d.depname="communication";
6

7.Select the Employee in Finance Department who has the top salary
select * from employee e join dept d on e.dep_id=d.dep_id and d.depname="finance" order by salary desc limit 1;
 ADAM WAYNE|94324
 
8.Select the Employee in product department who has the least salary
 select * from employee e join dept d on e.dep_id = d.dep_id where d.depname="product" order by salary limit 1;

9.Select the count of Employees in Health with maximum salary
 select count(name),salary,name from employee where salary=(select MAX(salary) from employee e join dept d on e.dep_id=d.dep_id and depname="health");
 5|94791

10.Select the Employees who report to Natasha Stevens
  select * from employee e join dept d on e.dep_id=d.dep_id where depmanager="natasha stefens";

A128|ADAM WAYNE|D05|94324|A165|D05|finance|natasha stefens
A129|JOSEPH ANGELIN|D05|44280|A165|D05|finance|natasha stefens
A165|NATASHA STEVENS|D05|31377|A298|D05|finance|natasha stefens

11.a)Display the Employee name,Dep name,Dept manager in the Health department
  select e.name,d.depname,d.depmanager from employee e join dept d on e.dep_id=d.dep_id and d.depname="health";

BRAD MICHAEL|health|tim archer
EDWARD CANE|health|tim archer
JOHN HELLEN|health|tim archer
MARTIN TREDEAU|health|tim archer
PAUL VINCENT|health|tim archer
TIM ARCHER|health|tim archer
  
11.b)Display the Dep name,Dept manager,employee count in the Health department 
 

12.Display the Department id,Employee ids and Manager ids for the Communications department
 select d.dep_id,e.manager_id,e.e_id from dept d join employee e on e.dep_id=d.dep_id and d.depname="communication";
D02|A187|A116
D02|A187|A121
D02|A187|A133
D02|A298|A187
D02|A187|A194
D02|A187|A198

13.Select the Average Expenses for Each dept with Dept id and Dept name

54527.6666666667|D01|health
48271.3333333333|D02|communication
58517.5|D03|product
51913.3333333333|D04|insurance
56660.3333333333|D05|finance

14.Select the total expense for the department finance
  
select SUM(e.salary)from employee e join dept d on e.dep_id=d.dep_id and d.depname="finance";
169981

15.Select the department which spends the least with Dept id and Dept manager name
  select * from DEPT d inner join(select min(s),DEP_ID from (select sum(SALARY) as s,DEP_ID from EMPLOYEE group by DEP_ID)) as t on d.DEP_ID=t.DEP_ID;
  D04|INSURANCE|ROBERT SWIFT|155740|D04

16.Select the count of Employees in each department
select d.depname,count(e_id) from employee e join dept d on e.dep_id=d.dep_id group by d.depname;
communication|6
finance|3
health|6
insurance|3
product|2

17.Select the count of Employees in each department having salary <10000
  select count(*),DEP_ID from EMPLOYEE where SALARY<10000 group by DEP_ID;
  no record found

18.Select the total number of Employees in Dept id D04
select count(e_id) from employee where dep_id="D04";
  3
  
19.Select all department details of the Department with Maximum Employees
 
 
20.Select the Employees who has Tim Cook as their manager
 
 select * from employee e join dept d on e.dep_id=d.dep_id and d.depmanager="tim archer";

  no record found

  
