# Restaurants Table
INSERT INTO restaurant_finder.restaurants (name, type) VALUES ("Poha", "Fast Food");

# show table
select * from restaurants;

# update table 
update restaurants set address_id = 1 where id = 6;

# Number of restaurants with type_id =3
select count(*) from restaurants where type_id = 3;

# join address table with this restaurants table:
select * from restaurants inner join addresses on restaurants.address_id = addresses.id inner join types on restaurants.type_id = types.id;

# show particular things after joining the table:
select restaurants.id, restaurants.name,
 types.cuisine, 
 addresses.street, addresses.street_number, addresses.city, addresses.postal_code, addresses.country,
 reviews.reviewer_name, reviews.rating, reviews.text, reviews.date
from restaurants 
inner join addresses on restaurants.address_id = addresses.id 
inner join types on restaurants.type_id = types.id 
inner join reviews on restaurants.id = reviews.restaurant_id 
where reviews.rating > 4 ;
