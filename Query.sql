-- Q1: Most successful teams by wins

SELECT 
winner as team_name,
count(*) as total_wins
FROM matches
WHERE winner IS NOT NULL
GROUP BY winner
ORDER BY total_wins DESC
LIMIT 10;


-- Q2: Does winning toss help win the match?
SELECT 
COUNT(*) AS total_matches,
SUM(CASE WHEN toss_winner = winner THEN 1 ELSE 0 END) AS  toss_winner_won,
ROUND(SUM(CASE WHEN toss_winner = winner THEN 1 ELSE 0 END) / COUNT(*) *100,2) AS win_pct
FROM matches
WHERE winner IS NOT NULL;

-- Q3: Field first or bat first — which wins more?

SELECT 
toss_decision,
COUNT(*) AS times_choosen,
SUM(CASE WHEN toss_winner = winner THEN 1 ELSE 0 END) AS times_won,
ROUND(SUM(CASE WHEN toss_winner = winner THEN 1 ELSE 0 END) / COUNT(*) * 100 ,2)AS win_pct
FROM matches
WHERE winner IS NOT NULL
GROUP BY toss_decision;

-- Q4: Top 10 run scorers of all time

SELECT 
batter,
sum(batsman_runs) as total_runs,
count(DISTINCT match_id) as total_match_played,
ROUND(AVG(batsman_runs),2)AS avg_runs_per_ball
FROM deliveries
GROUP BY batter
ORDER BY total_runs DESC
LIMIT 10;

-- Q5: Top 10 wicket takers of all time

SELECT
bowler,
COUNT(*) AS total_wickets,
COUNT(DISTINCT match_id) as match_played
FROM deliveries
WHERE is_wicket = 1 
AND dismissal_kind NOT IN ('run out', 'retired hurt', 'obstructing the field')
GROUP BY bowler
ORDER BY total_wickets DESC
LIMIT 10;

-- Q6: Most Player of the Match awards

SELECT 
player_of_match,
COUNT(*) AS awards
FROM 
matches
WHERE player_of_match IS NOT NULL
GROUP BY player_of_match
ORDER BY awards DESC
LIMIT 10;


-- Q7: Most matches hosted by venue

SELECT 
venue,
city,
COUNT(*) AS total_matches_hosted
FROM matches
GROUP BY venue,city
ORDER BY total_matches_hosted DESC
LIMIT 10;

-- Q8: Season-wise total runs scored (batting trends over years)

SELECT
m.season,
SUM(d.total_runs) as total_runs,
COUNT(DISTINCT m.id) as total_matches,
ROUND(AVG(d.total_runs),2) AS avg_runs_per_ball
FROM 
matches as m
JOIN deliveries as d
ON m.id = d.match_id
GROUP BY m.season
ORDER BY m.season;

-- Q9: Best bowling economy (min 100 overs bowled)

SELECT 
bowler,
SUM(total_runs) as runs_given,
FLOOR(COUNT(*) / 6)AS overs_bowled,
ROUND(SUM(total_runs) / COUNT(*) * 6.0,2) as economy
FROM deliveries
GROUP BY bowler
HAVING  COUNT(*) >= 600
ORDER BY economy ASC
LIMIT 10;

-- Q10: Highest team totals in a single innings

SELECT
match_id, batting_team, inning,
SUM(total_runs) AS team_total
FROM deliveries
GROUP BY match_id, batting_team, inning
ORDER BY team_total DESC
LIMIT 10;
