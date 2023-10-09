SELECT brand, model, price FROM cars
SELECT count(*) FROM cars
SELECT * FROM cars where brand='Hyundai'
SELECT * FROM cars where color IN('Red','Blue')
SELECT * FROM cars where year_of_issue BETWEEN 2000 AND 2010
SELECT count(*) FROM cars WHERE brand='Chevrolet'
SELECT avg(year_of_issue) FROM cars
SELECT * FROM cars where brand in('Audi','Toyota','Kia','Ford')
SELECT * FROM cars where model like 'T%'
SELECT * FROM cars where model like '%e'
SELECT * FROM cars where brand like '_____'
SELECT count(*) FROM cars where brand='Mercedes-Benz'
SELECT * FROM cars WHERE price = (SELECT MAX(price) FROM cars) OR price = (SELECT MIN(price) FROM cars)
SELECT * FROM cars where brand<>'Toyota'
SELECT * FROM cars order by price desc limit 10
SELECT * FROM cars order by price desc limit 10 offset 4
SELECT * FROM cars where year_of_issue < 1995 or year_of_issue > 2005
SELECT color,count(*) FROM cars GROUP BY color ORDER BY count(*) desc   limit 1
SELECT year_of_issue, COUNT(*) FROM cars GROUP BY year_of_issue ORDER BY year_of_issue ASC
SELECT round(avg(price)) FROM cars where brand='Ford'
SELECT sum(price) FROM cars where color<>'Red'
SELECT brand,model,count(*) from cars GROUP BY brand,model order by count(*) desc
SELECT price FROM cars group by price order by price desc limit 1
SELECT avg(price) from cars where year_of_issue<2005 and color='Maroon'
SELECT COUNT(*)FROM cars WHERE brand = 'Toyota' AND price > (SELECT AVG(price) FROM cars);
SELECT DISTINCT brand FROM cars WHERE price > 80000
SELECT distinct brand from cars where color<>'Purple'
SELECT brand FROM cars where year_of_issue=1990 and price=30000
SELECT brand from cars where year_of_issue=2005 and color='Turquoise'
SELECT BRAND FROM CARS WHERE brand not in (select brand from cars where year_of_issue=1980)
SELECT model FROM cars group by model having sum(price)>500000
SELECT model from cars group by model having max(price)>(select avg(price) from cars)
SELECT brand FROM cars group by brand having min(price)>10000
SELECT DISTINCT model FROM cars WHERE model IN (SELECT DISTINCT model FROM cars WHERE color = 'Goldenrod')
SELECT brand FROM cars WHERE model not in (select model from cars where year_of_issue=(select min(year_of_issue)from cars)and price >5000)
SELECT brand FROM cars group by brand having max(year_of_issue)<=2000
SELECT brand FROM cars group by brand having avg(year_of_issue)<=2005
SELECT brand FROM cars where year_of_issue=2015
SELECT model, AVG(price) AS average_price FROM cars GROUP BY model ORDER BY average_price DESC LIMIT 1
SELECT model, AVG(year_of_issue) AS average_year FROM cars GROUP BY model ORDER BY average_year ASC LIMIT 1
SELECT brand FROM cars group by brand having sum(price)<=1000000
SELECT brand FROM cars group by brand having count(*)>=10
select brand from cars group by brand having COUNT(*) = (select MAX(car_count) from (select COUNT(*) as car_count from cars group by brand) as counts)
select brand from cars group by brand having count(*)=(Select min(car_count) from (select count(*) as car_count from cars group by brand) as counts)
SELECT model FROM cars WHERE price <= 70000 AND year_of_issue > 2010 GROUP BY model HAVING MAX(price) <= 70000
SELECT brand FROM cars WHERE brand NOT IN(SELECT brand FROM cars WHERE price <= 5000) AND brand NOT IN(SELECT brand FROM cars WHERE color = 'Black')GROUP BY brand
select model from cars group by model having avg(year_of_issue)=max(year_of_issue)
SELECT model FROM cars GROUP BY model HAVING COUNT(*) <= 50
SELECT brand FROM (SELECT brand, MAX(price) AS max_price, MIN(price) AS min_price FROM cars GROUP BY brand) AS brand_prices WHERE brand_prices.max_price > 5 * brand_prices.min_price

