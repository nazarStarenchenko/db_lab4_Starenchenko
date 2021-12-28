--ця функція повертає ім'я гравця з найбільшою кількістю очків в середньому за гру

CREATE OR REPLACE FUNCTION count_max_pts() RETURNS char(50) AS
$$
    DECLARE
		player_name_and_family_name char(50);
    BEGIN
        
		SELECT player_name ||' '||player_family_name 
		INTO player_name_and_family_name
        FROM players
		WHERE pts = (SELECT MAX(pts) 
					 FROM players);
		
        RETURN player_name_and_family_name;
    END;
$$ LANGUAGE 'plpgsql';

