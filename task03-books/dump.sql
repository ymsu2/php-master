-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Янв 23 2022 г., 16:40
-- Версия сервера: 5.7.12
-- Версия PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
--
-- База данных: `db_books`
--
CREATE DATABASE IF NOT EXISTS `db_books` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_books`;

-- --------------------------------------------------------

--
-- Структура таблицы `autor`
--

DROP TABLE IF EXISTS `autor`;
CREATE TABLE IF NOT EXISTS `autor` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Ноиер записи (служебное поле)',
  `autor_name` varchar(15) NOT NULL DEFAULT '' COMMENT 'имя автора',
  `autor_fio` varchar(15) NOT NULL DEFAULT '' COMMENT 'Фамилия автора',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `autor`
--

INSERT INTO `autor` (`id`, `autor_name`, `autor_fio`) VALUES
(1, 'Иван', 'Петров'),
(2, 'Павел', 'Иванов'),
(3, 'Степан', 'Ефремов'),
(4, 'Сергей', 'Синицин'),
(5, 'Александр', 'Жуков');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

-- Книги: ISBN, aвторы, название, количество страниц, жанр, дата публикации
-- Авторы: Имя, Фамилия

-- ISBN – Interna-tional Standart Book Number – это «уникальный "паспортный" номер издания
-- Индивидуальный код состоит из 13 цифр плюс разделительные знаки. Формируется он следующим образом:
-- пример ISBN:  978-3-16-148410-0
-- где:
-- 978 — префикс EAN.UCC;
-- 3 — номер регистрационной группы;
-- 16 — номер регистранта;
-- 148410 — номер издания;
-- 0 — контрольная цифра.

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(5) NOT NULL COMMENT 'Ноиер записи (служебное поле)',
  `isbn` varchar(17) NOT NULL DEFAULT '978-5-00-000000-0' COMMENT 'ISBN',
  `autor_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID автора',
  `book_name` varchar(100) NOT NULL DEFAULT '' COMMENT 'Название книги',
  `kol_pages` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'количество страниц',
  `genre` varchar(30) NOT NULL DEFAULT '' COMMENT 'Жанр',
  `pubdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'дата публикации',
  PRIMARY KEY (`id`),
  KEY `autor_id` (`autor_id`),
  KEY `genre` (`genre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `isbn`, `autor_id`, `book_name`, `kol_pages`, `genre`, `pubdate`) VALUES
(1, '978-5-10-100560-8', 1, 'Путешествие в бездну', 2000, 'Фантастика', '2022-01-20 11:48:51'),
(2, '978-5-00-000011-1', 2, 'История древнего Рима', 4000, 'История', '2022-01-21 11:52:51'),
(3, '978-5-00-004400-1', 5, 'Полет к звездам', 5600, 'Фантастика', '2022-01-23 11:54:26'),
(4, '978-5-00-034560-6', 5, 'На пути к искусственному интеллекту', 4500, 'Наука', '2022-01-19 11:54:26'),
(5, '978-5-00-004550-7', 1, 'Марсианская экспедиция', 3700, 'Фантастика', '2022-01-22 12:17:27'),
(6, '978-5-00-004560-3', 4, 'Хроника одного преступления', 1378, 'Детектив', '2022-01-17 12:17:27'),
(0, '978-5-00-034560-6', 5, 'На пути к искусственному интеллекту', 4500, 'Фантастика', '2022-01-19 14:08:29'),
(7, '978-5-00-056789-0', 5, 'Сквозь пространство и время', 1700, 'Фантастика', '2022-01-11 14:22:07'),
(8, '978-5-00-056789-0', 3, 'Сквозь пространство и время', 1700, 'Детектив', '2022-01-20 14:46:30');
COMMIT;
-- --------------------------------------------------------
