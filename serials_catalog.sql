-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Лис 03 2016 р., 08:46
-- Версія сервера: 5.7.14
-- Версія PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `serials_catalog`
--

-- --------------------------------------------------------

--
-- Структура таблиці `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) NOT NULL,
  `seasonId` int(11) NOT NULL,
  `serialId` int(11) NOT NULL,
  `episodNum` int(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `episodes`
--

INSERT INTO `episodes` (`id`, `seasonId`, `serialId`, `episodNum`, `name`, `description`, `added`) VALUES
(39, 5, 2, 1, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:05:55'),
(40, 5, 2, 2, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:06:22'),
(41, 5, 2, 3, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:06:32'),
(42, 5, 2, 4, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:06:41'),
(43, 5, 2, 5, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:06:52'),
(44, 6, 2, 1, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:07:05'),
(45, 6, 2, 2, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:07:13'),
(46, 6, 2, 3, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:07:19'),
(47, 7, 2, 1, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:07:30'),
(48, 7, 2, 2, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:07:36'),
(49, 7, 2, 3, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:07:42'),
(50, 1, 1, 1, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:07:52'),
(51, 1, 1, 2, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:07:57'),
(52, 1, 1, 3, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:08:08'),
(53, 2, 1, 1, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:08:19'),
(54, 2, 1, 2, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:08:25'),
(55, 2, 1, 3, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:08:29'),
(56, 3, 1, 1, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:08:40'),
(57, 3, 1, 2, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:08:45'),
(58, 3, 1, 3, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:08:51'),
(59, 4, 1, 1, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:09:02'),
(60, 4, 1, 2, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:09:07'),
(61, 4, 1, 3, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 16:09:12'),
(62, 7, 2, 4, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2016-11-02 19:21:08'),
(63, 1, 1, 4, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-02 19:23:35'),
(64, 3, 1, 4, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-03 08:22:19'),
(65, 3, 1, 5, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-03 08:40:51'),
(66, 5, 2, 6, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-03 08:41:13'),
(67, 2, 1, 4, 'Назва серії', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-11-03 08:41:30');

-- --------------------------------------------------------

--
-- Структура таблиці `seasons`
--

CREATE TABLE `seasons` (
  `id` int(11) NOT NULL,
  `serialId` int(11) NOT NULL,
  `seasonNum` int(3) NOT NULL,
  `episodes` int(5) NOT NULL,
  `description` text NOT NULL,
  `year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `seasons`
--

INSERT INTO `seasons` (`id`, `serialId`, `seasonNum`, `episodes`, `description`, `year`) VALUES
(1, 1, 1, 40, 'Українську красуню Настю, доньку сільського священника, татари викрали з рідного села, вбивши у церкві всю її сім\'ю. Спершу вона потрапила до Криму, а звідти й до султанського палацу Топкапи у Стамбулі. Горда і норовлива дівчина спершу веде себе нерозумно: налаштовує людей проти себе. Але зустрівши султана Сулеймана І Пишного вона відразу закохується у нього і вирішує будь-що стати його улюбленою жінкою. Проти кмітливої та розумної Насті повстають мати султана — Валіде Айше Хафіза Султан, сестра султана — Хатідже Султан і третя дружина султана — Махідевран Султан разом зі своїми свитами.  Борючись з інтригами та підступами Настя не рідко сама починає діяти подібними методами. Згодом їй вдається закохати у себе Сулеймана і щоб стати хасекі-султан (улюбленицею), вона приймає іслам, а султан їй дає ім\'я Гюрем (та, що завжди сміється). В цей час у султана псуються відносини із третьою дружиною. Махідевран намагається будь-що налагодити стосунки із султаном і прибрати зі свого шляху Гюрем. Проте таким чином вона остаточно віддаляє від себе Сулеймана і він не хоче бачити її.  Паралельно розгортається сюжетна лінія Ібрагіма — помічника султана Сулеймана. Ібрагім закоханий у Хатідже — сестру правителя, але розуміє, що немає права претендувати на її руку, бо він звичайний раб, грек за походженням. Ібрагім і Гюрем майже відразу відчули неприязнь одне до одного, яка з часом переросла у справжню ворожнечу, попри те, що в дечому їх долі схожі — вони обоє досягли значних статусів у султанаті. Хатідже також закохана у Ібрагіма, але розуміє, що це кохання заборонене, для неї, представниці Османської династії. Зрештою, Хатідже починає вважати себе головнішою за Ібрагіма та приятелювати з Гюрем, і це сприяє значним конфліктам між закоханою парою.  До палацу згодом потрапляє красива угорка на ім\'я Вікторія, нареченого якої убив сам султан Сулейман після нападу на палац короля Лайоша в Буді. Щоб втертися в довіру до жителів султанського палацу, Вікторія підпалить кімнату, у якій сидітимуть султанські діти, і нібито їх врятує. Таким чином красива угорська дівчина заслужить довіру не тільки Гюрем, але й самого султана та Валіде Айше Хафса, яка дасть їй ім\'я «Садика», що означає — рятівниця. Єдине бажання Садики — це криваво помститись Сулейману за смерть коханого. Через неї Гюрем помилково звинуватять у вбивстві однієї із наложниць гарему і відішлють у заслання, із якого та швидко повернеться. Адже Ібрагім буде шантажувати Гюрем, яка щоб повернутись має вибачитись перед третьою дружиною Султана І Пишного. Але її ніщо не спинило, бо це вибачення перед Махідевран дало більше сил і показало з ще кращого боку перед Сулейманом  Доля направить до султанського палацу і колишнього нареченого Гюрем — художника Левка, який, як виявиться згодом, не загинув після нападу татар. Він візьметься малювати портрет Сулеймана і Гюрем. Левко має намір утекти разом зі своєю коханою — своєю колишньою красунею Гюрем, але та відмовляється покинути Сулеймана і своїх дітей. Немало випробувань ще має випасти на долю героїв, доки Гюрем досягне ще більших висот, а Ібрагім і Хатідже одружаться', 2011),
(2, 1, 2, 40, 'Перший сезон серіалу закінчується трагічно: Ібрагім вбиває Левка. Сулейман дивом рятується від смерті. Сулейман звинувачує Ібрагіма в тому, що той підпустив до нього так близько вбивцю. Ібрагім звинувачує у всьому художника-мініатюриста Матракчи, який за випадковим збігом обставин привів Садику до гарему і навіть мав намір одружитись на дівчині. Покарати Матракчи за його необережність Ібрагім вирішив тим, що Садику мав убити сам Матракчи. Зрештою, художник-мініатюрист утопив свою кохану і сильно страждав. Та Ібрагіма усе одно переслідують невдачі. Першу дитину Хатідже втратила, коли на палац Ібрагіма напали розлючені яничари. Хатідже впала зі сходів і сильно вдарилась, і саме через це у неї трапився викидень. Коли пізніше народилась друга дитина— син;— шахзаде Мехмет, то при народженні мав померти, але Гюрем врятувала дитя. Щастю молодого подружжя не було меж, але горе спіткало їх і тут. Коли Хатідже годувала синочка груддю, в ліжку вона заснула… На ранок Хатідже подумала, що малятко ще просто не прокинулося, але, як потім виявилося, маля захлинулося молоком Хатідже, ще вночі. Найбільшим потрясінням це стає для самої Хатідже, яка не вірить, що стала причиною загибелі немовляти і потім звинувачує себе у всіх смертних гріхах, а також намагається покінчити життя самогубством, через що Сулейман відсилає її зі Стамбула. Згодом Хатідже повернеться, але вже зовсім іншою людиною— злою, жорстокою султаною, яка не щадить ані себе, ані інших. У Гюрем з\'являється суперниця — іспанська принцеса Ізабелла Фортуна, яка потрапила в полон до Сулеймана. Він поселив її у мисливському будиночку. Згодом він закохується у молоду гарну іспанку, і Гюрем, ревнуючи свого коханого, починає проти Ізабелли справжнісіньку війну — не на життя, а на смерть… Щоправда, обійшлось без смертей — Гюрем чесно відправляє Ізабеллу додому, а Сулейман забуває про цей інцидент і все ще любить свою Гюрем. Згодом Гюрем має намір боротись із Махідевран, яка всіма правдами і неправдами готова позбутися її. Та згодом ця ворожнеча перетворюється у небезпечну гру. Декілька разів Махідевран робить спроби вбити Гюрем . Не нудьгує й Ібрагім — він наказує найманим вбивцям напасти на карету Гюрем, коли та поверталась вночі з відпочинку в Едірне до Стамбула. Наступного разу вже й Валіде збурює заколот у гаремі проти Гюрем . Декілька наложниць обпікають обличчя дівчини вогнем. Але згодом Гюрем помститься цим наложницям тим самим, обпікши вогнем обличчя. Хатідже, яка вже давно не така, як була колись, починає нападати словесно на Ібрагіма. Ібрагім цього, певна річ, не витримує, і згодом починає зраджувати Хатідже з Ніґяр-калфою… Від зв\'язку з Ібрагімом Ніґяр вагітніє. Про це випадково дізнається Дайє Хатун — права рука Валіде, яка пробує нарозумити Ніґяр, а пізніше про це дізнається й сама Валіде, після чого у неї трапляється інсульт, що надовго прикує її до ліжка… Зрештою, у кінці сезону Валіде помирає, а Хатідже приймає рішення розлучитися з Ібрагімом і позбавити його всіх титулів, а також присягається помститися Гюрем за смерть матері.', 2012),
(3, 1, 3, 30, 'У Гюрем уже 5 дітей, чотири хлопчика та одна дівчинка. Після смерті матері султана, керівницєю гаремом спершу стає Махідевран, але Гюрем завдяки хитрій інтризі вдалось змусити Сулеймана позбавити Махідевран, звання правлячої гаремом, яка потратила стільки коштів, що не змогла повернути лихварці грошовий борг. Зрештою Сулейман призначає на цю високу посаду саму Гюрем. Мустафа-старший син Сулеймана, та єдиний син Махідевран, вже виріс і йому час їхати в Едірне де він буде правити. Мустафу дуже люблять яничари. Хатідже, дізнавшись, що Ніґяр вагітна від Ібрагіма, вирішує, що найкращий вихід тут — це аборт, а опісля — страта Ніґяр. Тим часом у палац потрапляє перська полонянка — Фірузе Хумейра, яку привіз до Стамбула турецький пірат на ймення Барбаросса. Доля приводить її до султанського палацу. Полонянка згодом стане для Гюрем досвідченою і хитрою суперницею в боротьбі за кохання Сулеймана. Покровительками перської рабині стали Махідевран, Хатідже і Афіфе — годувальниця Сулеймана, яку запросили до гарему «навести порядок», вони захищають і оберігають нову коханку султана від Гюрем та при нагоді роблять все щоб насолити останній. Та ніхто не підозрював, що Фірузе Хумейра — не просто рабиня, а справжнісінька принцеса на ім\'я Бегюмхан Султан — представниця перської династії Тахмаспа І (Сефевідів) — ворогів турецької династії Османів, що врятувалась після корабельної аварії.\r\n\r\nЗгодом у палац приходить деякий Рустем — конюх, який закоханий у доньку Гюрем — Міхрімах. За допомогою Рустема Гюрем дізнається про таємницю Фірузе і, зрештою, султан Сулейман вирішує відправити Фірузе в мисливський будиночок, згодом Гюрем разом з Рустемом знаходять родичів Фірузе, або вже Бехюмхан, які забирають принцессу додому. Гюрем святкує перемогу.\r\n\r\nХатідже вирішує пробачити Ібрагімові усі його гріхи і зраду, але тільки заради помсти Гюрем. Тепер Хатідже та Ібрагіма об\'єднала спільна мета — дошкулити Гюрем. До столиці приїздить Шах Іхубан Султан — сестра Хатідже і Сулеймана, яка про людське око вирішує підтримувати гарні стосунки з Гюрем, але насправді має досить далекоглядні плани щодо подальшого свого перебування в Стамбулі. Ібрагім у своєму честолюбстві зробив необачні кроки: він називав себе неодноразово «правителем Османської імперії» і «приборкувачем» султана при іноземних послах, про, що було записано до протоколів. Про ці протоколи дізналась Гюрем і через своїх довірених людей передала їх Сулейману. Розгніваний Сулейман вирішує стратити Ібрагіма. Так він і чинить, про що шкодує. До палацу Хатідже привезли труну з Ібрагімом. Хатідже, побачивши мертвого Ібрагіма, хоче помститися Гюрем, адже вона вважає, що це саме рудоволоса султана вбила її союзника. Згодом буде виявлено що Шах Іхубан Султан була закохана в Ібрагіма. Так як шах султан завжди заздрила Хатідже, вибір Ібрагіма ще більше розлютив Шах Іхубан. Тому вона підбурює Султана щоб Хатідже видали заміж, а шах султан прибере палац Ібрагіма та Хатідже, але наречений захворіє на чуму, тому заручини розірвуть і план Шах Іхубан провалиться. Міхрімах страждає, бо проти волі, її видають заміж за Рустема який їй огидний, бо вона кохає Малкочаглу Балібея — наглядача покоїв у якого закохана з дитинства. Поки султан Сулейман пішов в похід, Гюрем султан викрадають. Користуючись відсутністю Гюрем, Махідевран підсилає наложницю з Едірне, яка має підсипати отруту старшому сину Гюррем — Мехмету, той помирає від отруєння. За таким збігом обставин Сулейман повертається з походу і відразу починає пошуки Гюрем. Багато доказів приводять султана на те, що саме Хатідже викрала Гюрем султан. Коли Сулейман приходить поговорити на балконі з Хатідже, та у всьому зізнається, і зі словами: «Ти забрав моє кохання, тож я заберу твоє», та «Ти більше ніколи не побачиш Гюрем», випила отруту та померла на руках у султана Сулеймана. В кінці сезону, руда та завзята султана знову повертається до гарему, щоб помститися новим ворогам', 2013),
(4, 1, 4, 29, 'Зважаючи на минуле, Гюрем яскраво палає бажанням помсти. До палацу приїжджає ще одна сестра султана Фатма Султан. Рустем стає великим візиром і довіреною особою султана Сулеймана. Він допомагає Гюрем творити інтрижки. У Міхрімах та Рустема вже є донька. Гюрем стає настільки лихою, що не щадить навіть своїх синів та родичів. Невісток вона прагне втопити у Босфорі. Сулеймана Гюрем лякає своєю поведінкою. Сулейман призначає шехзаде Селіма (раніше середнього — тепер старшого сина Гюрем) керувати головним санджаком — провінцією Сарухан (Маніса). Це викликає невдоволення у сина Махідевран — Мустафи, а також у двох молодших братів — сміливця Баязида і горбатенького Джихангіра. Вони укладають союз проти Селіма. Селім, дізнавшись про це, замість того, щоб починати діяти, починає пиячити. До палацу приїздить деяка італійська принцеса Сесилія Верньер-Баффо, яка мріє швидше повернутися додому, але Гюрем лякає її звісткою про те, що тепер та — власність шехзаде Селіма… Сесилія у відчаї намагається покінчити життя самогубством, але її рятує той же Селім. Познайомившись із ним, Сесилія знову отримує віру в життя, щастя і справжнє кохання. Сесилія приймає іслам і Гюрем називає її «Нурбану» — та, що сяє. Селім і Нурбану здійснюють нікях (з турецької — весілля), вона народжує йому багато дітей, Селім перестає пиячити. Повертається донька Ібрагіма та Хатідже — Хуріджихан Султан і їх любовна лінія розгортається із шехзаде Баязидом. Мустафа закохується у доньку капітана Барбароса. Міхрімах султан викрадає печатку Мустафи і віддає своїй Валіде. Гюрем пише від імені Мустафи лист Тахмаспу, щоб скинути з престолу і вбити Сулеймана. Султан приїжджає в табір яничарів і викликає невинного Мустафу, згодом віддає наказ стратити сваго сина в себе на очах. Після смерті Мустафи володар звільняє Рустема з посади Великого Візира і призначає чоловіка Фатми султан, а Джихангір гине від туги за Мустафою. Потім виявилося, що великий візир привласнив багато золота скарбниці та відправив повстанцям лже-шехзаде Мустафи (прибічникам Мустафи, які вірили самозванцю). Після цього володар наказав пошити чорний каптан, і на засіданні дивану звелів Ахмету паші надягти його, і за звичаєм його відразу стратили. Рустем знову стає великим візиром. У Сулеймана знову з\'являється наложниця яка згодом народжує йому дівчинку. Нурбану стає дуже жорстокою, тому посварившись з наложницею султана, кидає її з балкону і та помирає. Міхрімах з ненависті до Рустема, наказує стратити його. Гюрем захворівши, помирає від недуги. Зоставшись вдвох, Селім та Баязид сходяться на поєдинок. Згодом Селім перемагає шехзаде Баязида. Султан Сулейман розуміючи що скоро помре іде в похід, де і помирає. В кінці шехзаде Селім стає султаном, а Нурбану султан стає Хасекі-султан.', 2014),
(5, 2, 1, 13, ' Доктор Лайтман майстер у розпізнаванні брехні. Він добре знає те, що брехуна можна визначити за допомогою мікроміміки, яку людина не має можливості свідомо контролювати. Це може бути будь-який жест або ж випадкове слово. Щоб виявити обман, необхідно бути дуже уважним до кожної дрібниці.\n\nСвою здатність розпізнавати брехню головний герой використовує в діяльності. Доктор Лайтман разом зі своїми колегами застосовують власні знання при розслідуванні справ. Ці люди можуть врятувати життя людині, помилково звинуваченій у злочині. Також вони визначають того, хто щось недоговорює правоохоронним органам.\n\nУ Лайтмана є своє агентство Lightman Group, до якого за допомогою нерідко звертаються агенти ФБР, люди з уряду. Серед клієнтів доктора Лайтмана були навіть глави держав. Дійсно, головний герой робить добру справу. Але чи дає вона йому задоволення? Адже нелегко жити в світі, про який ти постійно знаєш всю правду[5].', 2009),
(6, 2, 2, 22, ' Доктор Лайтман, як і раніше, очолює Lightman Group, проте кредит, який він бере, щоб його дружина не забрала їх дочку Емілі в Чикаго, ставить під сумнів фінансове майбутнє компанії. Його помічниця Джилліан Фостер легко справляється зі своїм розлученням, відчуваючи себе набагато краще, ніж під час заміжжя. Проте заплутані справи, що вимагають, щоб на них пролили світло, не будуть чекати. Та й ФБР вимагає продовження розслідувань.\n\nУ другому сезоні геніальному доктору Келу Лайтману доведеться зустрітися з не менш геніальним студентом-психопатом, причетним до зникнення дівчат; стати заручником божевільного чоловіка, який просить довести, що він не зв\'язаний з убивством своєї дружини; побувати на секретній місії в Афганістані і навіть в Лас-Вегасі на відкритті чемпіонату з покеру.\n\nУ пошуках нового інвестора доктор Фостер звертається за допомогою до однієї з клієнток Lightman Group, багатої вдови на ім\'я Клара. Здається, що жінка зацікавлена не тільки діяльністю Лайтмана, але і ним самим[6].', 2010),
(7, 2, 3, 22, 'Труднощі з дочкою-підлітком, постійні проблеми з колишньою дружиною і дивні відносини з партнером по бізнесу і просто другом — це те, що має пережити доктор Кел Лайтман у третьому сезоні.\n\nПід час виконання одного із завдань групи Лайтмана, агенту Рейнольдсу добре дістається і його госпіталізують з вогнепальним пораненням. Лайтман відмовляється бути «на побігеньках» у ФБР, проте вони не збираються так просто здаватися, оскільки, у них є багато інформації на доктора Лайтмана з його далекого минулого.\n\nУ третьому сезоні «Теорії брехні» ставки зростають. Лайтман візьме участь у збройному пограбуванні банку, розбереться з корумпованим власником вугільної шахти, а також стане одним з пацієнтів психіатричної лікарні.\n\nУ гру також вступить співробітниця поліції — детектив Валовські, яка допомагатиме Лайтману з інформацією щодо його справ в обмін на невеликі послуги. Однак, на перший погляд, їх відносини можуть здатися не лише професійними[7].', 2011);

-- --------------------------------------------------------

--
-- Структура таблиці `serials`
--

CREATE TABLE `serials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `seasons` int(4) NOT NULL DEFAULT '1',
  `episodes` int(5) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `yearStart` varchar(20) NOT NULL,
  `yearFinish` varchar(20) NOT NULL,
  `lastEpisodeAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `serials`
--

INSERT INTO `serials` (`id`, `name`, `description`, `seasons`, `episodes`, `genre`, `yearStart`, `yearFinish`, `lastEpisodeAdded`) VALUES
(1, 'Величне століття. Роксолана', 'Телесеріал знятий за мотивами реальних подій, заснований на історичних документах. Головним героєм телесеріалу є султан Сулейман I Пишний, якого самі турки називали Кануні, тобто «законодавець», що правив Османською імперією в XVI столітті, на яке і припав її розквіт. Головна героїня телесеріалу, його кохана і дружина, якій він дав ім\'я Гюрем — «та, що завжди сміється», в Україні більш відома, як Роксолана. Гюрем (Hürrem), яку раніше звали Анастасією Лісовською, потрапила в полон до татар, які напали на її село і вбили батьків та сестру. Настю спершу відвезли до Криму, а звідти — й до Стамбула, де вона й потрапила до султанського палацу Топкапи. Побачивши султана Сулеймана, українка відразу ж закохується в нього і вирішує будь-що завоювати любов цього суворого чоловіка. Завдяки жіночим хитрощам, підкупам, інтригам і своїй кмітливості Настя зрештою стає улюбленою наложницею султана, його фавориткою, дружиною і матір\'ю його дітей. Вона зачаровує його своєю вродою, веселою вдачею і дотепністю. Змагаючись за кохання Сулеймана, Гюрем наживає собі ворогів через свій нелегкий характер, але зрештою вона досягає поставленої собі мети — помститися за смерть рідних і отримати владу над Османською імперією.', 4, 139, 'Історична драма', '2011', '2014', '2016-11-03 08:41:31'),
(2, 'Теорія брехні', 'За сюжетом Доктор Кел Лайтман і його колеги виконують завдання третіх сторін (здебільшого місцевих та федеральних правоохоронних органів), а також допомагають у розслідуваннях, знаходячи правду через застосування психології: інтерпретуючи міміку обличчя людини і мову тіла[3]. Персонаж Доктора Лайтмана заснований на роботі Пола Екмана, хоча серіал розпочинається з заяви, що жодні реальні особи не є прототипами героїв Теорії брехні.  Перший сезон, демонстрація якого розпочалася 21 січня 2009 року на американському телеканалі FOX, містить 13 серій. До другого сезону увійшли 22 серії, дебют першої серії відбувся 28 вересня 2009. Трансляція була призупинена у грудні 2009 року. Вона була відновлена 7 червня 2010 року[4].  Популярність серіалу змусила керівництво телеканалу Fox продовжити зйомки ще на один сезон, який вийшов на телеекрани 4 жовтня 2010 року. Серіал «Теорія брехні» був офіційно закритий телеканалом FOX 11 травня 2011 року, за офіційною версією через низькі рейтинги (рейтинги серіалу значно знизилися у порівнянні з першим сезоном — 5,5 млн проти 11 млн глядачів).', 3, 48, 'Драма, Детектив', '2009', '2010', '2016-11-03 08:41:13');

-- --------------------------------------------------------

--
-- Структура таблиці `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `role` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `hash`, `role`) VALUES
(1, 'Alex', 'email@mail.com', '$2y$10$7twkWL2ndPDy0VEq3czciuRGDXTsMycngaLFE1KQAfskuqH/.fwxO', 'admin'),
(2, 'Alex', 'user@mail.com', '$2y$10$7twkWL2ndPDy0VEq3czciuRGDXTsMycngaLFE1KQAfskuqH/.fwxO', NULL);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seasonId` (`seasonId`,`serialId`),
  ADD KEY `seasonId_2` (`seasonId`),
  ADD KEY `serialId` (`serialId`);

--
-- Індекси таблиці `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `serials`
--
ALTER TABLE `serials`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT для таблиці `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблиці `serials`
--
ALTER TABLE `serials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_ibfk_1` FOREIGN KEY (`serialId`) REFERENCES `serials` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
