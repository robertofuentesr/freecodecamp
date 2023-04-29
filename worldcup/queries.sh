#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

echo -e "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"

echo -e "\nTotal number of goals in all games from both teams combined:"
echo "$($PSQL "SELECT SUM(winner_goals) + SUM(opponent_goals) FROM games")"

echo -e "\nAverage number of goals in all games from the winning teams:"
echo "$($PSQL "SELECT round(SUM(winner_goals)::numeric/count(*),16)  FROM games")"

echo -e "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
echo "$($PSQL "SELECT round(SUM(winner_goals)::numeric/count(*),2)  FROM games")"

echo -e "\nAverage number of goals in all games from both teams:"
echo "$($PSQL "SELECT round((SUM(winner_goals)::numeric + SUM(opponent_goals)::numeric)/count(*),16) FROM games")"

echo -e "\nMost goals scored in a single game by one team:"
echo "$($PSQL "SELECT max(winner_goals) FROM games")"

echo -e "\nNumber of games where the winning team scored more than two goals:"
echo "$($PSQL "SELECT count(*) FROM games where winner_goals>2 ")"

echo -e "\nWinner of the 2018 tournament team name:"
echo "$($PSQL "select name from teams where team_id = (SELECT winner_id FROM games where year=2018 and round='Final')")"


echo -e "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo "$($PSQL "select name from teams where 
team_id in (SELECT winner_id FROM games where year=2014 and round='Eighth-Final') or
team_id in (SELECT opponent_id FROM games where year=2014 and round='Eighth-Final')
order by name asc   ")"

echo -e "\nList of unique winning team names in the whole data set:"
echo "$($PSQL "SELECT name FROM teams where team_id in (select winner_id from games) 
order by name asc")"

echo -e "\nYear and team name of all the champions:"
echo  "$($PSQL "SELECT year,name FROM games  
left join teams on games.winner_id=teams.team_id 
where round='Final' order by year asc")"

echo -e "\nList of teams that start with 'Co':"
echo "$($PSQL "SELECT name FROM teams where name like 'Co%' order by name asc")"
