--------Video Games Database Analysis--------
This is a basic-level analysis of video games sales data using MySQL. 
The purpose of this project is to extract insights from the video games database and 
answer various questions about the video game industry, such as the top-selling games, publishers, and genres, as well as trends over time.

-------Data Sources
The video games sales data was obtained from a MySQL database, which includes a table called "games_data". 
The table contains the following columns: Name, Platform, Year_of_Release, Genre, Publisher, NA_Sales, EU_Sales, JP_Sales, Other_Sales, Global_Sales, Critic_Score,
Critic_Count, User_Score, User_Count, Developer, and Rating.

-------Queries Used
The following SQL queries were used to extract insights from the database:

1)Find the average critic score, user score, and total sales for each publisher.

2)Find the average critic score, user score, and total sales for each genre by platform.

3)Find the top 10 best-selling games in North America, Europe, and Japan.

4)Find the top 10 most popular developers by the number of high-rated games (with a critic score above 80).

5)Find the total sales for each year and platform, sorted by year and platform.

6)Find the average user score for each genre, with a minimum of 100 user votes.

7)Find the top 10 highest-rated games with at least 500,000 global sales.

8)Find the number of games released for each platform in each year, sorted by platform and year.

9)Find the average critic score for each genre, with at least 50 critic reviews.

10)Find the number of games released each year.

11)Find the top 10 games with the highest user ratings.

-------Results
The results of the analysis are presented in the SQL files attached to this repository. 

-------How to Run the Queries
Download the Video_Games.csv file and import the database into your MySQL environment. Run the SQL queries located in the sql file "video_games_sales_analysis".

-------Conclusion
This basic-level analysis of video games sales data using MySQL has provided insights into the video game industry, 
such as the top-selling games, publishers, and genres, as well as trends over time. The results of the analysis can be used to inform future business decisions and 
strategies in the video game industry.

