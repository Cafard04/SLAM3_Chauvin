create or replace function countclient137(blbl character varying) returns integer
language plpgsql as $plpgsql$
BEGIN
  RETURN DISTINCT COUNT(DISTINCT client.num_client) 
  FROM client 
  WHERE client.adresse_client LIKE ('%' || blbl || '%');
END;
$plpgsql$;

