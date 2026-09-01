# 🏏 IPL Cricket Analysis (2008–2024) Using SQL

## 📌 Project Overview

The Indian Premier League (IPL) is one of the most data-rich cricket tournaments in the world, generating large amounts of data from every match and every delivery.

In this project, I used **MySQL and SQL** to analyze IPL match and ball-by-ball data from **2008 to 2024**.

The objective of this project is to uncover meaningful insights about **team performance, toss impact, batting, bowling, Player of the Match awards, venues, season-wise scoring trends, and highest team totals**.

This project demonstrates how SQL can be used to analyze real-world sports data and answer business-style analytical questions.

---

## 🎯 Project Objectives

The main objectives of this project are:

* Identify the **most successful IPL teams** based on total wins
* Analyze whether **winning the toss increases the probability of winning the match**
* Compare the impact of **batting first vs. fielding first**
* Identify the **top run scorers** in IPL history
* Identify the **top wicket takers**
* Find players with the most **Player of the Match awards**
* Identify venues that have hosted the **most IPL matches**
* Analyze **season-wise scoring trends**
* Identify bowlers with the **best economy rates**
* Find the **highest team totals in a single innings**

---

## 🗂️ Dataset

The project uses IPL data containing:

### Match-Level Data

The `matches` table contains information such as:
--Keys Columns
* Match ID
* Season
* City
* Venue
* Toss Winner
* Toss Decision
* Match Winner
* Player of the Match

### Ball-by-Ball Data

The `deliveries` table contains delivery-level information such as:
-- Keys Columns
* Match ID
* Batter
* Bowler
* Batting Team
* Innings
* Batsman Runs
* Total Runs
* Wicket Information
* Dismissal Type

---

## 🛠️ Tools & Technologies

* **Database:** MySQL
* **SQL Environment:** MySQL Workbench
* **Language:** SQL
* **Data:** Go to Kaggle → search "IPL complete dataset 2024
*  **Analysis Period:** 2008–2024

---

# 💻 SQL Concepts Used

This project demonstrates practical usage of:

* `SELECT`
* `WHERE`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `LIMIT`
* `JOIN`
* `COUNT()`
* `SUM()`
* `AVG()`
* `ROUND()`
* `FLOOR()`
* `COUNT(DISTINCT)`
* `CASE WHEN`
* Conditional Aggregation
* Filtering
* Data Aggregation
* Ranking and Top-N Analysis

---

# 🔍 Analysis & Business Questions

## Q1. Most Successful IPL Teams by Wins

I calculated the total number of matches won by each team and identified the **top 10 most successful teams** based on match victories.

This helps compare team performance across IPL history.

---

## Q2. Does Winning the Toss Help Win the Match?

I compared the **toss winner** with the **match winner** to calculate how often the team winning the toss also won the match.

### Analysis:

* Total matches
* Toss-winning teams that won the match
* Percentage of toss winners who also won the match

This helps determine whether winning the toss provides a meaningful advantage.

---

## Q3. Bat First vs. Field First — Which Performs Better?

I analyzed the two toss decisions:

* **Batting first**
* **Fielding first**

For each decision, I calculated the number of times the toss-winning team made that decision and subsequently won the match.

This provides insight into which toss strategy has historically been more successful.

---

## Q4. Top 10 Run Scorers of All Time

Using ball-by-ball data, I calculated:

* Total runs scored
* Number of matches played
* Average runs per delivery

This identifies the **top 10 IPL run scorers** based on total runs.

---

## Q5. Top 10 Wicket Takers of All Time

I analyzed delivery-level wicket data to identify the **top 10 wicket-taking bowlers**.

Certain dismissals such as:

* Run out
* Retired hurt
* Obstructing the field

were excluded because they are not credited as wickets to the bowler.

---

## Q6. Most Player of the Match Awards

I counted the number of **Player of the Match awards** received by each player.

This helps identify players who have had the greatest match-winning impact throughout IPL history.

---

## Q7. Venues Hosting the Most IPL Matches

I analyzed the number of matches hosted at each venue and identified the **top 10 venues** by total matches.

This provides an overview of the most frequently used IPL cricket grounds.

---

## Q8. Season-Wise Total Runs

I joined the `matches` and `deliveries` tables to analyze batting trends across IPL seasons.

For each season, I calculated:

* Total runs scored
* Number of matches
* Average runs per delivery

This helps understand how scoring patterns have changed over the years.

---

## Q9. Best Bowling Economy

I calculated bowling economy rates and filtered bowlers who had bowled at least **100 overs** to avoid ranking players with very small sample sizes.

The analysis calculates:

* Runs conceded
* Overs bowled
* Economy rate

The bowlers with the lowest economy rates were then ranked.

---

## Q10. Highest Team Totals in a Single Innings

I aggregated ball-by-ball runs by:

* Match
* Batting Team
* Innings

and identified the **top 10 highest team totals in a single IPL innings**.

This highlights some of the biggest batting performances in IPL history.

---

# 📊 Key Insights

This analysis can help answer important cricket-performance questions such as:

* Which IPL teams have been the most successful?
* How important is the toss?
* Is batting first or chasing historically more successful?
* Who are the IPL's highest run scorers?
* Which bowlers have taken the most wickets?
* Which players have received the most Player of the Match awards?
* Which venues have hosted the most IPL matches?
* How have scoring trends changed across IPL seasons?
* Which bowlers have maintained the best economy rates?
* What are the highest team totals in IPL history?

# 🚀 Skills Demonstrated

Through this project, I demonstrated my ability to:

* Work with **relational datasets**
* Analyze large **ball-by-ball datasets**
* Write SQL queries for real-world analytical problems
* Perform aggregations and conditional calculations
* Combine multiple tables using `JOIN`
* Extract meaningful performance metrics
* Perform Top-N analysis
* Apply filtering using `WHERE` and `HAVING`
* Translate analytical questions into SQL queries
* Present data-driven insights in a structured manner

---

# 💡 Conclusion

The **IPL Cricket Analysis (2008–2024)** project demonstrates how SQL can be used to explore and analyze real-world sports data.

By combining match-level and delivery-level information, I analyzed **team success, toss decisions, batting performance, bowling performance, player achievements, venue usage, scoring trends, and team records**.

The project strengthened my practical understanding of SQL and showed how raw data can be transformed into meaningful insights through structured analysis.

---

## 👨‍💻 Author

**Priyanshu Yadav**

Aspiring Data Analyst | SQL | Excel | Power BI | Python

---

⭐ If you found this project interesting, feel free to explore the SQL queries and analysis.
