-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июн 07 2016 г., 14:45
-- Версия сервера: 10.1.10-MariaDB
-- Версия PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mvc_app`
--

-- --------------------------------------------------------

--
-- Структура таблицы `author`
--

CREATE TABLE `author` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `author`
--

INSERT INTO `author` (`id`, `name`) VALUES
(1, 'Adam Kelly'),
(2, 'Laura Willis'),
(3, 'Kenneth Smith'),
(4, 'Bruce Hunter'),
(5, 'Joyce Chapman'),
(6, 'Jennifer Freeman'),
(7, 'Gerald Medina'),
(8, 'Jennifer Washington'),
(9, 'Ruth Hernandez'),
(10, 'Jimmy Wallace'),
(11, 'Jonathan Lawrence'),
(12, 'Marie Chapman'),
(13, 'Joe Roberts'),
(14, 'Todd Lawrence'),
(15, 'Theresa Graham'),
(16, 'Janice White'),
(17, 'William Wallace'),
(18, 'Jonathan Wright'),
(19, 'Justin Sanchez'),
(20, 'Timothy Williams'),
(21, 'Joshua Evans'),
(22, 'Emily Hayes'),
(23, 'Patrick Andrews'),
(24, 'James Dixon'),
(25, 'Sandra Stephens'),
(26, 'Nicole Boyd'),
(27, 'Heather Williamson'),
(28, 'Mark Mcdonald'),
(29, 'Martin Carr'),
(30, 'Annie Stewart');

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text,
  `price` decimal(10,2) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `style_id` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`id`, `title`, `description`, `price`, `status`, `style_id`) VALUES
(1, 'Dracula', 'Very scary book Very scary book Very scary book Very scary book Very scary book Very scary book Very scary book Very scary book Very scary book Very scary book ', '12121212.12', 1, 4),
(2, 'sapien varius ut blandit non interdum in ante vestibulum ante', 'dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent', '419.86', 1, 3),
(3, 'nulla quisque arcu libero rutrum ac lobortis vel', 'faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas', '350.10', 1, 4),
(4, 'vivamus in felis eu sapien cursus vestibulum proin eu mi', 'venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat', '423.09', 1, 8),
(5, 'turpis eget elit sodales scelerisque mauris', NULL, '401.93', 1, 7),
(6, 'nibh in lectus pellentesque at nulla suspendisse potenti', 'vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', '160.18', 1, 2),
(7, 'ultrices erat tortor sollicitudin mi', 'a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit', '939.43', 0, 5),
(8, 'eget nunc donec quis orci eget orci vehicula condimentum', 'pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien', '272.78', 0, 9),
(9, 'nam ultrices libero non mattis pulvinar nulla', 'interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi', '647.36', 1, 9),
(10, 'enim in tempor turpis nec euismod scelerisque quam', 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus', '402.80', 0, 6),
(11, 'felis sed interdum venenatis turpis enim blandit mi in', 'nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', '624.54', 1, 2),
(12, 'interdum in ante vestibulum ante ipsum primis in faucibus', 'cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin', '177.03', 1, 1),
(13, 'ut mauris eget massa tempor convallis nulla neque libero', 'nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit', '479.00', 0, 6),
(14, 'turpis elementum ligula vehicula consequat morbi a ipsum integer', 'pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam', '981.42', 1, 9),
(15, 'arcu adipiscing molestie hendrerit at vulputate vitae', 'vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in', '327.79', 1, 4),
(16, 'ultrices posuere cubilia curae mauris viverra diam vitae quam', 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet', '388.90', 0, 2),
(17, 'congue etiam justo etiam pretium iaculis', 'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec', '114.72', 0, 9),
(18, 'proin interdum mauris non ligula pellentesque ultrices phasellus id sapien', NULL, '582.16', 1, 9),
(19, 'lacus at velit vivamus vel nulla eget eros elementum pellentesque', 'donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo', '477.37', 1, 6),
(20, 'at nulla suspendisse potenti cras in purus eu', 'felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in', '963.85', 0, 1),
(21, 'est phasellus sit amet erat nulla tempus', 'cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', '184.81', 1, 6),
(22, 'cubilia curae nulla dapibus dolor vel est donec odio', 'in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices', '310.64', 0, 6),
(23, 'lacinia aenean sit amet justo morbi', 'eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo', '369.69', 1, 3),
(24, 'pharetra magna vestibulum aliquet ultrices erat tortor', 'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio', '964.85', 1, 6),
(25, 'porttitor lorem id ligula suspendisse ornare consequat lectus in est', NULL, '997.06', 1, 8),
(26, 'nullam porttitor lacus at turpis', 'lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse', '372.78', 1, 10),
(27, 'viverra diam vitae quam suspendisse', 'consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis', '706.43', 1, 8),
(28, 'magna ac consequat metus sapien ut nunc vestibulum', 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris', '864.00', 0, 7),
(29, 'nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue', 'nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis', '174.15', 1, 2),
(30, 'duis at velit eu est congue elementum in hac', 'justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi', '733.01', 0, 8),
(31, 'vel augue vestibulum ante ipsum primis in faucibus orci', NULL, '670.47', 0, 3),
(32, 'volutpat in congue etiam justo etiam', 'nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum', '979.60', 0, 1),
(33, 'leo pellentesque ultrices mattis odio donec vitae', 'augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate', '765.13', 0, 2),
(34, 'lorem quisque ut erat curabitur gravida', 'integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et', '327.52', 1, 9),
(35, 'dui proin leo odio porttitor id consequat', 'lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque', '575.62', 1, 5),
(36, 'lectus vestibulum quam sapien varius ut blandit non', 'vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet', '577.07', 1, 9),
(37, 'sapien varius ut blandit non interdum in ante', 'lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum', '373.98', 1, 1),
(38, 'tincidunt nulla mollis molestie lorem quisque', 'at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla', '782.61', 1, 4),
(39, 'integer tincidunt ante vel ipsum praesent blandit lacinia erat', 'in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut', '875.60', 1, 5),
(40, 'sapien ut nunc vestibulum ante ipsum primis', 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede', '355.37', 0, 3),
(41, 'aliquet maecenas leo odio condimentum id luctus nec molestie', NULL, '660.15', 1, 9),
(42, 'in leo maecenas pulvinar lobortis est', 'pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus', '139.19', 1, 7),
(43, 'quisque erat eros viverra eget congue eget semper rutrum', 'sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi', '337.63', 0, 4),
(44, 'sit amet justo morbi ut', 'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce', '611.61', 1, 10),
(45, 'neque duis bibendum morbi non quam nec dui', 'justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl', '241.55', 0, 7),
(46, 'pharetra magna ac consequat metus', 'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam', '362.54', 0, 2),
(47, 'dui nec nisi volutpat eleifend donec', 'quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a', '259.54', 1, 1),
(48, 'tortor sollicitudin mi sit amet', 'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in', '863.47', 0, 7),
(49, 'habitasse platea dictumst etiam faucibus cursus', 'tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus', '344.55', 0, 2),
(50, 'nisl nunc rhoncus dui vel sem sed', NULL, '511.58', 0, 9),
(51, 'non lectus aliquam sit amet diam in', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo', '747.05', 0, 7),
(52, 'vulputate elementum nullam varius nulla', 'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer', '195.05', 1, 6),
(53, 'sapien cum sociis natoque penatibus et', 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum', '968.59', 0, 7),
(54, 'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam', 'volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in', '745.78', 1, 7),
(55, 'libero nam dui proin leo odio porttitor id consequat in', 'convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh', '142.65', 0, 1),
(56, 'proin at turpis a pede posuere nonummy integer non', NULL, '640.17', 0, 5),
(57, 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet', 'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', '931.59', 0, 9),
(58, 'id pretium iaculis diam erat fermentum justo nec', 'turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu', '740.39', 0, 1),
(59, 'posuere nonummy integer non velit donec diam neque vestibulum eget', 'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus', '508.69', 0, 7),
(60, 'ut rhoncus aliquet pulvinar sed', 'mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum', '379.84', 1, 10),
(61, 'nibh quisque id justo sit amet sapien', NULL, '772.39', 0, 9),
(62, 'tempus semper est quam pharetra', 'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce', '705.34', 0, 4),
(63, 'tincidunt eget tempus vel pede morbi porttitor lorem', 'parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim', '969.59', 0, 1),
(64, 'in faucibus orci luctus et ultrices posuere cubilia', 'aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus', '442.61', 1, 10),
(65, 'velit eu est congue elementum in', 'vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla', '362.62', 1, 10),
(66, 'suscipit nulla elit ac nulla sed vel enim sit', 'erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices', '602.40', 1, 5),
(67, 'leo rhoncus sed vestibulum sit', 'quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget', '207.77', 1, 7),
(68, 'praesent lectus vestibulum quam sapien varius ut blandit non interdum', 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse', '765.14', 0, 9),
(69, 'duis bibendum felis sed interdum venenatis turpis', NULL, '247.68', 1, 3),
(70, 'lacus morbi quis tortor id nulla', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non', '136.47', 0, 8),
(71, 'aenean auctor gravida sem praesent id', 'consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue', '277.14', 1, 10),
(72, 'ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel', 'habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed', '192.29', 0, 3),
(73, 'eget eleifend luctus ultricies eu nibh quisque id justo sit', 'morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi', '781.53', 0, 7),
(74, 'id lobortis convallis tortor risus dapibus augue vel', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id', '626.88', 1, 2),
(75, 'ante ipsum primis in faucibus orci luctus et ultrices', 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra', '831.01', 1, 7),
(76, 'magna bibendum imperdiet nullam orci', 'donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales', '200.00', 0, 2),
(77, 'feugiat et eros vestibulum ac est lacinia nisi', 'duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis', '517.70', 0, 4),
(78, 'nonummy integer non velit donec diam', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque', '614.38', 1, 5),
(79, 'faucibus cursus urna ut tellus nulla ut erat id', 'morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus', '779.00', 0, 2),
(80, 'eu interdum eu tincidunt in leo maecenas pulvinar lobortis est', 'nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing', '985.19', 0, 5),
(81, 'nulla mollis molestie lorem quisque', 'volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy', '809.16', 0, 9),
(82, 'et tempus semper est quam', 'lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis', '857.14', 1, 6),
(83, 'duis bibendum felis sed interdum venenatis turpis enim', 'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et', '397.80', 1, 4),
(84, 'tristique in tempus sit amet sem', 'augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat', '147.53', 1, 9),
(85, 'ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit', 'lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus', '898.37', 0, 3),
(86, 'lacus at velit vivamus vel nulla', 'suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam', '887.75', 0, 8),
(87, 'tempor turpis nec euismod scelerisque quam turpis adipiscing lorem', 'integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor', '357.22', 0, 10),
(88, 'dui maecenas tristique est et tempus semper est quam pharetra', 'quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis', '903.58', 0, 5),
(89, 'eu mi nulla ac enim in', 'quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi', '935.71', 1, 3),
(90, 'faucibus orci luctus et ultrices', 'gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat', '319.91', 0, 1),
(91, 'felis donec semper sapien a libero nam dui proin leo', 'eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a', '863.79', 1, 5),
(92, 'felis fusce posuere felis sed lacus morbi sem', 'pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat', '868.03', 0, 9),
(93, 'amet consectetuer adipiscing elit proin', 'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat', '502.86', 1, 10),
(94, 'dolor quis odio consequat varius integer ac leo', 'aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in', '553.10', 1, 4),
(95, 'in porttitor pede justo eu massa donec dapibus', 'etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit', '753.29', 0, 7),
(96, 'sed vel enim sit amet nunc viverra dapibus nulla suscipit', 'id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget', '347.58', 1, 4),
(97, 'turpis a pede posuere nonummy', 'aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero', '699.01', 1, 5),
(98, 'nam ultrices libero non mattis pulvinar nulla pede', 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis', '390.78', 1, 4),
(99, 'vel enim sit amet nunc viverra', 'luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin', '858.70', 1, 3),
(100, 'risus dapibus augue vel accumsan tellus nisi eu orci', 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean', '285.59', 1, 1),
(101, 'enim in tempor turpis nec', 'in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi', '139.80', 0, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `book_author`
--

CREATE TABLE `book_author` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book_author`
--

INSERT INTO `book_author` (`id`, `book_id`, `author_id`) VALUES
(86, 1, 5),
(37, 1, 8),
(386, 1, 10),
(214, 1, 20),
(287, 2, 4),
(366, 2, 6),
(141, 2, 8),
(400, 2, 12),
(390, 3, 3),
(97, 3, 20),
(256, 3, 23),
(384, 3, 30),
(261, 4, 3),
(49, 4, 12),
(376, 4, 13),
(398, 4, 13),
(29, 4, 27),
(292, 5, 3),
(479, 5, 15),
(289, 5, 18),
(19, 5, 20),
(299, 6, 10),
(55, 6, 15),
(348, 7, 10),
(426, 7, 12),
(494, 7, 18),
(125, 7, 26),
(72, 7, 29),
(22, 7, 30),
(413, 8, 4),
(63, 8, 5),
(81, 8, 5),
(324, 8, 11),
(288, 8, 16),
(408, 9, 15),
(20, 9, 16),
(232, 9, 22),
(199, 9, 27),
(15, 9, 29),
(206, 10, 2),
(203, 10, 6),
(301, 10, 6),
(318, 10, 13),
(449, 10, 20),
(128, 10, 23),
(103, 10, 24),
(187, 10, 26),
(237, 10, 28),
(311, 11, 10),
(184, 11, 13),
(104, 11, 20),
(213, 11, 25),
(94, 12, 14),
(73, 12, 28),
(114, 13, 4),
(33, 13, 10),
(434, 13, 13),
(320, 13, 14),
(137, 13, 16),
(392, 13, 18),
(9, 13, 29),
(163, 13, 30),
(38, 14, 3),
(92, 14, 17),
(368, 14, 18),
(439, 15, 2),
(477, 15, 6),
(208, 15, 7),
(245, 15, 7),
(425, 15, 8),
(252, 15, 10),
(432, 15, 14),
(306, 15, 17),
(393, 15, 17),
(484, 15, 30),
(240, 16, 2),
(459, 16, 2),
(68, 16, 6),
(133, 16, 10),
(416, 16, 14),
(271, 16, 22),
(6, 17, 1),
(129, 17, 8),
(224, 17, 8),
(200, 17, 9),
(80, 17, 12),
(132, 17, 12),
(148, 17, 21),
(349, 17, 27),
(338, 18, 13),
(130, 18, 21),
(405, 18, 22),
(120, 18, 25),
(466, 19, 1),
(443, 19, 4),
(317, 19, 16),
(111, 19, 30),
(362, 19, 30),
(96, 20, 8),
(112, 20, 8),
(70, 20, 11),
(14, 20, 12),
(83, 20, 12),
(491, 20, 17),
(431, 21, 5),
(66, 21, 7),
(12, 21, 17),
(396, 21, 24),
(352, 22, 18),
(342, 22, 25),
(139, 22, 29),
(126, 23, 6),
(212, 23, 7),
(165, 23, 8),
(67, 24, 3),
(124, 24, 5),
(365, 24, 5),
(274, 24, 6),
(435, 25, 1),
(121, 25, 5),
(243, 26, 4),
(46, 26, 13),
(242, 26, 15),
(82, 26, 17),
(438, 26, 18),
(64, 27, 6),
(268, 27, 13),
(207, 27, 16),
(107, 28, 10),
(364, 29, 4),
(56, 29, 13),
(193, 29, 15),
(370, 29, 23),
(470, 29, 29),
(178, 30, 1),
(186, 30, 4),
(177, 30, 11),
(36, 30, 19),
(469, 30, 20),
(478, 30, 20),
(286, 30, 28),
(71, 31, 7),
(452, 31, 7),
(480, 32, 5),
(45, 32, 29),
(446, 33, 2),
(334, 33, 4),
(195, 33, 6),
(468, 33, 10),
(164, 33, 14),
(259, 33, 20),
(98, 33, 21),
(109, 33, 29),
(377, 34, 1),
(155, 34, 3),
(191, 35, 2),
(176, 35, 7),
(76, 35, 17),
(235, 35, 24),
(498, 35, 26),
(436, 36, 1),
(333, 36, 13),
(361, 36, 21),
(462, 37, 5),
(310, 37, 10),
(465, 37, 25),
(420, 37, 29),
(100, 38, 3),
(171, 38, 9),
(223, 38, 13),
(4, 38, 19),
(174, 38, 25),
(167, 38, 29),
(489, 38, 29),
(65, 39, 5),
(388, 39, 8),
(159, 39, 18),
(314, 39, 20),
(422, 40, 18),
(230, 40, 22),
(401, 40, 23),
(265, 40, 25),
(407, 40, 26),
(157, 40, 30),
(90, 41, 13),
(16, 41, 20),
(18, 42, 2),
(474, 42, 4),
(146, 42, 10),
(173, 42, 10),
(48, 42, 12),
(205, 42, 21),
(335, 42, 24),
(8, 42, 27),
(75, 43, 3),
(346, 43, 4),
(248, 43, 11),
(282, 43, 11),
(217, 43, 17),
(340, 43, 24),
(25, 43, 27),
(357, 43, 29),
(215, 43, 30),
(395, 44, 10),
(381, 44, 19),
(34, 44, 23),
(424, 45, 5),
(158, 45, 6),
(161, 45, 8),
(374, 45, 8),
(371, 45, 9),
(296, 45, 30),
(74, 46, 5),
(160, 46, 5),
(50, 46, 14),
(69, 46, 25),
(453, 46, 28),
(497, 47, 2),
(277, 47, 12),
(115, 47, 17),
(341, 47, 28),
(117, 48, 4),
(385, 48, 19),
(251, 49, 5),
(52, 49, 7),
(442, 49, 12),
(350, 49, 20),
(383, 50, 3),
(399, 50, 14),
(10, 50, 20),
(447, 50, 27),
(172, 50, 29),
(326, 51, 11),
(328, 51, 13),
(162, 51, 22),
(300, 51, 22),
(391, 51, 26),
(233, 52, 1),
(31, 52, 4),
(355, 52, 4),
(239, 52, 8),
(418, 52, 10),
(198, 52, 13),
(471, 52, 13),
(336, 52, 21),
(140, 52, 26),
(272, 53, 7),
(394, 53, 10),
(238, 53, 11),
(57, 53, 24),
(78, 53, 29),
(490, 55, 4),
(105, 55, 8),
(283, 55, 22),
(488, 56, 13),
(59, 56, 19),
(219, 56, 20),
(108, 56, 24),
(329, 57, 6),
(290, 57, 7),
(403, 57, 12),
(456, 57, 15),
(35, 57, 26),
(216, 58, 5),
(356, 58, 5),
(308, 59, 1),
(427, 59, 1),
(307, 59, 3),
(482, 59, 11),
(428, 59, 18),
(181, 59, 21),
(253, 59, 23),
(367, 59, 23),
(197, 59, 28),
(305, 60, 7),
(236, 60, 10),
(378, 60, 15),
(131, 60, 18),
(460, 60, 30),
(123, 61, 12),
(185, 61, 17),
(264, 62, 7),
(227, 62, 14),
(189, 62, 22),
(84, 62, 24),
(122, 62, 27),
(266, 63, 1),
(433, 63, 1),
(30, 63, 8),
(156, 63, 12),
(295, 63, 27),
(297, 63, 27),
(61, 64, 9),
(87, 64, 16),
(369, 64, 22),
(21, 64, 28),
(91, 65, 3),
(267, 65, 3),
(327, 65, 9),
(322, 65, 11),
(387, 65, 21),
(221, 65, 30),
(175, 66, 2),
(26, 66, 5),
(85, 66, 6),
(229, 66, 7),
(169, 66, 10),
(410, 66, 11),
(170, 66, 20),
(196, 66, 21),
(2, 66, 22),
(118, 66, 24),
(448, 66, 24),
(332, 66, 26),
(404, 67, 1),
(220, 67, 2),
(302, 67, 7),
(281, 67, 10),
(451, 67, 13),
(102, 67, 14),
(13, 67, 18),
(136, 67, 19),
(483, 67, 25),
(382, 68, 7),
(28, 68, 12),
(113, 68, 14),
(359, 68, 20),
(441, 68, 24),
(461, 69, 10),
(415, 69, 14),
(39, 69, 15),
(151, 69, 20),
(188, 69, 20),
(183, 69, 22),
(467, 69, 26),
(331, 70, 11),
(182, 70, 13),
(323, 70, 15),
(143, 70, 25),
(445, 71, 1),
(316, 71, 5),
(1, 71, 21),
(202, 71, 24),
(24, 71, 26),
(472, 71, 27),
(95, 71, 29),
(499, 71, 30),
(500, 72, 1),
(62, 72, 5),
(269, 72, 11),
(430, 72, 13),
(127, 72, 28),
(347, 73, 4),
(144, 73, 10),
(406, 73, 19),
(210, 74, 9),
(53, 74, 18),
(258, 74, 20),
(330, 75, 3),
(153, 75, 11),
(209, 75, 12),
(402, 75, 17),
(358, 75, 24),
(457, 75, 25),
(455, 75, 27),
(284, 76, 3),
(337, 76, 11),
(339, 76, 12),
(27, 76, 23),
(481, 77, 1),
(493, 77, 4),
(192, 77, 9),
(276, 77, 15),
(397, 77, 16),
(475, 77, 21),
(303, 77, 23),
(375, 77, 29),
(247, 78, 2),
(241, 78, 4),
(244, 78, 7),
(423, 78, 12),
(23, 78, 17),
(222, 78, 28),
(260, 79, 7),
(419, 79, 18),
(263, 79, 19),
(179, 79, 22),
(458, 80, 3),
(429, 81, 12),
(275, 81, 14),
(7, 82, 10),
(487, 82, 14),
(360, 82, 22),
(32, 82, 26),
(273, 82, 30),
(17, 83, 3),
(142, 83, 7),
(344, 83, 9),
(5, 83, 11),
(226, 83, 13),
(135, 83, 30),
(42, 84, 1),
(116, 84, 5),
(464, 84, 7),
(58, 84, 10),
(145, 84, 14),
(225, 85, 3),
(60, 85, 6),
(89, 85, 12),
(147, 85, 12),
(389, 85, 12),
(315, 85, 20),
(440, 85, 22),
(325, 86, 1),
(51, 86, 18),
(312, 87, 3),
(93, 87, 4),
(496, 87, 5),
(101, 87, 10),
(319, 87, 21),
(450, 87, 29),
(249, 88, 6),
(190, 88, 21),
(150, 88, 24),
(280, 88, 26),
(194, 88, 28),
(379, 88, 29),
(343, 89, 1),
(373, 89, 1),
(3, 89, 5),
(363, 89, 14),
(473, 89, 18),
(293, 89, 29),
(313, 90, 1),
(298, 90, 2),
(412, 90, 17),
(43, 90, 21),
(106, 90, 23),
(463, 90, 30),
(47, 91, 11),
(476, 91, 12),
(444, 91, 20),
(41, 91, 26),
(255, 91, 27),
(321, 92, 5),
(54, 92, 20),
(11, 92, 30),
(345, 93, 9),
(354, 93, 11),
(201, 93, 23),
(180, 94, 3),
(149, 94, 7),
(421, 94, 16),
(254, 94, 17),
(228, 94, 29),
(270, 95, 8),
(44, 95, 11),
(437, 95, 13),
(279, 95, 14),
(495, 95, 20),
(211, 95, 22),
(353, 95, 30),
(411, 96, 2),
(231, 96, 5),
(88, 96, 10),
(492, 96, 12),
(110, 96, 13),
(380, 96, 17),
(166, 96, 24),
(304, 96, 28),
(414, 96, 30),
(152, 97, 2),
(99, 97, 10),
(168, 97, 11),
(485, 97, 11),
(234, 97, 16),
(250, 97, 23),
(79, 97, 26),
(278, 98, 1),
(486, 98, 7),
(77, 98, 24),
(257, 98, 26),
(294, 98, 29),
(218, 98, 30),
(291, 99, 8),
(409, 99, 21),
(40, 99, 29),
(154, 99, 30),
(119, 100, 5),
(285, 100, 8),
(417, 100, 11),
(454, 100, 11),
(262, 101, 5),
(204, 101, 9),
(246, 101, 12),
(309, 101, 12),
(134, 101, 18),
(372, 101, 18),
(351, 101, 26),
(138, 101, 29);

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(60) NOT NULL,
  `message` text NOT NULL,
  `created` varchar(45) NOT NULL,
  `ip_adress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `username`, `email`, `message`, `created`, `ip_adress`) VALUES
(1, 'alexandr', 'alexandr-i@i.ua', 'hjghjh', '2016-05-30 11:09:22', ''),
(2, 'alexandr', 'fgdfi@i.ua', 'hgfhgfh', '2016-05-31 11:13:04', ''),
(3, 'alexandr', 'alexandr-i@i.ua', 'test', '2016-05-31 13:31:33', 'http://site2/index.php?route=index/contact'),
(4, 'alexandr', 'alexandr-i@i.ua', 'test ip_adress', '2016-05-31 13:34:15', '127.0.0.1'),
(5, 'alexandr', 'alexandr-i@i.ua', 'gfhfg', '2016-06-06 16:39:30', '127.0.0.1'),
(6, 'alexandr', 'alexandr-i@i.ua', 'fgdfg', '2016-06-06 16:46:58', '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `style`
--

CREATE TABLE `style` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `style`
--

INSERT INTO `style` (`id`, `name`) VALUES
(1, 'nullam'),
(2, 'purus'),
(3, 'justo'),
(4, 'purus'),
(5, 'super style'),
(6, 'eget'),
(7, 'aliquam'),
(8, 'vel'),
(9, 'condimentum'),
(10, 'sed'),
(11, 'eu'),
(12, 'felis'),
(13, 'hac'),
(14, 'quisque'),
(15, 'aaaa');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` char(32) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `status`) VALUES
(1, 'admin@mvc.com', '1d43a95f76d1da7b3c39597ecf00121e', 1),
(2, 'qwerty@mvc.com', 'cd1356fb884979945ffaa9d8437d354c', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price` (`price`),
  ADD KEY `style_id` (`style_id`);

--
-- Индексы таблицы `book_author`
--
ALTER TABLE `book_author`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`,`author_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `style`
--
ALTER TABLE `style`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `author`
--
ALTER TABLE `author`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT для таблицы `book_author`
--
ALTER TABLE `book_author`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;
--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `style`
--
ALTER TABLE `style`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`style_id`) REFERENCES `style` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
