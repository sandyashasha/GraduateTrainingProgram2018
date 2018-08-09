-- ProblemSet00, August 06 2018
-- gokul.velusaamy@accenture.com

/* <Question from the ProblemSet> */

1)Select the Employee with the top three salaries
    select * from Employee order by salary desc limit 3;
    A142|TARA CUMMINGS|D04|99475|A187
    A132|PAUL VINCENT|D01|94791|A120
    A128|ADAM WAYNE|D05|94324|A165
    record count - 3

2)Select the Employee with the least salary
    select * from Employee order by salary asc limit 1;
    A111|JOHN HELLEN|D01|15380|A120
    record count - 1

3)Select the Employee who does not have a manager in the department table
    select * from Employee where Manager_id not in(select E_Id from Employee e inner join Dept d where e.Dep_id = d.Dep_id and e.name = d.Dep_manager);
    A178|BRUCE WILLS|D03|66861|A298
    A120|TIM ARCHER|D01|48834|A298
    A187|ADAM JUSTIN|D02|80543|A298
    A187|ROBERT SWIFT|D04|27700|A298
    A165|NATASHA STEVENS|D05|31377|A298
    record count - 5

4)Select the Employee who is also a Manager
    select E_Id,name from Employee e inner join Dept d where e.Name = d.dep_manager;
    A178|BRUCE WILLS
    A120|TIM ARCHER
    A187|ADAM JUSTIN
    A187|ROBERT SWIFT
    A165|NATASHA STEVENS
    record count - 5

5)Select the Empolyee who is a Manager and has least salary
    select name from Employee e inner join Dept d where e.name = d.dep_manager order by salary asc limit 1;
    ROBERT SWIFT
    record count - 1

6)Select the total number of Employees in Communications departments
    select count(*) from Employee where Dep_id = 'D02' group by Dep_id;  
    6
    record count - 1

7)Select the Employee in Finance Department who has the top salary
    select e.name,e.salary from Employee e where e.Dep_id = 'D05' order by salary desc limit 1;
    ADAM WAYNE|94324
    record count - 1

8)Select the Employee in product depatment who has the least salary
    select name,E_Id,salary from Employee where dep_id = 'D03' order by salary asc limit 1;
    NICK MARTIN|A156|50174

9)Select the count of Empolyees in Health with maximum salary
    select count(*) from Employee where salary = (select max(salary) from Employee where dep_id = 'D01');
    1
    record count - 1

10)Select the Employees who report to Natasha Stevens
   select * from Employee where Manger_id = 'A165';
   A128|ADAM WAYNE|D05|94324|A165
   A129|JOSEPH ANGELIN|D05|44280|A165  
   record count - 2

11)Display the Employee name,Employee count,Dep name,Dept manager in the Health department
    select name,count(*),d.dep_name,d.dep_manager from Employee e inner join dept d where e.dep_id = d.dep_id and d.dep_id = 'D01';
    JOHN HELLEN|6|HEALTH|TIM ARCHER
    record - count -1

12)Display the Department id,Employee ids and Manager ids for the Communications department
    select dep_id,E_Id,manger_id from Employee where Dep_id = 'D02';
    D02|A116|A187
    D02|A133|A187
    D02|A133|A187
    D02|A133|A187
    D02|A133|A187
    D02|A133|A187
    record count - 6
    
13)Select the Average Expenses for Each dept with Dept id and Dept name
    select e.dep_id,d.dep_name,avg(salary) from Employee e inner join Dept d  where e.dep_id = d.dep_id group by(e.dep_id);
    D01|HEALTH|54527.6666666667
    D02|COMMUNICATIONS|48271.3333333333
    D03|PRODUCT|58517.5
    D04|INSURANCE|51913.3333333333
    D05|FINANCE|56660.3333333333
    
14)Select the total expense for the department finance
    select sum(salary) from Employee where dep_id = 'D05' group by dep_id;
    169981
    record count - 1
    
15)Select the department which spends the least with Dept id and Dept manager name
     select l.DEP_ID,l.Dep_name,l.dep_manager,min(Total) from(select e.dep_id as DEP_ID,d.dep_name as Dep_name,d.dep_manager,total(salary) as Total from employee e inner join dept d where d.dep_id=e.dep_id group by e.dep_id ) as l;
     D03|PRODUCT|BRUCE WILLS|117035.0
     record count - 1
     
16)Select the count of Employees in each department
    select e.dep_id,d.dep_name,count(*) from Employee e inner join Dept d where e.dep_id = d.dep_id group by d.dep_id;
    D01|HEALTH|6
    D02|COMMUNICATIONS|6
    D03|PRODUCT|2
    D04|INSURANCE|3
    D05|FINANCE|3
    record count - 5

17)Select the count of Employees in each department having salary <10000    
    select name,dep_id,count(*) from Employee where salary<10000 group by dep_id;
    Empty Set
    record count - 0

18)Select the total number of Employees in Dept id D04
    select e.dep_id,d.dep_name,count(*) from employee e inner join dept d where e.dep_id=d.dep_id and e.dep_id='D04' ;
    D04|INSURANCE|3
    record count - 1
    
19)Select all department details of the Department with Maximum Employees
   select p.dep_id,p.dep_name,k.c1 from(select max(l.count) as c1 from (select e.dep_id,d.dep_name,count(*) as count from employee e inner join dept d where e.dep_id=d.dep_id group by d.dep_id) as l)  as k inner join  (select e.dep_id,d.dep_name,count(*) as count from employee e inner join dept d where e.dep_id=d.dep_id group by d.dep_id) as p where k.c1=p.count ;
   D01|Health|6
   D02|COmmunications|6
   record count-2
   
20)Select the Employees who has Tim Cook as their manager
    select e.name,e.E_Id from Employee e inner join Dept d where e.dep_id = d.dep_id and d.dep_manager = 'Tim Cook';
    Empty Set 
    record count - 0
/* Your Record Count from the SQL execution */
