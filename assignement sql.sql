SELECT MONTHS_BETWEEN(LAST_DAY('15-JAN-12') + 1, '01-APR-12') FROM DUAL;

SELECT SUBSTR('2009', 1, 2) || LTRIM('1124', '1') FROM DUAL; --

SELECT CONCAT(CONCAT(UPPER(name), ' has the population of '), population)

FROM city

WHERE LOWER(countrycode) = 'cbd';


SELECT CONCAT(CONCAT(UPPER(SUBSTR(district, 1, 3)), ' - '),

       UPPER(SUBSTR(district, LENGTH(district) - 2)))

FROM city;

SELECT MONTHS_BETWEEN(LAST_DAY('15-JAN-12') + 1, '01-APR-12') FROM DUAL;

