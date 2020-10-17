CREATE FUNCTION  calculer_longueur_max(var1 TEXT, var2 TEXT) RETURNS TEXT
LANGUAGE plpgsql
AS $plpgsql$
DECLARE
i1 INT;
i2 INT;
x TEXT;

BEGIN
  i1 = CHAR_LENGTH(var1);
  i2 = CHAR_LENGTH(var2);

  IF i2>i1 THEN
    x='i2 est long';
ELSE 
    x='i1 est long';
END IF;

  RETURN x;
END
$plpgsql$;


SELECT calcul('DUPONT','DELAVAL');

