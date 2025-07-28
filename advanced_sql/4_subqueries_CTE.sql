/*
Look at companies that don’t require a degree 
- Degree requirements are in the job_posting_fact table
- Use subquery to filter this in the company_dim table for company_names
- Order by the company name alphabetically
*/

SELECT
    company_id,
    name AS company_name
FROM
    company_dim
WHERE company_id IN (
        SELECT
                company_id
        FROM
                job_postings_fact
        WHERE
                job_no_degree_mention = TRUE
        ORDER BY
                company_id
    )