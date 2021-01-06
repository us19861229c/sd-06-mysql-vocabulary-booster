SELECT JOB_TITLE AS Cargo,
ROUND(MAX_SALARY - MIN_SALARY, 2) AS `Variaçâo Salarial`,
ROUND(MIN_SALARY/12, 2) AS `Média mínima mensal`,
ROUND(MAX_SALARY/12, 2) AS `Média máxima mensal`
FROM hr.jobs
ORDER BY `Variaçâo Salarial`, Cargo;
