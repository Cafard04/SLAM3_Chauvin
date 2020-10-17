CREATE or REPLACE FUNCTION createUser(nom varchar, prenom VARCHAR,adresse VARCHAR, idinternet VARCHAR, mdpinternet varchar) RETURNS INT
LANGUAGE plpgsql
AS $plpgsql$
  DECLARE
   var INT;
var2 INT;
BEGIN
 
  var = MAX(client.num_client) FROM client;
  var2 = var+1;
  INSERT INTO client (num_client, nom_client, prenom_client, adresse_client, identifiant_internet, mdp_internet) VALUES (var2, nom, prenom, adresse, idinternet, mdpinternet);
  RETURN var2;
END;
$plpgsql$;


SELECT createUser('Test', 'test','test','test', 'test') ;

