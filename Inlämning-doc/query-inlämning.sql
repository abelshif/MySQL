USE world;


#2
SELECT 
    city.Name AS CityName, city.population
FROM
    city
WHERE
    city.Name = 'stockholm';
    
    
#3
SELECT
Name, COUNT(Name) AS Count
FROM
country
WHERE
Name LIKE '%stan'
GROUP BY Name;


#4
SELECT 
    GovernmentForm, COUNT(GovernmentForm) AS Count
FROM
    country
GROUP BY GovernmentForm;


#5
SELECT 
    country.Name AS CountryName,
    city.Name AS CityName,
    city.population
FROM
    city
        JOIN
    country ON country.Code = city.Countrycode
ORDER BY population DESC
LIMIT 10;








