CREATE OR REPLACE FUNCTION  getNbJoursParMois3(datee date) RETURNS DATE AS
$$
  SELECT (date_trunc('MONTH', $1) + INTERVAL '1 MONTH - 1 day')::DATE;
  
$$
LANGUAGE 'sql';



SELECT date_part('day',getNbJoursParMois3('2020-01-01')) ;

