--ця процедура отримує ім'я гравця повертає його ім'я та суму очків
--підборів та передач

CREATE OR REPLACE PROCEDURE count_sum_of_pts_reb_ast(p_name char(50)) 
LANGUAGE 'plpgsql'
AS $$
DECLARE sum_of_pts_reb_ast integer;

BEGIN
	SELECT pts + reb + ast INTO sum_of_pts_reb_ast
	FROM players
	WHERE players.player_name = p_name;
    RAISE INFO 'Players name: %,  Sum of ast,reb,pts: %', p_name, sum_of_pts_reb_ast;
END;
$$;