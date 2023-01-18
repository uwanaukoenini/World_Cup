Select top 10 *
from WorldCupMatches

--Team with the most world cups
Select winner,
	   number_of_wins
from (Select winner,
			 count(winner) as number_of_wins
		from WorldCups_preview
		Group by winner) as sub
Order by number_of_wins desc

--Brazil has won the most world cup
--Average number of goals scored in each world cup
