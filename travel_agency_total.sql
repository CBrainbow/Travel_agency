 SELECT 'Итого' AS '', SUM(b.trip_quantity) AS 'Количество проданных путёвок', 
 SUM((b.trip_price+a.visa_price)*b.trip_quantity/1000) AS 'Стоимость проданных путёвок, тыс. руб'
 FROM countries AS a, sales AS b, routes AS c
 WHERE (a.country_id = c.country_id AND b.route_id = c.route_id);