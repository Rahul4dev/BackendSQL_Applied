INSERT INTO blog.authors (name, email) 
values ('Marcus', 'Marcus@test.com');

insert into practice.students (student_name, number, sex) value
('Dan', 30, 'F');

select * from students;

select count(*) from students where number< 33;

#use of aliases
SELECT s.stock_num, s.manu_code, s.description, 
       s.unit_price, c.catalog_num, 
       c.cat_advert, m.lead_time
   FROM stock s, catalog c, manufact m
   WHERE s.stock_num = c.stock_num
      AND s.manu_code = c.manu_code
      AND s.manu_code = m.manu_code
      AND s.manu_code IN ('HRO', 'HSK')
      AND s.stock_num BETWEEN 100 AND 301
   ORDER BY catalog_num; 