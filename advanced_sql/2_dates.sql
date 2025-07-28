SELECT
    job_title_short,
    job_location,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_time
FROM
    job_posted_fact;

SELECT
    job_title_short,
    job_location,
    EXTRACT(MONTH FROM job_posted_date) AS date_month,
    EXTRACT(YEAR FROM job_posted_date) AS date_year
FROM
    job_posted_fact;

SELECT
    COUNT(job_id) AS job_posted_count,
    EXTRACT(MONTH FROM job_posted_date) AS month,
FROM
    job_posted_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    month
ORDER BY
    job_posted_count DESC;