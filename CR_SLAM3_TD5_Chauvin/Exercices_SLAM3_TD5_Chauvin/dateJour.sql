CREATE OR REPLACE FUNCTION getnomjour (a DATE) RETURNS VARCHAR
LANGUAGE PLPGSQL
AS $plpgsql$
DECLARE
  b INT;
  c TEXT [];
BEGIN
  b = EXTRACT(ISODOW FROM a);
  c = '{"Lundi","Mardi","Mercredi","Jeudi","Vendredi","Samedi","Dimanche"}';
  RETURN c[b];
END;
$plpgsql$;

SELECT getnomjour('2001-08-07') ;

