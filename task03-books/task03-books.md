## Дамп базы данных в файле dump.sql
1. примеры SQL-скриптов с тестовым набором данных:
SELECT * FROM `books` WHERE `kol_pages` > 3000 ORDER BY `kol_pages` DESC
SELECT * FROM `books` WHERE `autor_id` = 3
SELECT * FROM `autor` ORDER BY `autor_fio`, `autor_name`

2. отдельный SQL-скрипт который выводит название книги и ее авторов для жанра “Фантастика”:
SELECT * FROM `books` LEFT JOIN `autor` on autor_id = autor.id WHERE `genre`= "Фантастика" 

3. отдельный SQL-скрипт который выводит автора, который написал больше всего книг:
SELECT `autor_name`, `autor_fio` , count(*) AS "Number_of_books" FROM `autor` JOIN books ON autor.id = books.autor_id GROUP BY `autor_name`, `autor_fio` LIMIT 1

