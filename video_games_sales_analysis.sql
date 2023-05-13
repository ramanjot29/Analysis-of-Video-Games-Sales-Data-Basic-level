create database video_games;
select * from games_data;

/*--1)Find the average critic score, user score, and total sales for each publisher:--*/

select publisher, round(avg(critic_score),0) AVG_CRITIC_SCORE,
round(avg(user_score),0) AVG_USER_SCORE,
round(sum(Global_sales),4) TOTAL_SALES from games_data
group by publisher order by TOTAL_SALES DESC;

/*--2)Find the average critic score, user score, and total sales for each genre by platform--*/

select platform,genre, round(avg(critic_score),4) AVG_CRITIC_SCORE,
round(avg(user_score),4) AVG_USER_SCORE,
round(sum(Global_sales),4) TOTAL_SALES from games_data
group by platform,genre order by platform asc,TOTAL_SALES DESC;

/*--3)Find the top 10 best-selling games in North America, Europe, and Japan.--*/

select name,na_sales from games_data order by na_sales desc limit 10;
select name,eu_sales from games_data order by eu_sales desc limit 10;
select name,jp_sales from games_data order by jp_sales desc limit 10;


/*--4)Find the top 10 most popular developers by the number of high-rated games (with a critic score above 80):--*/

select developer,count(*) as TOTAL_HIGH_RATED_GAMES from games_data
where critic_score>80 group by developer order by TOTAL_HIGH_RATED_GAMES desc limit 10;

/*--5)Find the total sales for each year and platform, sorted by year and platform.--*/

select Year_of_Release, Platform, SUM(Global_Sales) AS TotalSales from  games_data
group by year_of_release,platform ORDER BY Year_of_Release ASC, Platform ASC ;


/*--6)Find the average user score for each genre, with a minimum of 100 user votes:--*/

select genre,AVG(user_score) as USER_SCORE from games_data
where user_count>=100
group by genre order by USER_SCORE;

/*--7)Find the top 10 highest-rated games with at least 500,000 global sales:--*/

select name,global_sales,critic_score,user_score from games_data
where global_sales>=5 order by critic_score desc,user_score desc limit 10;

/*--8)Find the number of games released for each platform in each year, sorted by platform and year--*/

select year_of_release,platform,count(*) Total_games from games_data
group by year_of_release,platform order by year_of_release asc,platform asc;


/*--9)Find the average critic score for each genre, with at least 50 critic reviews--*/

select genre,avg(critic_score) as AVG_CRITIC_SCORE from games_data
where critic_count>=50 group by genre order by AVG_CRITIC_SCORE asc;

/*--10)Find the number of games released each year--*/

select year_of_release,count(*) TOTAL_GAMES from games_data
group by year_of_release ;

/*--11)Find the top 10 games with the highest user ratings:--*/

select name,user_score from games_data
where user_score<>'tbd' order by user_score desc limit 10;
