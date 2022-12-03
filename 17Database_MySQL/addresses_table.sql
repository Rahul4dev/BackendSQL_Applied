#Address table:

insert into restaurant_finder.addresses (id, street, street_number, city, postal_code, country) values (6, 'MagmaStreet', '85u', 'Appolo', 342543, 'Mars');

select * from restaurant_finder.addresses;

update restaurant_finder.addresses set city = "Patna" where id = 1;

# To join the data from different values of the Table restaurant and addresses table and types table. 
select * from addresses 
inner join restaurants	on addresses.id = restaurants.address_id 
inner join types on restaurants.type_id = types.id;

#select some fields to show after joining: we can add alias of the field like we did in street_number as block
select restaurants.name, types.cuisine, 
addresses.street,  addresses.street_number as block, addresses.city,  addresses.postal_code,  addresses.country,
reviews.reviewer_name, reviews.rating, reviews.text, reviews.date
from addresses
inner join restaurants	on addresses.id = restaurants.address_id 
inner join types on restaurants.type_id = types.id
inner join reviews on restaurants.id = reviews.restaurant_id;