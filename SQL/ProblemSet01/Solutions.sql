1) List full details of all hotels.
    select h.hotel_no,h.name,h.city,r.room_no,r.type from Hotel h inner join Room r where h.hotel_no = r.hotel_no;
    H437|CLAIRMONT HOTEL|BOSTON|223|N
    H111|EMPIRE HOTEL|NEW YORK|313|S
    H111|EMPIRE HOTEL|NEW YORK|313|S
    H498|JAMES PLAZA|TORONTO|345|N
    H111|EMPIRE HOTEL|NEW YORK|412|N
    H498|JAMES PLAZA|TORONTO|467|N
    H432|BROWNSTONE HOTEL|TORONTO|876|S
    H432|BROWNSTONE HOTEL|TORONTO|898|S
    H193|DEVON HOTEL|BOSTON|1001|S
    H193|DEVON HOTEL|BOSTON|1201|N
    H235|PARK PLACE|NEW YORK|1267|N
    H235|PARK PLACE|NEW YORK|1289|N
    record count - 12
 
2)List full details of all hotels in New York. 
  select h.hotel_no,h.name,h.city,r.room_no,r.type from Hotel h inner join Room r where h.hotel_no = r.hotel_no and h.city = 'NEW YORK';
  H111|EMPIRE HOTEL|NEW YORK|313|S
  H111|EMPIRE HOTEL|NEW YORK|412|N
  H235|PARK PLACE|NEW YORK|1267|N
  H235|PARK PLACE|NEW YORK|1289|N
  record count - 4

3)List the names and cities of all guests, ordered according to their cities.  
  select * from Guest order by city asc;
  G467|ROBERT SWIFT|ATLANTA
  G367|TARA CUMMINGS|BALTIMORE
  G190|EDWARD CANE|BALTIMORE
  G230|TOM HANCOCK|PHILADELPHIA
  G256|ADAM WAYNE|PITTSBURGH
  G879|VANESSA PARRY|PITTSBURGH
  record count - 6

4)List all details for non-smoking rooms in ascending order of price.
  select * from Room where type = 'N' order by price;
  257|H437|N|140
  412|H111|N|145
  223|H437|N|155
  345|H498|N|160
  1201|H193|N|175
  1267|H235|N|175
  467|H498|N|180
  1289|H235|N|195
  record count - 8
  
5)List the number of hotels there are.  
  select count(*) from Hotel;
  6
  record count - 1  

6)List the cities in which guests live. Each city should be listed only once.
  select guest_no,name,city from Guest group by city;
  G467|ROBERT SWIFT|ATLANTA
  G190|EDWARD CANE|BALTIMORE
  G230|TOM HANCOCK|PHILADELPHIA
  G879|VANESSA PARRY|PITTSBURGH   
  
  record count - 4
  
 7)List the average price of a room.
   select avg(price) from Room;
   155.666666666667
   record count - 1

8)List hotel names, their room numbers, and the type of that room.
  select h.name,r.hotel_no,r.type from Hotel h inner join Room r where h.hotel_no  = r.hotel_no;
  CLAIRMONT HOTEL|H437|N
  CLAIRMONT HOTEL|H437|N
  EMPIRE HOTEL|H111|S
  JAMES PLAZA|H498|N
  EMPIRE HOTEL|H111|N
  JAMES PLAZA|H498|N
  BROWNSTONE HOTEL|H432|S
  BROWNSTONE HOTEL|H432|S
  DEVON HOTEL|H193|S
  DEVON HOTEL|H193|N
  PARK PLACE|H235|N
  PARK PLACE|H235|N
  
  record count - 12
  
9)List the hotel names, booking dates, and room numbers for all hotels in New York.
   select h.name,r.room_no,b.date_from,b.date_to from Hotel h inner join Room r inner join Booking b where h.hotel_no = r.hotel_no and r.room_no = b.room_no and h.city = 'NEW YORK';
   EMPIRE HOTEL|412|10-AUG-99|15-AUG-99
   EMPIRE HOTEL|412|18-AUG-99|21-AUG-99
   PARK PLACE|1267|05-SEP-99|12-SEP-99
   
   record count - 3
