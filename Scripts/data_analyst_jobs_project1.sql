--1.How many rows are in the data_analyst_jobs table?--

--SELECT * 
--FROM public.data_analyst_jobs

--There are 1793 Rows.--
--2. Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?--

--SELECT *
--FROM public.data_analyst_jobs
--LIMIT 10;

--ExxonMobil

--3.How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?--

--SELECT *
--FROM public.data_analyst_jobs
--WHERE location='TN';

--Total posting in TN is 21.--
--SELECT *
--FROM public.data_analyst_jobs
--WHERE location='TN'OR location='KY';
--Total posting in TN is 27.--

--4.How many postings in Tennessee have a star rating above 4?--

--SELECT *
--FROM public.data_analyst_jobs
--WHERE location='TN' AND star_rating >'4'

--There are 3 total postings in Tennessee that have a star rating above 4.--

--5.How many postings in the dataset have a review count between 500 and 1000?--

--SELECT *
--FROM public.data_analyst_jobs
--WHERE review_count>=500 AND review_count<1000;
--SELECT *
--FROM public.data_analyst_jobs
--WHERE review_count BETWEEN 
--500 AND 1000;

--There are 151 total postings with a review count between 500 and 1000.--

--6.Show the average star rating for companies in each state. The output should show the state as state and the average rating for the state as avg_rating. Which state shows the highest average rating?--

--SELECT location, AVG(star_rating) AS avg_rating
--FROM public.data_analyst_jobs
--WHERE star_rating IS NOT NULL
--GROUP BY location
--ORDER BY avg_rating DESC;

--The state that has the highest average rating is NE.--

--7.Select unique job titles from the data_analyst_jobs table. How many are there?--

 --SELECT DISTINCT title
 --FROM public.data_analyst_jobs

 --Total unique job titles are 881.--

 --8. How many unique job titles are there for California companies?--
--SELECT DISTINCT title
--FROM public.data_analyst_jobs
--WHERE location='CA';

--There are 230 total job titles for California companies.--

--9. Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?

--SELECT company, AVG(star_rating) 
--FROM public.data_analyst_jobs
--WHERE review_count >5000
--GROUP BY company;

--There are 41 companies with more than 5000 reviews across locations.--

--10.Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?

--SELECT company, AVG(star_rating) AS avg_rating
--FROM public.data_analyst_jobs
--WHERE review_count >5000
--GROUP BY company 
--ORDER BY avg_rating DESC;

--General Motors is the company that has more than 5000 reviews across all locations with the highest star rating of 4.19.

--11.Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?

--SELECT title
--FROM public.data_analyst_jobs
--WHERE title LIKE '%Analyst%'

--The are 1636 job titles with the word 'Analyst'

--12. How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?
 
--SELECT title
--FROM public.data_analyst_jobs
--WHERE title NOT LIKE '%Analyst%' 
--AND title NOT LIKE '%Analytics%' 
--AND title NOT LIKE '%ANALYST%'
--AND title NOT LIKE '%ANALYTICS%'
--AND title NOT LIKE '%analyst%'
--AND title NOT LIKE '%analytics%';

--There are 4 different job titles that does not contain either the word 'Analyst' or 'Analytics'

--SELECT skill,domain, days_since_posting
--FROM public.data_analyst_jobs
--WHERE days_since_posting > '21' 
--AND skill='SQL';

--15 job titles.--

SELECT skill,domain, days_since_posting
FROM public.data_analyst_jobs
WHERE days_since_posting > '21' 
AND skill='SQL'
AND domain IS NOT NULL;

--11 job titles--

SELECT skill,domain, days_since_posting
FROM public.data_analyst_jobs
WHERE days_since_posting > '21' 
AND skill='SQL'
AND domain IS NOT NULL
ORDER BY days_since_posting DESC;

-ALL ARE TIED AT 30 EXCEPT FOR 1--
TOP 3 Consulting and Business Services 



