1) Find the titles of all movies directed by Steven Spielberg. (1 point possible)
	select title,director from movie where director = 'Steven Spielberg';
		E.T.|Steven Spielberg
		Raiders of the Lost Ark|Steven Spielberg
2) Find all years that have a movie that received a rating of 4 or 5, and sort them in increasing order. (1 point possible)
	
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
4)Some reviewers didnt provide a date with their rating. Find the names of all reviewers who have ratings with a NULL value for the date. (1 point possible)
	select r.rID from rating r inner join reviewer rr where r.rID = rr.rID and r.ratingDate is null;
		202
		205
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
		
6) For all cases where the same reviewer rated the same movie twice and gave it a higher rating the second time, return the reviewers name and the title of the movie. (1 point possible)		
	select rr.name,m.title from reviewer rr inner join movie m inner join rating r where m.mID = r.mID and rr.rID = r.rID group by r.rID,r.mID having count(stars)>1 and stars = max(stars);
		Sarah Martinez|Gone with the Wind
		Brittany Harris|Raiders of the Lost Ark
		
7)
	select rat.stars,mov.title from Movie as mov inner join rating as rat where mov.mID = rat.mID group by mov.title order by mov.title;
		5|Avatar
		3|E.T.
		4|Gone with the Wind
		4|Raiders of the Lost Ark
		5|Snow White
		3|The Sound of Music
	
8)
		select mov.title,(max(rat.stars)-min(rat.stars)) as SPREAD from movie as mov inner join rating as rat where mov.mID = rat.mID group by mov.mID order by mov.title;
			Avatar|2
			E.T.|1
			Gone with the Wind|2
			Raiders of the Lost Ark|2
			Snow White|1
			The Sound of Music|1
