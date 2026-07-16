--Netflix Project 
CREATE TABLE netflix

	(show_id VARCHAR(6),
	type  VARCHAR(10),
	title  VARCHAR(150),
	director VARCHAR(208),
	casts  VARCHAR(1000),
	country  VARCHAR(150),
	date_added VARCHAR(50),
	release_year INT,
	rating VARCHAR(10),
	duration VARCHAR(15),
	listed_in VARCHAR(25),
	description VARCHAR(250)
	);
	


-- 15 Business Problems

--1. Count the number of movies and TV shows 

SELECT 
type,
count(*) as total_content 
from netflix
group by type


--2. Find the most common rating for movies and TV Shows
		
		
Select 
type,
rating
from 
(SELECT 
		type,
		rating,
		count(*),
		RANK() OVER(Partition by  type ORDER BY count(*) DESC) as ranking 
		from netflix
		group by 1,2)
		as t1 
		where ranking = 1



--3. List all the movies in a specific year (e.g : 2020)

SELECT * FROM
netflix
where 
type = 'Movie'
and release_year = 2020


--4. List the top 5 countries with the most content on netflix
SELECT 
UNNEST(STRING_TO_ARRAY(country,',')) as new_country,
count(show_id) as total_content 
from netflix
group by 1
order by 2 desc
limit 5 


--5. Identify the longest movie ?

SELECT * FROM netflix
where 
type = 'Movie'
and
duration = (select max(duration) from netflix)


--6. Find content addded in last 5 years.

select * from netflix
where 
TO_DATE(date_added, 'MONTH, DD, YYYY') >= Current_date - Interval '5 years'


--7. Find all the movies/TV Shows by director "Rajiv Chilaka"

SELECT * from netflix
where director like '%Rajiv Chilaka%'

-- 8. List all TV Shows with more than 5 sessions
SELECT *
    FROM netflix
  where 
  type = 'TV Show'
  and 
  SPLIT_PART(duration, ' ', 1)::numeric > 5


--9. Count the number of content items in each genre 

SELECT 
UNNEST(STRING_TO_ARRAY(listed_in, ',')) as genre,
count(show_id)  as total_content
from netflix
group by 1

--10.Find each year and the average number of content releases by India on Netflix.Return to top 5 years with highest
--avg content release
SELECT 
EXTRACT( YEAR FROM TO_DATE(date_added , 'Month, DD, YYYY')) as year,
count(*) as yearly_content,
ROUND(count(*)::numeric/ (select  count(*) from netflix where country ='India' )::numeric * 100 ,2) as Avg_content 
 FROM netflix
where country = 'India'
GROUP BY 1


--11. List all the movies that are Documentaries

 SELECT * from netflix
 where 
 listed_in ILIKE '%documentaries%'


 --12. Find all the content without Director 

 SELECT * FROM netflix
 where director is null


--13. Find how many movies actor 'Salman Khan' appeared in last 10 years 

SELECT * FROM netflix
where 
casts ILIKE '%Salman Khan%'
and 
release_year > Extract (YEAR FROM CURRENT_DATE) - 12

--14. Find the top 10 * Factors who have appeared in the highest no: of movies produced in India

	SELECT 
	unnest(STRING_TO_ARRAY(casts, ',')) as actors,
	COUNT(*) as total_content 
	from netflix
	where country ILIKE '%India%'
	group by 1
	order by total_content desc
	limit 10
	
--15. Categorize the content based on the presence of the keywords 'kill' and 'voilence' in the 
--description field. Label content containing these keywords as 'Bad' and all other
--content as 'Good'. count how many times  items fall into each category.


  with new_table AS (
SELECT *,

CASE 
when description ILIKE '%KILL%' or
 description ILIKE '%violence%' then 'Bad_content'
 ELSE 'Good_content'
 end as category 

FROM netflix)
select 
category,
count(*) as total_content
from new_table
group by 1


