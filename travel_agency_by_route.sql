 SELECT a.route_name AS Маршрут, SUM(b.trip_quantity) AS 'Количество проданных путёвок', 
 SUM((b.trip_price+c.visa_price)*b.trip_quantity/1000) AS 'Стоимость проданных путёвок, тыс. руб'
 FROM countries AS c, sales AS b, routes AS a
 WHERE (a.country_id = c.country_id AND b.route_id = a.route_id)
 GROUP BY a.route_name;