-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 08 2020 г., 20:41
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bitlyapi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bitly`
--

CREATE TABLE `bitly` (
  `url_before` varchar(200) NOT NULL COMMENT 'Юрл до сжатия',
  `url_after` varchar(200) NOT NULL COMMENT 'Юрл после сжатия',
  `unix_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bitly`
--

INSERT INTO `bitly` (`url_before`, `url_after`, `unix_timestamp`) VALUES
('https://www.google.com/search?q=Yii&oq=Yii&aqs=chrome..69i57j69i60&sourceid=chrome&ie=UTF-8', 'https://bit.ly/2xKPqYB', '2020-05-08 17:30:02'),
('https://www.google.com/search?q=Yii&oq=Yii&aqs=chrome..69i57j69i60&sourceid=chrome&ie=UTF-8', 'https://bit.ly/2xKPqYB', '2020-05-08 17:30:09'),
('https://bit.ly/3ftKrww', 'https://google.com/pass', '2020-05-08 17:30:57');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
