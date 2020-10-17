CREATE or REPLACE FUNCTION compteUser5() RETURNS INT
LANGUAGE plpgsql
AS $plpgsql$
BEGIN
  RETURN DISTINCT COUNT( DISTINCT client.num_client) FROM client, operation, compte, posseder WHERE operation.type_operation='DEBIT' AND client.num_client=posseder.num_client AND posseder.num_compte=compte.num_compte AND compte.num_compte=operation.num_compte;
END;
$plpgsql$;


SELECT compteUser5() ;


