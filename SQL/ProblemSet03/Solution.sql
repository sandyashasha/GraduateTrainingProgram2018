ProblemSet<03>, August 17 2018
Submission by gokul.velusaamy@accenture.com

1) Find the titles of all movies directed by Steven Spielberg. (1 point possible)
	select title,director from movie where director = 'Steven Spielberg';
		E.T.|Steven Spielberg
		Raiders of the Lost Ark|Steven Spielberg
		
	row count - 2
		
2) Find all years that have a movie that received a rating of 4 or 5, and sort them in increasing order. (1 point possible)
	select mov.title,rat.stars as "STARS",mov.year from Rating as rat inner join Movie as mov on mov.mID = rat.mID and rat.stars>=4 group by rat.mID order by mov.year;
		Snow White|5|1937
		Gone with the Wind|4|1939
		Raiders of the Lost Ark|4|1981
		Avatar|5|2009
		
	row count - 4	
	
3) Find the titles of all movies that have no ratings. (1 point possible)	
	select m.title from movie m inner join Rating r where r.ratingDate IS NULL group by title;
		Avatar
		E.T.
		Gone with the Wind
		Raiders of the Lost Ark
		Snow White
		Star Wars
		The Sound of Music
		Titanic
		
	row count - 8	
		
4)Some reviewers didnt provide a date with their rating. Find the names of all reviewers who have ratings with a NULL value for the date. (1 point possible)
	select r.rID from rating r inner join reviewer rr where r.rID = rr.rID and r.ratingDate is null;
		202
		205
	
	row count - 2	
		
5) Write a query to return the ratings data in a more readable format: reviewer name, movie title, stars, and ratingDate. Also, sort the data, first by reviewer name, then by movie title, and lastly by number of stars. (1 point possible)
	select rr.name,m.title,r.stars,r.ratingDate from rating r inner join reviewer rr inner join movie m where m.mID = r.mID and rr.rID = r.rID order by rr.name,m.title,r.stars;
		Ashley White|E.T.|3|2011-01-02
		Brittany Harris|Raiders of the Lost Ark|2|2011-01-30
		Brittany Harris|Raiders of the Lost Ark|4|2011-01-12
		Brittany Harris|The Sound of Music|2|2011-01-20
		Chris Jackson|E.T.|2|2011-01-22
		Chris Jackson|Raiders of the Lost Ark|4|
		Chris Jackson|The Sound of Music|3|2011-01-27
		Daniel Lewis|Snow White|4|
		Elizabeth Thomas|Avatar|3|2011-01-15
		Elizabeth Thomas|Snow White|5|2011-01-19
		James Cameron|Avatar|5|2011-01-20
		Mike Anderson|Gone with the Wind|3|2011-01-09
		Sarah Martinez|Gone with the Wind|2|2011-01-22
		Sarah Martinez|Gone with the Wind|4|2011-01-27
		
	row count - 14	
		
6) For all cases where the same reviewer rated the same movie twice and gave it a higher rating the second time, return the reviewers name and the title of the movie. (1 point possible)		
	select rr.name,m.title from reviewer rr inner join movie m inner join rating r where m.mID = r.mID and rr.rID = r.rID group by r.rID,r.mID having count(stars)>1 and stars = max(stars);
		Sarah Martinez|Gone with the Wind
		Brittany Harris|Raiders of the Lost Ark
		
	row count - 2	
		
7)For each movie that has at least one rating, find the highest number of stars that movie received. Return the movie title and number of stars. Sort by movie title. (1 point possible)
	select rat.stars,mov.title from Movie as mov inner join rating as rat where mov.mID = rat.mID group by mov.title order by mov.title;
		5|Avatar
		3|E.T.
		4|Gone with the Wind
		4|Raiders of the Lost Ark
		5|Snow White
		3|The Sound of Music
	
	row count - 6
	
8)For each movie, return the title and the 'rating spread', that is, the difference between highest and lowest ratings given to that movie. Sort by rating spread from highest to lowest, then by movie title. (1 point possible)
		select mov.title,(max(rat.stars)-min(rat.stars)) as SPREAD from movie as mov inner join rating as rat where mov.mID = rat.mID group by mov.mID order by mov.title;
			Avatar|2
			E.T.|1
			Gone with the Wind|2
			Raiders of the Lost Ark|2
			Snow White|1
			The Sound of Music|1
			
		row count - 6	
		
9)Find the difference between the average rating of movies released before 1980 and the average rating of movies released after 1980. (Make sure to calculate the average rating for each movie, then the average of those averages for movies before 1980 and movies after. Dont just calculate the overall average rating before and after 1980.) (1 point possible)
	select avg(A)-avg(B) from (select avg(stars) as A from Rating as rat inner join Movie as mov on rat.mID = mov.mID and mov.year<1980 group by mov.mID),(select avg(stars) as B from Rating as rat inner join Movie as mov on rat.mID = mov.mID and mov.year>1980 group by mov.mID);
		0.0555555555555558

	row count - 1
		
		
10)Find the names of all reviewers who rated Gone with the Wind. (1 point possible)
	select rev.name from Reviewer as rev inner join Movie as mov inner join Rating as rat on rev.rID = rat.rID and mov.mID = rat.mID and mov.title = 'Gone with the Wind' group by rev.rID;
		Sarah Martinez
		Mike Anderson

	row count - 2
		
11)For any rating where the reviewer is the same as the director of the movie, return the reviewer name, movie title, and number of stars. (1 point possible)
	select rev.rID,rev.name,mov.title from Reviewer as rev inner join Movie as mov on mov.director = rev.name inner join Rating as rat on mov.mID = rat.mID group by rev.rID;
		207|James Cameron|Avatar
		
	row count - 1	
		
12)Return all reviewer names and movie names together in a single list, alphabetized. (Sorting by the first name of the reviewer and first word in the title is fine; no need for special processing on last names or removing "The".) (1 point possible)
	select  rev.name from Reviewer as rev union all select mov.title from Movie as mov order by rev.name,mov.title;
		Ashley White
		Avatar
		Brittany Harris
		Chris Jackson
		Daniel Lewis
		E.T.
		Elizabeth Thomas
		Gone with the Wind
		James Cameron
		Mike Anderson
		Raiders of the Lost Ark
		Sarah Martinez
		Snow White
		Star Wars
		The Sound of Music
		Titanic
		
	row count - 16

13)Find the titles of all movies not reviewed by Chris Jackson. (1 point possible)
	select title from Movie where mID in (select rat.mID from Rating as rat inner join Reviewer as rev on rat.rID = rev.rID and rev.name !='Chris Jackson');
		Gone with the Wind
		The Sound of Music
		E.T.
		Snow White
		Avatar
		Raiders of the Lost Ark
	
	row count - 6

14)
	
15)For each rating that is the lowest (fewest stars) currently in the database, return the reviewer name, movie title, and number of stars. (1 point possible)
	select mov.title,rev.name,rat.stars from Movie as mov inner join Reviewer as rev inner join Rating as rat on rev.rID = rat.rID and mov.mID = rat.mID where rat.stars = (select min(rat.stars) from Rating as rat);
		Gone with the Wind|Sarah Martinez|2
		The Sound of Music|Brittany Harris|2
		Raiders of the Lost Ark|Brittany Harris|2
		E.T.|Chris Jackson|2
	
	row count - 4

16)List movie titles and average ratings, from highest-rated to lowest-rated. If two or more movies have the same average rating, list them in alphabetical order. (1 point possible)
	select mov.title,avg(rat.stars) from Movie as mov inner join Rating as rat on rat.mID = mov.mID group by mov.title order by avg(rat.stars),mov.title;
		E.T.|2.5
		The Sound of Music|2.5
		Gone with the Wind|3.0
		Raiders of the Lost Ark|3.33333333333333
		Avatar|4.0
		Snow White|4.5

	row count - 6
		
17)Find the names of all reviewers who have contributed three or more ratings. (As an extra challenge, try writing the query without HAVING or without COUNT.) (1 point possible)	
	select rev.name from Reviewer as rev inner join Rating as rat on rev.rID = rat.rID group by rev.rID having count(rev.rID)>=3;
		Brittany Harris
		Chris Jackson
	
	row count - 2
	
18)Some directors directed more than one movie. For all such directors, return the titles of all movies directed by them, along with the director name. Sort by director name, then movie title. (As an extra challenge, try writing the query both with and without COUNT.) (1 point possible)
	select mov.title,mov.director from Movie as mov group by mov.director having count(mov.director)>1 order by mov.director,mov.title;
		Avatar|James Cameron
		Raiders of the Lost Ark|Steven Spielberg

	row count - 2
	
19)Find the movie(s) with the highest average rating. Return the movie title(s) and average rating. (Hint: This query is more difficult to write in SQLite than other systems; you might think of it as finding the highest average rating and then choosing the movie(s) with that average rating.) (1 point possible)
	select Title,max(Ratings) from (select mov.title as Title,avg(rat.stars) as Ratings from Rating as rat inner join Movie as mov on mov.mID = rat.mID group by mov.title having rat.stars = max(rat.stars));
		Snow White|4.5
	
	row count - 1
