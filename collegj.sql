-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 10 2021 г., 10:30
-- Версия сервера: 10.3.16-MariaDB
-- Версия PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `collegj`
--

-- --------------------------------------------------------

--
-- Структура таблицы `colledg`
--
-- Структура чтения ошибок для таблицы collegj.colledg: #1932 - Table 'collegj.colledg' doesn't exist in engine
-- Ошибка считывания данных таблицы collegj.colledg: #1064 - У вас ошибка в запросе. Изучите документацию по используемой версии MariaDB на предмет корректного синтаксиса около 'FROM `collegj`.`colledg`' на строке 1

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `group_id`, `title`, `text`) VALUES
(1, 1, 'test1', 'testt1'),
(2, 1, 'test1', 'testt1'),
(3, 1, 'test1', 'testt1'),
(4, 1, 'test1', 'testt1'),
(5, 1, 'test1', 'testt1'),
(6, 1, 'test1', 'testt1'),
(7, 1, 'test1', 'testt1'),
(8, 1, 'test1', 'testt1'),
(9, 1, 'test1', 'testt1'),
(10, 2, 'test2', 'testt2'),
(11, 2, 'test2', 'testt2'),
(12, 2, 'test2', 'testt2'),
(13, 2, 'test2', 'testt2'),
(14, 2, 'test2', 'testt2'),
(15, 2, 'test2', 'testt2'),
(16, 2, 'test2', 'testt2'),
(17, 2, 'test2', 'testt2'),
(18, 2, 'test2', 'testt2'),
(19, 2, 'test2', 'testt2'),
(20, 3, 'test3', 'testt3'),
(21, 3, 'test3', 'testt3'),
(22, 3, 'test3', 'testt3'),
(23, 3, 'test3', 'testt3'),
(24, 3, 'test3', 'testt3'),
(25, 3, 'test3', 'testt3'),
(26, 3, 'test3', 'testt3'),
(27, 3, 'test3', 'testt3'),
(28, 3, 'test3', 'testt3'),
(29, 3, 'test3', 'testt3'),
(30, 2, 'test2', 'testt2'),
(31, 3, 'test3', 'testt3'),
(32, 1, 'test1', 'testt1'),
(33, 3, 'test3', 'testt3'),
(34, 4, 'test4', 'testt4');

-- --------------------------------------------------------

--
-- Структура таблицы `subject_group`
--

CREATE TABLE `subject_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `subject_group`
--

INSERT INTO `subject_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 6),
(3, 2, 1),
(4, 1, 3),
(5, 4, 8),
(6, 20, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subject_group`
--
ALTER TABLE `subject_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `subject_group`
--
ALTER TABLE `subject_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
