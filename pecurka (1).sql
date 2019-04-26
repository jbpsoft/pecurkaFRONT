-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2019 at 03:12 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pecurka`
--

-- --------------------------------------------------------

--
-- Table structure for table `firma`
--

CREATE TABLE `firma` (
  `firma_id` int(6) NOT NULL,
  `naziv` varchar(255) COLLATE utf8_croatian_mysql561_ci NOT NULL,
  `adresa` varchar(255) COLLATE utf8_croatian_mysql561_ci NOT NULL,
  `web_sajt` varchar(255) COLLATE utf8_croatian_mysql561_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_mysql561_ci;

--
-- Dumping data for table `firma`
--

INSERT INTO `firma` (`firma_id`, `naziv`, `adresa`, `web_sajt`) VALUES
(1, 'Pečurka', '78250 Laktaši, Banja Luka, Bosna i Hercegovina', 'https://www.google.com');

-- --------------------------------------------------------

--
-- Table structure for table `grupa_proizvoda`
--

CREATE TABLE `grupa_proizvoda` (
  `id` int(6) NOT NULL,
  `naziv_grupe` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_mysql561_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `grupa_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_mysql561_ci;

--
-- Dumping data for table `grupa_proizvoda`
--

INSERT INTO `grupa_proizvoda` (`id`, `naziv_grupe`, `created_at`, `updated_at`, `grupa_id`) VALUES
(1, 'Povrće', '2019-04-25', '2019-04-25', 1),
(2, 'Voće', '2019-04-25', '2019-04-25', 2),
(3, 'Pečurke', '2019-04-25', '2019-04-25', 3);

-- --------------------------------------------------------

--
-- Table structure for table `jezici`
--

CREATE TABLE `jezici` (
  `jezici_id` int(6) NOT NULL,
  `spisak_jezika` varchar(255) COLLATE utf8mb4_croatian_mysql561_ci NOT NULL,
  `sr` text COLLATE utf8mb4_croatian_mysql561_ci NOT NULL,
  `en` text COLLATE utf8mb4_croatian_mysql561_ci NOT NULL,
  `cr` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_mysql561_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_mysql561_ci;

--
-- Dumping data for table `jezici`
--

INSERT INTO `jezici` (`jezici_id`, `spisak_jezika`, `sr`, `en`, `cr`) VALUES
(1, 'SRPSKI', 'VIDI STRANICU', 'WEB SITE PREVIEW', 'ВИДИ СТРАНИЦУ'),
(2, 'ENGLISH', 'ODJAVA', 'LOGOUT', 'ОДЈАВА'),
(3, 'ЋИРИЛИЦА', 'DOBRODOŠLI NA VAŠ ADMINISTRATIVNI PANEL', 'WELCOME AT YOUR ADMIN PANEL', 'ДОБРОДОШЛИ НА ВАШ АДМИНИСТРАТИВНИ ПАНЕЛ'),
(4, '', 'ULAZNE STAVKE', 'INCOMING ITEMS', 'УЛАЗНЕ СТАВКЕ  '),
(5, '', 'PROIZVODNJA', 'PRODUCTION', 'ПРОИЗВОДЊА'),
(6, '', 'Unos novog radnika', 'New worker', 'Унос новог радника'),
(7, '', 'test7', 'test7', ''),
(8, '', 'KUPCI', 'BUYERS', 'КУПЦИ'),
(9, '', 'O nama', 'About us', 'О нама'),
(10, '', 'Pretraga...', 'Search...', 'Претрага...'),
(11, '', 'Unos opisa', 'New description', 'Унос описа'),
(12, '', 'Unos podataka o firmi', 'Enter company data', 'Унос података о фирми '),
(13, '', 'Promena korisničkog imena/lozinke', 'Change the username/password', 'Промена корисничког имена/лозинке'),
(14, '', 'Nova stavka', 'New item', 'Нова ставка'),
(15, '', 'Pregled stavki', 'Review of items', 'Преглед ставки'),
(16, '', 'Stavka', 'Item', 'Ставка'),
(17, '', 'Lista stavki', 'List of items', 'Листа ставки'),
(18, '', 'Nabavna cena', 'Purchase price', 'Набавна цена  '),
(19, '', 'Porez', 'Tax', 'Порез'),
(20, '', 'Zaračunata marža', 'Charged margin', 'Зарачуната маржа'),
(21, '', 'Obriši', 'Delete', 'Oбриши'),
(22, '', 'Dobavljač', 'Supplier', 'Добављач'),
(23, '', 'Proizvodna cena', 'Production price', 'Производна цена'),
(24, '', 'Zatvori', 'Close', 'Затвори'),
(25, '', 'Uredi', 'Edit', 'Уреди'),
(26, '', 'Nova grupa proizvoda ', 'New product group', 'Нова група производа'),
(27, '', 'Novi proizvod u okviru grupe', 'New product within the group', 'Нови производ у оквиру групе'),
(28, '', 'Pregled proizvoda', 'Product overview', 'Преглед производа '),
(29, '', 'PRODAJA', 'SALE', 'ПРОДАЈА'),
(30, '', 'Veleprodaja', 'Wholesale', 'Велепродаја'),
(31, '', 'Maloprodaja', 'Retail', 'Малопродаја'),
(32, '', 'Akcije', 'Actions', 'Акције'),
(33, '', 'Glavni meni', 'Main menu', 'Главни мени'),
(34, '', 'Podešavanja', 'Adjustments', 'Подешавања'),
(35, '', 'Tabela preko celog ekrana', 'Full background', 'Табела преко целог екрана'),
(36, '', 'Boje', 'Colors', 'Боје'),
(37, '', 'Prikazi', 'Layouts', 'Прикази'),
(38, '', 'Mala tabela', 'Compact table', 'Мала табела'),
(39, '', 'Boja pozadine tabele', 'The color of table background', 'Боја позадине табеле'),
(40, '', 'Označi', 'Mark', 'Означи'),
(41, '', 'Korisničko ime', 'User name', 'Корисничко име'),
(42, '', 'Lozinka', 'Password', 'Лозинка'),
(43, '', 'Prijavite se', 'Log in', 'Пријавите се'),
(44, '', 'Da li ste sigurni da želite da izvršite brisanje podataka?', 'Are you sure you want to delete this data?', 'Да ли сте сигурни да желите да извршите брисање података?'),
(45, '', 'Unos nove ulazne stavke', 'Enter new incoming item', 'Унос нове улазне ставке'),
(46, '', 'Naziv stavke', 'Name of item', 'Назив ставке'),
(47, '', 'Snimi', 'Save', 'Сними'),
(48, '', 'Ažuriranje stavke', 'Update item', 'Ажурирање ставке'),
(49, '', 'RADNICI', 'WORKERS', 'РАДНИЦИ'),
(50, '', 'Način zarade radnika', 'Way of workers earning', 'Начин зараде радника'),
(51, '', 'Pregled zaduženja/ razduženja radnika', 'Review of Charge/ discharge of worker', 'Преглед задужења/ раздужења радника'),
(52, '', 'Ime', 'First name', 'Име'),
(53, '', 'Prezime', 'Last name', 'Презиме'),
(54, '', 'Grad', 'City', 'Град'),
(55, '', 'Ulica', 'Street', 'Улица'),
(56, '', 'Broj', 'Number', 'Број'),
(57, '', 'JMBG', 'Personal number', 'ЈМБГ'),
(58, '', 'Br.l. karte', 'ID number', 'Бр.л. карте'),
(59, '', 'Izdata od:', 'Issusued by:', 'Издата од:'),
(60, '', 'Izaberite radnika:', 'Select worker:', 'Изаберите радника:'),
(61, '', 'Status', 'Status\r\n', 'Статус'),
(62, '', 'Zaduženje/ razduženje', 'Charge/ discharge', 'Задежење/ раздужење'),
(63, '', 'Unos načina zarade radnika', 'Way of workers earning', 'Унос начина зараде радника'),
(64, '', 'Stepen ovlašćenja', 'Level of authorization', 'Степен овлашћењa'),
(65, '', 'Unos novog kupca', 'New buyer', 'Унос новог купца'),
(66, '', 'Ažuriranje podataka o stavkama', 'Updating of incoming items', 'Ажурирање података о ставкама'),
(67, '', 'Brisanje odgovarajuće stavke', 'Deleting of incoming item', 'Брисање одговарајуће ставке'),
(68, '', 'Ukoliko stavka učestvuje u formiranju proizvodne cene, označiti je klikom na ovu ikonicu ', 'If the item participates in the formation of the production price, mark it by clicking on this icon', 'Уколико ставка учествује у формирању производне цене, означити je кликом на ову иконицу'),
(69, '', 'Ažuriranje podataka radnika', 'Updating personal data of worker', 'Ажурирање података радника'),
(70, '', 'Brisanje radnika', 'Deleting of worker', 'Брисање радника'),
(71, '', 'Da', 'Yes', 'Да'),
(72, '', 'Ne', 'No', 'Не'),
(73, '', 'Način zarade', 'Way of earning', 'Начин зараде'),
(74, '', 'Rad od procenta', 'Percentage work', 'Рад од процента'),
(75, '', 'Rad za fiksnu platu', 'Work for fixed salary', 'Рад за фиксну плату'),
(76, '', 'Stalni radni odnos', 'Permanent employment', 'Стални радни однос'),
(77, '', 'Honorarni rad', 'Part time employed\r\n', 'Хонорарни рад'),
(78, '', 'Neaktivan', 'Inactive', 'Неактиван'),
(79, '', 'Direktor', 'Manager', 'Директор'),
(80, '', 'Poslovođa', 'Cheef', 'Пословођа'),
(81, '', 'Radnik', 'Worker', 'Радник'),
(82, '', 'Pomoćni radnik', 'Auxiliary worker', 'Помоћни радник'),
(83, '', 'Ažuriranje podataka kupca', 'Updating of buyers data', 'Ажурирање података купца'),
(84, '', 'Naziv kupca', 'Name of buyer', 'Назив купца'),
(85, '', 'Žiro-račun', 'Number of acount', 'Жиро-рачун'),
(86, '', 'PIB', 'PIN', 'ПИН'),
(87, '', 'Lista kupaca', 'List of buyers', 'Листа купаца'),
(88, '', 'Uspešno izvršen upis novog radnika!', 'A new employee successfully entered!', 'Успешно извршен упис новог радника!'),
(89, '', 'Uspešno ažurirani podaci radnika!', 'The employee data successfully updated!', 'Успешно ажурирани подаци радника!'),
(90, '', 'Brisanje radnika izvršeno!', 'Deleting a worker done!', 'Брисање радника извшрено!'),
(91, '', 'Brisanje kupca izvršeno!', 'Deleting a customer is done!', 'Брисање купца извршено!'),
(92, '', 'Izvršeno ažuriranje podataka o kupcu!', 'Updating Customer Data Completed!', 'Извршено ажурирање података o kupcu!'),
(93, '', 'Uspešno izvršen upis novog kupca!', 'Registration of a new customer successfully completed!', 'Успешно извршен упис новог купца!'),
(94, '', 'Uspešno izvršen unos nove stavke!', 'Successfully entered new item entry!', 'Успешно извршен упис нове ставке!'),
(95, '', 'Izvršeno ažuriranje podataka o stavci!', 'Data of item completed!', 'Извршено ажурирање података о ставци!'),
(96, '', 'Brisanje stavke izvršeno!', 'Item deleted!', 'Брисање ставке извршено!'),
(97, '', 'Pregled grupa proizvoda', 'Review of items groups', 'Преглед група производа'),
(98, '', 'Naziv grupe proizvoda', 'Name of group', 'Назив групе производа'),
(99, '', 'Unos nove grupe proizvoda', 'New items group', 'Унос нове групе производа'),
(100, '', 'Uspešno izvršen upis nove grupe proizvoda!\r\n', 'Registration of new items group successfully completed!', 'Успешно извршен упис нове групе производа!'),
(101, '', 'Brisanje grupe proizvoda izvršeno!', 'Deleting a items group is done!', 'Брисање групе производа извршено!'),
(102, '', 'Ažuriranje uspešno izvršeno!', 'Updated successfully!', 'Ажурирање успешно извршено!'),
(103, '', 'Unos novog proizvoda', 'New product', 'Унос новог производа'),
(104, '', 'Naziv proizvoda', 'Product', 'Назив производа'),
(105, '', 'Cena proizvoda', 'Product price', 'Цена производа'),
(106, '', 'Uspešno izvršen upis novog proizvoda!\r\n', 'New product succsessfully stored!', 'Успешно извршен упис новог производа!'),
(107, '', 'Brisanje proizvoda izvršeno!', 'Product deleted!', 'Брисање производа извршено!'),
(108, '', 'Ažuriranje proizvoda izvršeno!', 'Product updated!', 'Ажурирање производа извршено!'),
(109, '', 'Grupa proizvoda', 'Product group', 'Група производа'),
(110, '', 'Ažuriranje proizvoda', 'Product update', 'Ажурирање производа'),
(111, '', 'Ažuriranje podataka o proizvodu', 'Product data updating', 'Ажурирање података о производу'),
(112, '', 'Brisanje priozvoda', 'Delete product', 'Брисање производа'),
(113, '', 'Аžuriranje podataka o kupcu', 'Update buyers data', 'Ажурирање података о купцу'),
(114, '', 'Brisanje kupca', 'Delete buyer', 'Брисање купца');

-- --------------------------------------------------------

--
-- Table structure for table `kupac_zaduzenje`
--

CREATE TABLE `kupac_zaduzenje` (
  `id` int(6) NOT NULL,
  `datum` date NOT NULL,
  `radnik_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kupci`
--

CREATE TABLE `kupci` (
  `id` int(6) NOT NULL,
  `naziv` varchar(255) NOT NULL,
  `grad` varchar(255) NOT NULL,
  `ulica` varchar(255) NOT NULL,
  `broj` int(6) NOT NULL,
  `PIB` bigint(20) NOT NULL,
  `racun` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `kupac_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kupci`
--

INSERT INTO `kupci` (`id`, `naziv`, `grad`, `ulica`, `broj`, `PIB`, `racun`, `created_at`, `updated_at`, `kupac_id`) VALUES
(2, 'Tempo', 'Niš', 'Bul.12.februar', 165, 1071234567, '355-2345678-90', '2019-04-22', '2019-04-22', 2),
(3, 'As trgovina', 'NIš', 'Somborska', 33, 108123456, '105-1234567-89', '2019-04-22', '2019-04-24', 3),
(4, 'Metro', 'Niš', 'Milke Proti? Line', 226, 10612345678, '200-7894561-23', '2019-04-22', '2019-04-22', 4),
(5, 'Impex promet', 'Niš', 'Tolstojeva', 55, 109456789, '200-4179447-95', '2019-04-21', '2019-04-21', 1),
(6, 'Tempo', 'Niš', 'Bul.12.februar', 165, 1071234567, '355-2345678-90', '2019-04-22', '2019-04-22', 2),
(7, 'Aa trgovina', 'NIš', 'Somborska', 47, 108123456, '105-1234567-89', '2019-04-22', '2019-04-25', 3),
(8, 'Metro', 'Niš', 'Milke Proti? Line', 226, 10612345678, '200-7894561-23', '2019-04-22', '2019-04-22', 4),
(9, 'Impex promet', 'Niš', 'Tolstojeva', 55, 109456789, '200-4179447-95', '2019-04-21', '2019-04-21', 1),
(10, 'Tempo', 'Niš', 'Bul.12.februar', 165, 1071234567, '355-2345678-90', '2019-04-22', '2019-04-22', 2),
(12, 'Metro', 'Niš', 'Milke Proti? Line', 226, 10612345678, '200-7894561-23', '2019-04-22', '2019-04-22', 4),
(13, 'Impex promet', 'Niš', 'Tolstojeva', 55, 109456789, '200-4179447-95', '2019-04-21', '2019-04-21', 1),
(14, 'Tempo', 'Niš', 'Bul.12.februar', 165, 1071234567, '355-2345678-90', '2019-04-22', '2019-04-22', 2),
(15, 'As trgovina', 'NIš', 'Somborska', 55, 108123456, '105-1234567-89', '2019-04-22', '2019-04-24', 3),
(16, 'Metro', 'Niš', 'Milke Proti? Line', 226, 10612345678, '200-7894561-23', '2019-04-22', '2019-04-22', 4),
(17, 'Impex promet', 'Niš', 'Tolstojeva', 55, 109456789, '200-4179447-95', '2019-04-21', '2019-04-21', 1),
(18, 'Tempo', 'Niš', 'Bul.12.februar', 165, 1071234567, '355-2345678-90', '2019-04-22', '2019-04-22', 2),
(20, 'Metro', 'Niš', 'Milke Proti? Line', 226, 10612345678, '200-7894561-23', '2019-04-22', '2019-04-22', 4),
(21, 'Impex promet', 'Niš', 'Tolstojeva', 55, 109456789, '200-4179447-95', '2019-04-21', '2019-04-21', 1),
(22, 'Tempo', 'Niš', 'Bul.12.februar', 165, 1071234567, '355-2345678-90', '2019-04-22', '2019-04-22', 2),
(23, 'As trgovina', 'NIš', 'Somborska', 47, 108123456, '105-1234567-89', '2019-04-22', '2019-04-22', 3),
(24, 'Metro', 'Niš', 'Milke Proti? Line', 226, 10612345678, '200-7894561-23', '2019-04-22', '2019-04-22', 4),
(25, 'Impex promet', 'Niš', 'Tolstojeva', 55, 109456789, '200-4179447-95', '2019-04-21', '2019-04-21', 1),
(26, 'Tempo', 'Niš', 'Bul.12.februar', 165, 1071234567, '355-2345678-90', '2019-04-22', '2019-04-22', 2),
(29, 'Impex promet', 'Niš', 'Tolstojeva', 55, 109456789, '200-4179447-95', '2019-04-21', '2019-04-21', 1),
(30, 'Tempo', 'Niš', 'Bul.12.februar', 165, 1071234567, '355-2345678-90', '2019-04-22', '2019-04-22', 2),
(31, 'As trgovina', 'NIš', 'Somborska', 64, 108123456, '105-1234567-89', '2019-04-22', '2019-04-24', 3),
(32, 'Metro', 'Niš', 'Milke Proti? Line', 226, 10612345678, '200-7894561-23', '2019-04-22', '2019-04-22', 4),
(33, 'Impex promet', 'Niš', 'Tolstojeva', 55, 109456789, '200-4179447-95', '2019-04-21', '2019-04-21', 1),
(34, 'Tempo', 'Niš', 'Bul.12.februar', 165, 1071234567, '355-2345678-90', '2019-04-22', '2019-04-22', 2),
(36, 'Metro', 'Niš', 'Milke Proti? Line', 226, 10612345678, '200-7894561-23', '2019-04-22', '2019-04-22', 4),
(37, 'Impex promet', 'Niš', 'Tolstojeva', 55, 109456789, '200-4179447-95', '2019-04-21', '2019-04-21', 1),
(38, 'Tempo', 'Niš', 'Bul.12.februar', 165, 1071234567, '355-2345678-90', '2019-04-22', '2019-04-22', 2),
(39, 'As trgovina', 'NIš', 'Somborska', 47, 108123456, '105-1234567-89', '2019-04-22', '2019-04-22', 3),
(40, 'Metro', 'Niš', 'Milke Proti? Line', 226, 10612345678, '200-7894561-23', '2019-04-22', '2019-04-22', 4),
(41, 'Impex promet', 'Niš', 'Tolstojeva', 55, 109456789, '200-4179447-95', '2019-04-21', '2019-04-21', 1),
(42, 'Tempo', 'Niš', 'Bul.12.februar', 165, 1071234567, '355-2345678-90', '2019-04-22', '2019-04-22', 2),
(44, 'Metro', 'Niš', 'Milke Proti? Line', 226, 10612345678, '200-7894561-23', '2019-04-22', '2019-04-22', 4),
(45, 'Impex promet', 'Niš', 'Tolstojeva', 55, 109456789, '200-4179447-95', '2019-04-21', '2019-04-21', 1),
(46, 'Tempo', 'Niš', 'Bul.12.februar', 165, 1071234567, '355-2345678-90', '2019-04-22', '2019-04-22', 2),
(48, 'Metro', 'Niš', 'Milke Proti? Line', 226, 10612345678, '200-7894561-23', '2019-04-22', '2019-04-22', 4),
(49, 'Impex promet', 'Niš', 'Tolstojeva', 55, 109456789, '200-4179447-95', '2019-04-21', '2019-04-21', 1),
(50, 'Tempo', 'Niš', 'Bul.12.februar', 165, 1071234567, '355-2345678-90', '2019-04-22', '2019-04-22', 2),
(52, 'Metro', 'Niš', 'Milke Proti? Line', 226, 10612345678, '200-7894561-23', '2019-04-22', '2019-04-22', 4),
(53, 'Impex promet', 'Niš', 'Tolstojeva', 55, 109456789, '200-4179447-95', '2019-04-21', '2019-04-21', 1),
(54, 'Tempo', 'Niš', 'Bul.12.februar', 165, 1071234567, '355-2345678-90', '2019-04-22', '2019-04-22', 2);

-- --------------------------------------------------------

--
-- Table structure for table `lozinke`
--

CREATE TABLE `lozinke` (
  `lozinke_id` int(6) NOT NULL,
  `password` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `aktivan` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lozinke`
--

INSERT INTO `lozinke` (`lozinke_id`, `password`, `login`, `aktivan`) VALUES
(1, 'pecurka', 'darko', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ovlascenja`
--

CREATE TABLE `ovlascenja` (
  `id` int(6) NOT NULL,
  `naziv_ovlascenja` varchar(255) NOT NULL,
  `nivo_ovlascenja` int(6) NOT NULL,
  `ovlascenje_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `proizvodi`
--

CREATE TABLE `proizvodi` (
  `id` int(6) NOT NULL,
  `naziv_proizvoda` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_mysql561_ci NOT NULL,
  `grupa_proizvoda` int(6) NOT NULL,
  `cena_proizvoda` decimal(10,2) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `proizvodi_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proizvodi`
--

INSERT INTO `proizvodi` (`id`, `naziv_proizvoda`, `grupa_proizvoda`, `cena_proizvoda`, `created_at`, `updated_at`, `proizvodi_id`) VALUES
(1, 'Paradajz', 1, '85.00', '2019-04-26', '2019-04-26', 1),
(13, 'Jabuka', 2, '48.00', '2019-04-26', '2019-04-26', 13),
(15, 'Kupus', 1, '15.00', '2019-04-26', '2019-04-26', 15),
(17, 'Paprika', 1, '15.00', '2019-04-26', '2019-04-26', 17),
(18, 'Šampinjon', 3, '75.00', '2019-04-26', '2019-04-26', 18);

-- --------------------------------------------------------

--
-- Table structure for table `radnici`
--

CREATE TABLE `radnici` (
  `radnici_id` int(6) NOT NULL,
  `ime` varchar(255) COLLATE utf8_croatian_mysql561_ci NOT NULL,
  `prezime` varchar(255) COLLATE utf8_croatian_mysql561_ci NOT NULL,
  `grad` varchar(255) COLLATE utf8_croatian_mysql561_ci NOT NULL,
  `ulica` varchar(255) COLLATE utf8_croatian_mysql561_ci NOT NULL,
  `broj` varchar(255) CHARACTER SET latin1 NOT NULL,
  `jmbg` varchar(13) COLLATE utf8_croatian_mysql561_ci NOT NULL,
  `brlk` int(10) NOT NULL,
  `pu` varchar(255) COLLATE utf8_croatian_mysql561_ci NOT NULL,
  `nacin_zarade` int(6) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `rola` int(6) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_mysql561_ci;

--
-- Dumping data for table `radnici`
--

INSERT INTO `radnici` (`radnici_id`, `ime`, `prezime`, `grad`, `ulica`, `broj`, `jmbg`, `brlk`, `pu`, `nacin_zarade`, `status`, `created_at`, `updated_at`, `rola`) VALUES
(8, 'Boban', 'Petković', 'Niš', 'Somborska', '57/18', '1001971730056', 4882630, 'PU Niš', 2, 1, '2019-04-04', '2019-04-26', 1),
(10, 'Jovan', 'Petković', 'Niš', 'Somborska', '57/18', '0803001730026', 123456, 'PU Niš', 2, 1, '2019-04-04', '2019-04-25', 1),
(12, 'Rajka', 'Petković', 'Plav', 'Limski most', 'bb', '1910969735024', 123456456, 'PU Niš', 1, 1, '2019-04-20', '2019-04-26', 3),
(14, 'Ivan', 'Stojanović ', 'Niš', 'Gornjomatejevačka', '78', '0101974730023', 456789, 'PU Niš', 1, 2, '2019-04-26', '2019-04-26', 4);

-- --------------------------------------------------------

--
-- Table structure for table `radnik_lista_zaduzenja`
--

CREATE TABLE `radnik_lista_zaduzenja` (
  `id` int(6) NOT NULL,
  `kupac_id` int(6) NOT NULL,
  `stavka_id` int(6) NOT NULL,
  `kolicina` int(6) NOT NULL,
  `racun` decimal(10,2) NOT NULL,
  `bonus` decimal(10,2) NOT NULL,
  `radnik_zaduzenje_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radnik_zaduzenje`
--

CREATE TABLE `radnik_zaduzenje` (
  `id` int(6) NOT NULL,
  `radnik_id` int(6) NOT NULL,
  `datum` date NOT NULL,
  `radnik_zaduzenje_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radnik_zarada`
--

CREATE TABLE `radnik_zarada` (
  `id` int(6) NOT NULL,
  `sifra_nacina_zarade` int(6) NOT NULL,
  `procenat` decimal(10,2) NOT NULL DEFAULT '0.00',
  `zarada_racun` decimal(10,2) NOT NULL DEFAULT '0.00',
  `zarada_bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `radnik_zarada_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `routes_id` int(6) NOT NULL,
  `route` varchar(255) NOT NULL,
  `permission` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`routes_id`, `route`, `permission`) VALUES
(1, 'http://local.pecurka/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ulazna_stavka`
--

CREATE TABLE `ulazna_stavka` (
  `ulazna_stavka_id` int(6) NOT NULL,
  `ulazna_stavka` varchar(255) COLLATE utf8_croatian_mysql561_ci NOT NULL,
  `ulazna_stavka_nabavna_cena` double(10,2) NOT NULL,
  `ulazna_stavka_porez` double(10,2) NOT NULL,
  `ulazna_stavka_zaracunata_marza` double(10,2) NOT NULL,
  `ulazna_stavka_dobavljac` varchar(255) COLLATE utf8_croatian_mysql561_ci NOT NULL,
  `marker` int(6) NOT NULL DEFAULT '0',
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_mysql561_ci;

--
-- Dumping data for table `ulazna_stavka`
--

INSERT INTO `ulazna_stavka` (`ulazna_stavka_id`, `ulazna_stavka`, `ulazna_stavka_nabavna_cena`, `ulazna_stavka_porez`, `ulazna_stavka_zaracunata_marza`, `ulazna_stavka_dobavljac`, `marker`, `created_at`, `updated_at`) VALUES
(2, 'Djubrivo', 360.00, 20.00, 23.00, 'Mediana', 0, '0000-00-00', '2019-04-23'),
(8, 'Ulje', 540.00, 20.00, 2.00, 'INA', 0, '2019-03-31', '2019-04-24'),
(26, 'Kiselina', 50.00, 20.00, 15.00, 'Petrohemija', 0, '2019-04-01', '2019-04-24'),
(27, 'Voda', 7.00, 20.00, 20.00, 'Vodovod', 0, '2019-04-02', '2019-04-04'),
(28, 'Najlon', 500.00, 0.00, 0.00, 'Uniplast', 0, '2019-04-02', '2019-04-02'),
(30, 'Kanap', 45.00, 20.00, 0.00, 'Vrcko', 0, '2019-04-02', '2019-04-02'),
(34, 'Creva', 115.00, 20.00, 0.00, 'Plastika', 0, '2019-04-04', '2019-04-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `firma`
--
ALTER TABLE `firma`
  ADD PRIMARY KEY (`firma_id`);

--
-- Indexes for table `grupa_proizvoda`
--
ALTER TABLE `grupa_proizvoda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jezici`
--
ALTER TABLE `jezici`
  ADD PRIMARY KEY (`jezici_id`);

--
-- Indexes for table `kupac_zaduzenje`
--
ALTER TABLE `kupac_zaduzenje`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kupci`
--
ALTER TABLE `kupci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lozinke`
--
ALTER TABLE `lozinke`
  ADD PRIMARY KEY (`lozinke_id`);

--
-- Indexes for table `ovlascenja`
--
ALTER TABLE `ovlascenja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proizvodi`
--
ALTER TABLE `proizvodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radnici`
--
ALTER TABLE `radnici`
  ADD PRIMARY KEY (`radnici_id`),
  ADD UNIQUE KEY `jmbg` (`jmbg`);

--
-- Indexes for table `radnik_lista_zaduzenja`
--
ALTER TABLE `radnik_lista_zaduzenja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radnik_zaduzenje`
--
ALTER TABLE `radnik_zaduzenje`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radnik_zarada`
--
ALTER TABLE `radnik_zarada`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`routes_id`);

--
-- Indexes for table `ulazna_stavka`
--
ALTER TABLE `ulazna_stavka`
  ADD PRIMARY KEY (`ulazna_stavka_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `firma`
--
ALTER TABLE `firma`
  MODIFY `firma_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `grupa_proizvoda`
--
ALTER TABLE `grupa_proizvoda`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jezici`
--
ALTER TABLE `jezici`
  MODIFY `jezici_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `kupac_zaduzenje`
--
ALTER TABLE `kupac_zaduzenje`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kupci`
--
ALTER TABLE `kupci`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `lozinke`
--
ALTER TABLE `lozinke`
  MODIFY `lozinke_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ovlascenja`
--
ALTER TABLE `ovlascenja`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `proizvodi`
--
ALTER TABLE `proizvodi`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `radnici`
--
ALTER TABLE `radnici`
  MODIFY `radnici_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `radnik_lista_zaduzenja`
--
ALTER TABLE `radnik_lista_zaduzenja`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `radnik_zaduzenje`
--
ALTER TABLE `radnik_zaduzenje`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `radnik_zarada`
--
ALTER TABLE `radnik_zarada`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `routes_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ulazna_stavka`
--
ALTER TABLE `ulazna_stavka`
  MODIFY `ulazna_stavka_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
