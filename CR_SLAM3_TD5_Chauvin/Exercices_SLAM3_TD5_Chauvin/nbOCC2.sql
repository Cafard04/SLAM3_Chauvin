CREATE OR REPLACE FUNCTION nb_occurrences3(c CHAR, chaine VARCHAR, i1 INT, i2 INT) RETURNS CHAR
LANGUAGE plpgsql
AS $plpgsql$
DECLARE
  rest VARCHAR;
  comp INT;
  i INT;
  list CHAR[];
BEGIN
  comp = 0;
  list = STRING_TO_ARRAY(chaine,NULL);
  FOR i IN i1..i2 LOOP 
    IF list[i] = c THEN
      comp = comp+1;
      END IF;
  END LOOP;
  
  RETURN comp;
END;
$plpgsql$;



SELECT nb_occurrences3('i','voici un test', 2, 6);



