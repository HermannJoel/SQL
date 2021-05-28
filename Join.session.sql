---1.INNER JOIN---
SELECT 
	a.emp_no,
	CONCAT(a.first_name, ' ', a.last_name) AS "Name",
	b.salary,
	c.title,
	c.from_date AS "Promoted on"
FROM employees AS a
INNER JOIN salaries AS b ON a.emp_no = b.emp_no ----joining emplyees to salaries
INNER JOIN titles AS c 
ON c.emp_no = a.emp_no
	AND (c.from_date = (b.from_date + INTERVAL '2 days') OR 
	c.from_date = b.from_date
		)
ORDER BY a.emp_no ASC;