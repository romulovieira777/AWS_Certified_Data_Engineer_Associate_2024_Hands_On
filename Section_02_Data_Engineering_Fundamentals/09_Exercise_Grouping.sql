/*
Practing grouping queries in SQL

Did class matter? We have the same sample of 100 passengers on the Titanic, but this time we want to explore if the
passenger class of their ticket (first, second, or third class) affected their odds of survival.

Your example dataset is in a table named titanic. This contains a column named Survived, which is 1 if they survived and
0 if not. There is also a Pclass column indicating their passenger class (1, 2 or 3).

You task is to use GROUP BY in SQl to produce the survival rate for each passenger class in our dataset. Your output
should contain a table with two columns named Pclass and survival_rate. The results should be sorted in ascending order
by passenger class.

Learning Objective

Use GROUP BY clauses to segment query results in SQL.
*/
SELECT
    Pclass
  , AVG(Survived) AS survival_rate
FROM
    titanic
GROUP BY
    Pclass
ORDER BY
    Pclass;