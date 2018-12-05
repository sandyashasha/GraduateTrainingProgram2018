- ProblemSet01, December 5 2018
--sandya.nandakumar@accenture.com

/* <Question from the ProblemSet 00> */

1)List full details of all hotels.

Select * from hotel;
H111|EMPIRE HOTEL|NEW YORK
H235|PARK PLACE|NEW YORK
H432|BROWNSTONE HOTEL|TORONTO
H498|JAMES PLAZA|TORONTO
H193|DEVON HOTEL|BOSTON
H437|CLAIRMONT HOTEL|BOSTON

Record Count:6

2)List full details of all hotels in New York.
Select * from hotel where city='NEW YORK';
H111|EMPIRE HOTEL|NEW YORK
H235|PARK PLACE|NEW YORK

Record Count:2

3)List the names and cities of all guests, ordered according to their cities
Select name,city from guest order by city;
ROBERT SWIFT|ATLANTA
TARA CUMMINGS|BALTIMORE
EDWARD CANE|BALTIMORE
TOM HANCOCK|PHILADELPHIA
ADAM WAYNE|PITTSBURGH
VANESSA PARRY|PITTSBURGH

Record Count:6

4)List all details for non-smoking rooms in ascending order of price.
select * from room where type='N' order by price;
257|H437|N|140
412|H111|N|145
223|H437|N|155
345|H498|N|160
1201|H193|N|175
1267|H235|N|175
467|H498|N|180
1289|H235|N|195

Record Count:8

5)List the number of hotels there are.
select count(*) from hotel;
6

Record Count:1

6)List the cities in which guests live. Each city should be listed only once.
Select DISTINCT city from guest;
PITTSBURGH
BALTIMORE
PHILADELPHIA
ATLANTA

Record Count:4

7)List the average price of a room.
Select AVG(price) from room;
155.666666666667

Record Count:1

8)List hotel names, their room numbers, and the type of that room.
Select h.name,r.room_no,r.type from hotel h join room r where r.hotel_no=h.hotel_no;
CLAIRMONT HOTEL|223|N
CLAIRMONT HOTEL|257|N
EMPIRE HOTEL|313|S
JAMES PLAZA|345|N
EMPIRE HOTEL|412|N
JAMES PLAZA|467|N
BROWNSTONE HOTEL|876|S
BROWNSTONE HOTEL|898|S
DEVON HOTEL|1001|S
DEVON HOTEL|1201|N
PARK PLACE|1267|N
PARK PLACE|1289|N

Record Count:12

9)List the hotel names, booking dates, and room numbers for all hotels in New York.
Select h.name,b.date_from,b.date_to,b.room_no from hotel h join booking b where h.hotel_no=b.hotel_no and city='NEW YORK';
EMPIRE HOTEL|10-AUG-99|15-AUG-99|412
EMPIRE HOTEL|18-AUG-99|21-AUG-99|412
PARK PLACE|05-SEP-99|12-SEP-99|1267

Record Count:3

10)What is the number of bookings that started in the month of September?
Select count(*) from booking where b.date_from like '%SEP%;
4

Record count:1

11.List the names and cities of guests who began a stay in New York in August.
 select g.Name,g.City from Guest g inner join Booking b on g.Guest_No=b.Guest_No where b.Hotel_No in (select Hotel_No from Hotel where City='New York') and b.Date_From between '1999-08-01' and '1999-08-31';
Adam Wayne|Pittsburgh
Tara Cummings|Baltimore

Record count:2

12.List the hotel names and room numbers of any hotel rooms that have not been booked.
select h.Name,r.Room_No from Hotel h inner join Room r on h.Hotel_No=r.Hotel_No where r.Room_No not in(select Room_No from Booking);
Empire Hotel|313
Park Place|1289
Brownstone Hotel|876
Brownstone Hotel|898
Clairmont Hotel|257

Record count:5

13.List the hotel name and city of the hotel with the highest priced room.
select h.Name,h.City from Hotel h inner join Room r on h.Hotel_No=r.Hotel_no where r.Price in(select max(Price) from Room);

Park Place|New York

Record count:1

14.List hotel names, room numbers, cities, and prices for hotels that have rooms with prices lower than the lowest priced room in a Boston hotel.
select h.Name,r.Room_No,h.City,r.Price from hotel h inner join room r on h.Hotel_No=r.Hotel_No where r.price <(select min(r.Price) from Room r inner join Hotel h on h.hotel_No=r.Hotel_No where City='Boston');

Brownstone Hotel|876|Toronto|124.0
Brownstone Hotel|898|Toronto|124.0

Record count:2

15.List the average price of a room grouped by city.
select avg(r.price) from Room r inner join Hotel h on r.Hotel_No=h.Hotel_No group by h.City;

155.0
165.0
147.0

Record count:3


