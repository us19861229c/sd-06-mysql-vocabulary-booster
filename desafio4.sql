SELECT j.JOB_TITLE Cargo,
ROUND(AVG(e.SALARY), 2) 'Média salarial',
CASE
WHEN AVG(e.SALARY) >= 2000 AND AVG(e.SALARY) <= 5800 THEN 'Júnior'
WHEN AVG(e.SALARY) >= 5801 AND AVG(e.SALARY) <= 7500 THEN 'Pleno'
WHEN AVG(e.SALARY) >= 7501 AND AVG(e.SALARY) <= 10500 THEN 'Sênior'
ELSE 'CEO'
END 'Senioridade'
FROM hr.jobs j
INNER JOIN hr.employees e
ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY AVG(e.SALARY) ASC, j.JOB_TITLE ASC;    
