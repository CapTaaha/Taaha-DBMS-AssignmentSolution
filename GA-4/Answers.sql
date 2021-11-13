#3) How many females and how many male passengers travelled for a minimum distance of 600 KM s?
select p.Gender, p.Distance
from passenger p
where p.Distance>=600;

#4) Find the minimum ticket price for Sleeper Bus.
select min(pr.Price) SleeperMin
from price pr
where pr.Bus_Type="Sleeper";

#5) Select passenger names whose names start with character 'S' 
select p.*
from passenger p
where Passenger_nam like 'S%';

#6) Calculate price charged for each passenger displaying Passenger name, Boarding City,
#Destination City, Bus_Type, Price in the output
select p.Passenger_nam, p.Boarding_City, p.Destination_City, p.Bus_Type, pr.Price
from passenger p inner join price pr
on p.Distance = pr.Distance and p.Bus_Type = pr.Bus_Type;

#7) What is the passenger name and his/her ticket price who travelled in Sitting bus for a
#distance of 1000 KM s
select p.Passenger_nam, pr.Price 
from passenger p inner join price pr
on p.Distance = pr.Distance and p.Bus_Type = pr.Bus_Type
where p.Bus_Type="Sitting" and pr.Price=1000;

#8) What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to
#Panaji?
select pr.Distance, pr.Bus_Type, pr.Price
from price pr
where pr.Distance=600;

#9) List the distances from the "Passenger" table which are unique (non-repeated
#distances) in descending order
select distinct p.Distance 
from passenger p
order by p.Distance desc;

#10) Display the passenger name and percentage of distance travelled by that passenger
#from the total distance travelled by all passengers without using user variables 
select p.Passenger_nam, p.Distance, (p.Distance)*100/t.s AS 'Percentage'
from passenger p
CROSS JOIN (SELECT SUM(Distance) AS s FROM passenger) t;

#11) Display the distance, price in three categories in table Price
#a) Expensive if the cost is more than 1000
#b) Average Cost if the cost is less than 1000 and greater than 500
#c) Cheap otherwise
select pr.Distance, pr.Price,

case
when pr.Price>1000
then 'Expensive'
when pr.Price>500
then 'Average Cost'
else 'Cheap'
end as Verdict

from price pr;
