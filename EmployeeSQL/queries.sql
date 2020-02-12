-- Query 1
SELECT e.emp_no
      ,e.last_name
	  ,e.first_name
	  ,e.gender
	  ,s.salary
  FROM employee AS e
  INNER JOIN salary AS s
          ON e.emp_no = s.emp_no
ORDER BY emp_no;

-- Query 2
SELECT e.emp_no
      ,e.last_name
	  ,e.first_name
	  ,e.hire_date
  FROM employee AS e
 WHERE e.hire_date between '01/01/1986' and '12/31/1986';
 
 --Query 3
 SELECT d.dept_no
       ,d.dept_name
	   ,e.emp_no
	   ,e.last_name
	   ,e.first_name
	   ,dm.from_date AS start_date
	   ,dm.to_date AS end_date
   FROM dept_manager AS dm
   INNER JOIN department AS d
           ON dm.dept_no = d.dept_no
   INNER JOIN employee AS e
           ON dm.emp_no = e.emp_no;
		   
--Query 4
SELECT e.emp_no
      ,e.last_name
	  ,e.first_name
	  ,d.dept_name
  FROM dept_emp AS de
  INNER JOIN employee AS e
          ON de.emp_no = e.emp_no
  INNER JOIN department AS d
          ON de.dept_no = d.dept_no
 WHERE de.to_date = '01/01/9999'
ORDER BY e.emp_no;

-- Query 5
SELECT e.first_name
      ,e.last_name
  FROM employee AS e
 WHERE e.first_name = 'Hercules'
   AND e.last_name like 'B%'
ORDER BY e.last_name;

-- Query 6
SELECT e.emp_no
      ,e.last_name
	  ,e.first_name
	  ,d.dept_name
FROM dept_emp AS de
  INNER JOIN employee AS e
          ON de.emp_no = e.emp_no
  INNER JOIN department AS d
          ON de.dept_no = d.dept_no
 WHERE de.to_date = '01/01/9999'
   AND d.dept_name = 'Sales'
ORDER BY e.emp_no;

-- Query 7
SELECT e.emp_no
      ,e.last_name
	  ,e.first_name
	  ,d.dept_name
FROM dept_emp AS de
  INNER JOIN employee AS e
          ON de.emp_no = e.emp_no
  INNER JOIN department AS d
          ON de.dept_no = d.dept_no
 WHERE de.to_date = '01/01/9999'
   AND (d.dept_name = 'Sales'
    OR d.dept_name = 'Development')
ORDER BY e.emp_no;

-- Query 8
SELECT e.last_name
      ,COUNT(e.last_name) AS name_frequency
  FROM employee AS e
GROUP BY e.last_name
ORDER BY name_frequency DESC, e.last_name;
					   
	