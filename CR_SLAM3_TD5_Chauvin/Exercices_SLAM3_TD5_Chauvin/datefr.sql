CREATE OR REPLACE FUNCTION  datesqltodateJour(datee date) RETURNS DATE
LANGUAGE plpgsql
AS $plpgsql$
  BEGIN 
    RETURN TO_CHAR(datee, 'DD/MON/YYYY') ;
END;
$plpgsql$;



SELECT datesqltodateJour('2020-01-01') ;

