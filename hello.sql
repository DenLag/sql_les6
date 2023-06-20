SELECT HOUR(now());

DELIMITER //

CREATE FUNCTION hello()
RETURNS TINYTEXT DETERMINISTIC
BEGIN
	DECLARE time_now INT;
	SET time_now = HOUR(NOW());
	CASE
		WHEN time_now BETWEEN 6 AND 12 THEN
			RETURN "Доброе утро";
		WHEN time_now BETWEEN 12 AND 18 THEN
			RETURN "Добрый день";
		WHEN time_now BETWEEN 18 AND 0 THEN
			RETURN "Добрый вечер";
		WHEN time_now BETWEEN 0 AND 6 THEN
			RETURN "Доброй ночи";
	END CASE;
END//
SELECT hello()

