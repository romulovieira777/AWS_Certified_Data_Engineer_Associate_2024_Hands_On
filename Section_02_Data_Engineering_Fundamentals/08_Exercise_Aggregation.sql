/*
Practicing aggregation queries in SQL

Women and children first!

You probably know the story of the Titanic, an ocean liner that tragically sank in 1912. A famous policy of the time was
"women and children first" when loading up the lifeboats in such situation. Does the data show this is what actually
happened on the Titanic?

We've loaded up a sample of 100 passengers on the Titanic, which includes their age in years, whether they survived, and
their self-reported gender, into a table named titanic.

Explore this data, and compute:

    * A listing of the first ten rows in the titanic table, to help you understand its structure and column names.
    * The overall survival rate of passengers in this data set. This result should be labeled overall_rate.
    * The overall survival rate of "women and children", identified by a gender of 'female' or age of 12 or younger.
    This result should be labeled women_children_rate.
    * The overall
    * The overall survival rate of everyone else who does not fit our definition of "women and children". This result
    should be labeled others_rate.

Compute these as four separate SQL queries; we're not looking to use grouping here yet.

Did women and children have better odds of surviving the Titanic than others did?

Learning Objective

Count and provide statistical information on datasets using SQL.
*/
SELECT
    *
FROM
    titanic
LIMIT 10;


SELECT
    AVG(CASE WHEN survived = 1 THEN 1 ELSE 0 END) AS overall_rate
FROM
    titanic;


SELECT
    AVG(survived) AS women_children_rate
FROM
    titanic
WHERE
    sex = 'female'
OR
    age <= 12;


SELECT
    AVG(survived) AS others_rate
FROM
    titanic
WHERE
    sex != 'female'
AND
    age > 12;