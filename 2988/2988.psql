SELECT 
        --Nome--
        (SELECT name
        FROM teams t
        WHERE t.id = team.id) AS name,
        
        
        --Partidas--
        (SELECT COUNT (team_1)
        FROM matches 
        WHERE team_1 = team.id)
        +
        (SELECT count (team_2)
        FROM matches
        where team_2 = team.id) AS matches,
        
        
        --Vitórias--
        (SELECT SUM (case when team_2_goals > team_1_goals then 1 else 0 END) AS victories
        FROM teams t INNER JOIN matches m ON t.id = m.team_2
        WHERE t.id = team.id)
        +
        (SELECT SUM(case when team_1_goals > team_2_goals then 1 else 0 END)
        FROM teams t INNER JOIN matches m ON t.id = m.team_1
        WHERE t.id = team.id) AS victories,
        
        
        --Derrotas--
        (SELECT SUM(case when team_2_goals < team_1_goals then 1 else 0 END) AS victories
        FROM teams t INNER JOIN matches m ON t.id = m.team_2
        WHERE t.id = team.id)
        +
        (SELECT SUM (case when team_1_goals < team_2_goals then 1 else 0 END)
        FROM teams t INNER JOIN matches m ON t.id = m.team_1
        WHERE t.id = team.id) AS defeats,
        
        
        --Empates--
        (SELECT SUM (case when team_2_goals = team_1_goals then 1 else 0 END) AS victories
        FROM teams t INNER JOIN matches m ON t.id = m.team_2
        WHERE t.id = team.id)
        +
        (SELECT SUM (case when team_1_goals = team_2_goals then 1 else 0 END)
        FROM teams t inner join matches m ON t.id = m.team_1
        WHERE t.id = team.id) AS draws,
        
        
        --Pontos--
        (SELECT SUM (case when team_2_goals > team_1_goals then 3 when team_2_goals = team_1_goals then 1 else 0 END) AS victories
        FROM teams t INNER JOIN matches m ON t.id = m.team_2
        WHERE t.id = team.id)
        +
        (SELECT SUM (case when team_1_goals > team_2_goals then 3 when team_1_goals = team_2_goals then 1 else 0 END)
        FROM teams t INNER JOIN matches m ON t.id = m.team_1
        WHERE t.id = team.id) AS score
        
        
FROM teams team
ORDER BY score DESC
