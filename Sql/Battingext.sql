select nameFirst, nameLast, name as teamName, Batting.* 
from (Batting inner join Master
on Batting.playerID=Master.playerID) inner join Teams
on Batting.teamID=Teams.teamID and Batting.yearID=Teams.yearID
limit 2;