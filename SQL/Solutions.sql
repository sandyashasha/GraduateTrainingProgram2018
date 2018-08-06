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
    
    

/* Your Record Count from the SQL execution */
