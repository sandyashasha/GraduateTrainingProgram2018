ProblemSet<02>, August 14 2018
Submission by gokul.velusaamy@accenture.com
 
1)Write a valid SQL statement that calculates the total weight of all corn cobs that were picked from the garden:
	select sum(p.weight) from picked p inner join plant pl where p.plantFK = pl.plantid and pl.plantid = '2';
	17.54
	
2)For some reason Erin has change his location for picking the tomato to North. Write the corresponding query.
	update picked set locationFK = 1 where gardenerFK = (select g.gardenerid from Gardener g inner join picked p where g.gardenerid = p.gardenerFK and p.gardenerFK = 3) and plantFK = 3;	
	
3)Insert a new column 'Exper' of type Number (30) to the 'gardener' table which stores Experience of the of person. How will you modify this to varchar2(30).
	alter table gardener add column Exper Number (30);	

4)Write a query to find the plant name which required seeds less than 20 which plant on 14-APR	
	select pl.name from plant pl inner join planted pd where pd.seeds < 20 and pd.date1 like '14-APR-%' and pl.plantid = pd.plantFK;
	Carrot
5)List the amount of sunlight and water to all plants with names that start with letter 'c' or letter 'r'.
	select name,sunlight,water from plant where name like 'c%' or name like'r%';
		Carrot|0.26|0.82
		Corn|0.44|0.76
		Radish|0.28|0.84	

6)Write a valid SQL statement that displays the plant name and the total amount of seed required for each plant that were plant in the garden. The output should be in descending order of plant name.
	select pl.name,sum(pd.seeds) from plant pl inner join planted pd where pl.plantid = pd.plantFK group by pl.name order by pl.name desc;
		Tomato|38
		Radish|30
		Lettuce|30
		Corn|32
		Carrot|42
		Beet|36
		
7


8)Write a valid SQL statement that would produce a result set like the following:

 name |  name  |    date    | amount 
------|--------|------------|-------- 
 Tim  | Radish | 2012-07-16 |     23 
 Tim  | Carrot | 2012-08-18 |     28 
		select g.name,pl.name,pic.date1,pic.amount from Gardener g inner join plant pl inner join  picked pic where g.gardenerid = pic.gardenerFK and pl.plantid = pic.plantFK and g.gardenerid = '2' order by pic.date1 limit 2;
			Tim|Radish|16-JUL-2012|23
			Tim|Carrot|18-AUG-2012|28
			 
9)Find out persons who picked from the same location as he/she planted.			 
		select distinct g.name from gardener g inner join planted pd inner join picked pi where g.gardenerid = pd.gardenerFK and pd.gardenerFK = pi.gardenerFK and pd.plantFK = pi.plantFK and pd.locationFK = pi.locationFK;
			Father
			Tim		
			
10)Create a view that lists all the plant names picked from all locations except ’West’ in the month of August.
		create view allplants_pic as select distinct pl.name from plant pl inner join picked pic on pl.plantid = pic.plantFK and pic.locationFK not in (select loc.locationid from location loc inner join picked pic on loc.name = 'West' and pic.date1 like '%AUG%');
		select * from allplants_pic;
			Carrot
			Corn
			Tomato
			Radish		
