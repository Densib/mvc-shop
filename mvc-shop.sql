-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 03 2022 г., 22:43
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mvc-shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `slug`) VALUES
(1, 0, 'computers'),
(2, 0, 'tablets'),
(3, 0, 'notebook'),
(4, 3, 'mac'),
(5, 3, 'windows'),
(6, 0, 'phone'),
(7, 0, 'camera');

-- --------------------------------------------------------

--
-- Структура таблицы `category_description`
--

CREATE TABLE `category_description` (
  `category_id` int UNSIGNED NOT NULL,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `category_description`
--

INSERT INTO `category_description` (`category_id`, `language_id`, `title`, `description`, `keywords`, `content`) VALUES
(1, 1, 'Компьютеры', NULL, NULL, '<p>Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей.</p>'),
(1, 2, 'Computers', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.</p>'),
(2, 1, 'Планшеты', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(2, 2, 'Tablets', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(3, 1, 'Ноутбуки', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(3, 2, 'Notebooks', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(4, 1, 'Mac', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(4, 2, 'Mac', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(5, 1, 'Windows', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(5, 2, 'Windows', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(6, 1, 'Телефоны', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(6, 2, 'Phones', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(7, 1, 'Камеры', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(7, 2, 'Cameras', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.');

-- --------------------------------------------------------

--
-- Структура таблицы `language`
--

CREATE TABLE `language` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(4) NOT NULL,
  `title` varchar(20) NOT NULL,
  `base` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `language`
--

INSERT INTO `language` (`id`, `code`, `title`, `base`) VALUES
(1, 'ru', 'Русский', 1),
(2, 'en', 'English', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `name`
--

CREATE TABLE `name` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `name`
--

INSERT INTO `name` (`id`, `name`) VALUES
(1, 'Иванов'),
(2, 'Петров'),
(3, 'Сидоров'),
(4, 'Васильев');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `old_price` double NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `hit` tinyint NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'uploads/no_image.jpg',
  `is_download` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `slug`, `price`, `old_price`, `status`, `hit`, `img`, `is_download`) VALUES
(1, 7, 'canon-eos-5d', 10, 12, 1, 1, 'uploads/no_image.jpg', 0),
(2, 4, 'apple-cinema-30', 20, 0, 1, 1, 'uploads/no_image.jpg', 0),
(3, 4, 'imac', 25, 0, 1, 1, 'uploads/no_image.jpg', 0),
(4, 6, 'iphone', 10, 0, 1, 1, 'uploads/no_image.jpg', 0),
(5, 5, 'cifrovoj-tovar', 5, 0, 1, 1, 'uploads/no_image.jpg', 1),
(6, 1, 'cifrovoj-tovar-2', 21, 0, 1, 0, 'uploads/no_image.jpg', 1),
(7, 1, 'kompyuter-2', 22, 0, 1, 0, 'uploads/no_image.jpg', 0),
(8, 1, 'kompyuter-3', 23, 0, 1, 0, 'uploads/no_image.jpg', 0),
(9, 1, 'kompyuter-4', 24, 0, 1, 0, 'uploads/no_image.jpg', 0),
(10, 1, 'kompyuter-5', 25, 0, 1, 0, 'uploads/no_image.jpg', 0),
(11, 1, 'kompyuter-6', 26, 0, 1, 0, 'uploads/no_image.jpg', 0),
(12, 1, 'kompyuter-7', 27, 0, 1, 0, 'uploads/no_image.jpg', 0),
(13, 1, 'kompyuter-8', 28, 0, 1, 0, 'uploads/no_image.jpg', 0),
(14, 1, 'kompyuter-9', 29, 0, 1, 0, 'uploads/no_image.jpg', 0),
(15, 1, 'kompyuter-10', 30, 0, 1, 0, 'uploads/no_image.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product_description`
--

CREATE TABLE `product_description` (
  `product_id` int UNSIGNED NOT NULL,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `exerpt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE `slider` (
  `id` int UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`id`, `img`) VALUES
(1, '/uploads/images/slider/1.jpg'),
(2, '/uploads/images/slider/2.jpg'),
(3, '/uploads/images/slider/3.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Индексы таблицы `category_description`
--
ALTER TABLE `category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`);

--
-- Индексы таблицы `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `name`
--
ALTER TABLE `name`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Индексы таблицы `product_description`
--
ALTER TABLE `product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`);

--
-- Индексы таблицы `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `language`
--
ALTER TABLE `language`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `name`
--
ALTER TABLE `name`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
