USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job_position VARCHAR(30))
BEGIN
SELECT ROUND(AVG(E.SALARY), 2) AS `Média salarial`
FROM hr.employees AS E
JOIN hr.jobs AS J ON E.JOB_ID = J.JOB_ID
GROUP BY J.JOB_TITLE
HAVING J.JOB_TITLE = job_position;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
