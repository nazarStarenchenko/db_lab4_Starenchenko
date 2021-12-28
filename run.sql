--щоб запустити це все треба запустити код з sql-файлів trigger, procedure, function
--перевірка функції
Select count_max_pts();

--перевірка процедури
CALL count_sum_of_pts_reb_ast ('Patrick');


--перевірка триггеру

INSERT INTO Players(player_id,
                    player_name,
                    player_family_name,
                    team_id,
                    college_id,
                    age,   
                    player_height,
                    player_weight,
                    country,
                    pts,
                    reb,
                    ast)
VALUES (200, 'Nazar','Knight' ,3, 16,
 22.0, 213.0, 107.0, 'USA', 4.8,
  4.5, 0.5);

