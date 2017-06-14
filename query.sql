SELECT countries.name, languages.language, languages.percentage
FROM countries
	JOIN languages ON countries.id = languages.country_id
WHERE languages.language = 'Slovene'
ORDER BY languages.percentage DESC;

--2.
SELECT countries.name, COUNT(cities.id) as num_cities
FROM countries
	JOIN cities ON countries.id = cities.country_id
GROUP BY countries.id
ORDER BY num_cities DESC;

--3
SELECT cities.name, cities.population
FROM countries
	JOIN cities ON countries.id = cities.country_id
WHERE countries.name = 'Mexico' AND cities.population > 500000
ORDER BY cities.population DESC;

--4
SELECT countries.name, languages.language, languages.percentage
FROM countries
  JOIN languages ON countries.id = languages.country_id
WHERE languages.percentage > 89
ORDER BY languages.percentage DESC;

--5
SELECT countries.name, countries.surface_area, countries.population
FROM countries
WHERE countries.surface_area < 501 AND countries.population > 100000;

--6
SELECT countries.name, countries.government_form, countries.capital
FROM countries
WHERE countries.government_form = 'Constitutional Monarchy'
	AND countries.life_expectancy > 75
	AND countries.capital > 200;

--7
SELECT countries.name, cities.name, cities.district, cities.population
FROM countries
	JOIN cities ON countries.id = cities.country_id
WHERE countries.name = 'Argentina'
	AND cities.district = 'Buenos Aires'
	AND cities.population > 500000;

	--8
SELECT countries.region, COUNT(countries.id) AS num_countries
FROM countries
GROUP BY countries.region
ORDER BY num_countries DESC;
