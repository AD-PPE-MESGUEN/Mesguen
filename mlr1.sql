-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Ven 16 Septembre 2016 à 10:23
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `mlr1`
--

-- --------------------------------------------------------

--
-- Structure de la table `chauffeur`
--

CREATE TABLE IF NOT EXISTS `chauffeur` (
  `CHFID` char(32) NOT NULL,
  `CHFNOM` char(32) DEFAULT NULL,
  `CHFPRENOM` char(32) DEFAULT NULL,
  `CHFTEL` char(32) DEFAULT NULL,
  `CHFMAIL` char(32) DEFAULT NULL,
  PRIMARY KEY (`CHFID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `chauffeur`
--

INSERT INTO `chauffeur` (`CHFID`, `CHFNOM`, `CHFPRENOM`, `CHFTEL`, `CHFMAIL`) VALUES
('1010', 'Garcia\r\n', 'Bastien\r\n', '0627434707\r\n', 'Bastien.Garcia@gmail.com'),
('1020', 'Gay\r\n', 'Lorenzo\r\n', '0623874789\r\n', 'Lorenzo.Gay@gmail.com'),
('1030', 'Guillou\r\n', 'Adrien\r\n', '0623032949\r\n', 'Adrien.Guillou@gmail.com'),
('1040', 'Rossignol\r\n', 'Thibault\r\n', '0689078163\r\n', 'Thibault.Rossignol@gmail.com'),
('1050', 'Julien\r\n', 'Baptiste\r\n', '0601892305\r\n', 'Baptiste.Julien@gmail.com'),
('1060', 'Andre\r\n', 'Samuel\r\n', '0685636581\r\n', 'Samuel.Andre@gmail.com'),
('1070', 'Hamon\r\n', 'Anthony\r\n', '0607832509\r\n', 'Anthony.Hamon@gmail.com'),
('1080', 'Raynaud\r\n', 'Noah\r\n', '0629872569\r\n', 'Noah.Raynaud@gmail.com'),
('1090', 'Tessier\r\n', 'Cédric\r\n', '0607836589\r\n', 'Cédric.Tessier@gmail.com'),
('1100', 'Martinez\r\n', 'Katell\r\n', '0685874383\r\n', 'Katell.Martinez@gmail.com'),
('1110', 'Faure\r\n', 'Léonard\r\n', '0603494901\r\n', 'Léonard.Faure@gmail.com'),
('1120', 'Georges\r\n', 'Manon\r\n', '0689438129\r\n', 'Manon.Georges@gmail.com'),
('1130', 'Lenoir\r\n', 'Nicolas\r\n', '0647212943\r\n', 'Nicolas.Lenoir@gmail.com'),
('1140', 'Andre\r\n', 'Dimitri\r\n', '0661698701\r\n', 'Dimitri.Andre@gmail.com'),
('1150', 'Legrand\r\n', 'Tristan\r\n', '0647676529\r\n', 'Tristan.Legrand@gmail.com'),
('1160', 'Dupont\r\n', 'Léonard\r\n', '0669496721\r\n', 'Léonard.Dupont@gmail.com'),
('1170', 'Fleury\r\n', 'Solene\r\n', '0645610725\r\n', 'Solene.Fleury@gmail.com'),
('1180', 'Didier\r\n', 'Enzo\r\n', '0627432101\r\n', 'Enzo.Didier@gmail.com'),
('1190', 'Roy\r\n', 'Élouan\r\n', '0665850981\r\n', 'Élouan.Roy@gmail.com'),
('1200', 'Carlier\r\n', 'Fabrice\r\n', '0621218301\r\n', 'Fabrice.Carlier@gmail.com'),
('1210', 'Dupuis\r\n', 'Aaron\r\n', '0627432101\r\n', 'Aaron.Dupuis@gmail.com'),
('1220', 'Lefevre\r\n', 'Mohamed\r\n', '0681694949\r\n', 'Mohamed.Lefevre@gmail.com'),
('1230', 'Berger\r\n', 'Dimitri\r\n', '0621218301\r\n', 'Dimitri.Berger@gmail.com'),
('1240', 'Boulanger\r\n', 'Alban', '0607250367\r\n', 'Alban.Boulanger@gmail.com'),
('1250', 'Boyer\r\n', 'Kevin\r\n', '0601470529\r\n', 'Kevin.Boyer@gmail.com'),
('1260', 'Laroche\r\n', 'Dylan\r\n', '0689438129\r\n', 'Dylan.Laroche@gmail.com'),
('1270', 'Charles\r\n', 'Dimitri\r\n', '0685636581\r\n', 'Dimitri.Charles@gmail.com'),
('1280', 'Guillou\r\n', 'Hugo\r\n', '0621454123\r\n', 'Hugo.Guillou@gmail.com'),
('1290', 'Caron\r\n', 'Arthur\r\n', '0647694167\r\n', 'Arthur.Caron@gmail.com'),
('1300', 'Paris\r\n', 'Diego\r\n', '0647212943\r\n', 'Diego.Paris@gmail.com'),
('1310', 'Lacombe\r\n', 'Jérémy\r\n', '0607832509\r\n', 'Jérémy.Lacombe@gmail.com'),
('1320', 'Brun\r\n', 'Léon\r\n', '0625638901\r\n', 'Léon.Brun@gmail.com'),
('1330', 'Collet\r\n', 'Yohan\r\n', '0683856121\r\n', 'Yohan.Collet@gmail.com'),
('1340', 'Sauvage\r\n', 'Guillemette\r\n', '0629078325\r\n', 'Guillemette.Sauvage@gmail.com'),
('1350', 'Loiseau\r\n', 'Diego\r\n', '0625638901\r\n', 'Diego.Loiseau@gmail.com'),
('1360', 'Navarro\r\n', 'Jeanne\r\n', '0605256709\r\n', 'Jeanne.Navarro@gmail.com'),
('1370', 'Martinez\r\n', 'Ethan\r\n', '0665850981\r\n', 'Ethan.Martinez@gmail.com'),
('1380', 'Aubry\r\n', 'Mattéo\r\n', '0685034341\r\n', 'Mattéo.Aubry@gmail.com'),
('1390', 'Perret\r\n', 'Dimitri\r\n', '0625638901\r\n', 'Dimitri.Perret@gmail.com'),
('1400', 'Barbier\r\n', 'Guillaume\r\n', '0605474541\r\n', 'Guillaume.Barbier@gmail.com'),
('1410', 'Michel\r\n', 'Tristan\r\n', '0687412529\r\n', 'Tristan.Michel@gmail.com'),
('1420', 'Roche\r\n', 'Evan\r\n', '0667096187\r\n', 'Evan.Roche@gmail.com'),
('1430', 'Collet\r\n', 'Timothée\r\n', '0625874945\r\n', 'Timothée.Collet@gmail.com'),
('1440', 'Royer\r\n', 'Guillaume\r\n', '0645610725\r\n', 'Guillaume.Royer@gmail.com'),
('1450', 'Renaud\r\n', 'Alexis\r\n', '0621454123\r\n', 'Alexis.Renaud@gmail.com'),
('1460', 'Georges\r\n', 'Mehdi\r\n', '0627218705\r\n', 'Mehdi.Georges@gmail.com'),
('1470', 'Albert\r\n', 'Ambre\r\n', '0687832121\r\n', 'Ambre.Albert@gmail.com'),
('1480', 'Cordier\r\n', 'Lisa\r\n', '0607898581\r\n', 'Lisa.Cordier@gmail.com'),
('1490', 'Barbier\r\n', 'Amaury\r\n', '0607898581\r\n', 'Amaury.Barbier@gmail.com'),
('1500', 'Maurice\r\n', 'Kyllian\r\n', '0643030121\r\n', 'Kyllian.Maurice@gmail.com'),
('1510', 'Dupuy\r\n', 'Maéva\r\n', '0647676529\r\n', 'Maéva.Dupuy@gmail.com'),
('1520', 'Simon\r\n', 'Agathe\r\n', '0605214141\r\n', 'Agathe.Simon@gmail.com'),
('1530', 'Descamps\r\n', 'Amine\r\n', '0683872161\r\n', 'Amine.Descamps@gmail.com'),
('1540', 'Poirier\r\n', 'Tom\r\n', '0689272581\r\n', 'Tom.Poirier@gmail.com'),
('1550', 'Chevallier\r\n', 'Enzo\r\n', '0681838701\r\n', 'Enzo.Chevallier@gmail.com'),
('1560', 'Leblanc\r\n', 'Simon\r\n', '0681670345\r\n', 'Simon.Leblanc@gmail.com'),
('1570', 'Pelletier\r\n', 'Tristan\r\n', '0665092307\r\n', 'Tristan.Pelletier@gmail.com'),
('1580', 'Guillou\r\n', 'Esteban\r\n', '0601892505\r\n', 'Esteban.Guillou@gmail.com'),
('1590', 'Colin\r\n', 'Rayane\r\n', '0665496505\r\n', 'Rayane.Colin@gmail.com'),
('1600', 'Langlois\r\n', 'Alexandre\r\n', '0685874383\r\n', 'Alexandre.Langlois@gmail.com'),
('1610', 'Carpentier\r\n', 'Guillemette\r\n', '0687816783\r\n', 'Guillemette.Carpentier@gmail.com'),
('1620', 'Guillon\r\n', 'Alexis\r\n', '0681694949\r\n', 'Alexis.Guillon@gmail.com'),
('1630', 'Gay\r\n', 'Thomas\r\n', '0663252121\r\n', 'Thomas.Gay@gmail.com'),
('1640', 'Jacquot\r\n', 'Benjamin\r\n', '0641896583\r\n', 'Benjamin.Jacquot@gmail.com'),
('1650', 'Gonçalves\r\n', 'Roméo\r\n', '0605256709\r\n', 'Roméo.Gonçalves@gmail.com'),
('1660', 'Girard\r\n', 'Amine\r\n', '0645454569\r\n', 'Amine.Girard@gmail.com'),
('1670', 'Brunel\r\n', 'Arthur\r\n', '0625698581\r\n', 'Arthur.Brunel@gmail.com'),
('1680', 'Durand\r\n', 'Quentin\r\n', '0645012307\r\n', 'Quentin.Durand@gmail.com'),
('1690', 'Chevalier\r\n', 'Ethan\r\n', '0665236169\r\n', 'Ethan.Chevalier@gmail.com'),
('1700', 'Reynaud\r\n', 'Florentin\r\n', '0687410981\r\n', 'Florentin.Reynaud@gmail.com'),
('1710', 'Rossi\r\n', 'Lorenzo\r\n', '0603216743\r\n', 'Lorenzo.Rossi@gmail.com'),
('1720', 'Carpentier\r\n', 'Léon\r\n', '0629078325\r\n', 'Léon.Carpentier@gmail.com'),
('1730', 'Aubert\r\n', 'Sara\r\n', '0689438129\r\n', 'Sara.Aubert@gmail.com'),
('1740', 'Guillot\r\n', 'Émilie\r\n', '0681838701\r\n', 'Émilie.Guillot@gmail.com'),
('1750', 'Julien\r\n', 'Evan\r\n', '0625638901\r\n', 'Evan.Julien@gmail.com'),
('1760', 'Gay\r\n', 'Evan\r\n', '0645454569\r\n', 'Evan.Gay@gmail.com'),
('1770', 'Georges\r\n', 'Léo\r\n', '0687654907\r\n', 'Léo.Georges@gmail.com'),
('1780', 'Legrand\r\n', 'Alban', '0629078325\r\n', 'Alban.Legrand@gmail.com'),
('1790', 'Legrand\r\n', 'Victor\r\n', '0667096187\r\n', 'Victor.Legrand@gmail.com'),
('1800', 'Laporte\r\n', 'Maïlé\r\n', '0601892305\r\n', 'Maïlé.Laporte@gmail.com'),
('1810', 'Fernandes\r\n', 'Julien\r\n', '0681694949\r\n', 'Julien.Fernandes@gmail.com'),
('1820', 'Raymond\r\n', 'Louis\r\n', '0667834147\r\n', 'Louis.Raymond@gmail.com'),
('1830', 'Marques\r\n', 'Nathan\r\n', '0623278767\r\n', 'Nathan.Marques@gmail.com'),
('1840', 'Lenoir\r\n', 'Jules\r\n', '0687816783\r\n', 'Jules.Lenoir@gmail.com'),
('1850', 'Michaud\r\n', 'Ambre\r\n', '0603032301\r\n', 'Ambre.Michaud@gmail.com'),
('1860', 'Gonzalez\r\n', 'Fanny\r\n', '0607250367\r\n', 'Fanny.Gonzalez@gmail.com'),
('1870', 'Lemaitre\r\n', 'David\r\n', '0603276343\r\n', 'David.Lemaitre@gmail.com'),
('1880', 'Legrand\r\n', 'Kylian\r\n', '0603298747\r\n', 'Kylian.Legrand@gmail.com'),
('1890', 'Moreau\r\n', 'Yüna\r\n', '0607250367\r\n', 'Yüna.Moreau@gmail.com'),
('1900', 'Garcia\r\n', 'Jules\r\n', '0645454569\r\n', 'Jules.Garcia@gmail.com'),
('1910', 'Peltier\r\n', 'Evan\r\n', '0643030121\r\n', 'Evan.Peltier@gmail.com'),
('1920', 'Chevallier\r\n', 'Quentin\r\n', '0641818385\r\n', 'Quentin.Chevallier@gmail.com'),
('1930', 'Marie\r\n', 'Samuel\r\n', '0645610725\r\n', 'Samuel.Marie@gmail.com'),
('1940', 'Navarro\r\n', 'Martin\r\n', '0689852943\r\n', 'Martin.Navarro@gmail.com'),
('1950', 'Herve\r\n', 'Laura\r\n', '0629078325\r\n', 'Laura.Herve@gmail.com'),
('1960', 'Guyot\r\n', 'Antonin\r\n', '0645298725\r\n', 'Antonin.Guyot@gmail.com'),
('1970', 'Gonzalez\r\n', 'Adam\r\n', '0627458943\r\n', 'Adam.Gonzalez@gmail.com'),
('1980', 'Michel\r\n', 'Noë\r\n', '0607250367\r\n', 'Noë.Michel@gmail.com'),
('1990', 'Raynaud\r\n', 'Guillaume\r\n', '0663252121\r\n', 'Guillaume.Raynaud@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `commune`
--

CREATE TABLE IF NOT EXISTS `commune` (
  `VILID` char(32) NOT NULL,
  `VILNOM` char(32) DEFAULT NULL,
  PRIMARY KEY (`VILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commune`
--

INSERT INTO `commune` (`VILID`, `VILNOM`) VALUES
('10010', 'GUEREINS\r\n'),
('10020', 'MONTMERLE\r\n'),
('10030', 'JASSERON\r\n'),
('10040', 'CORMOZ\r\n'),
('10050', 'CEYZERIEU\r\n'),
('10060', 'LEYMENT\r\n'),
('10070', 'ARMIX\r\n'),
('10080', 'BEREZIAT\r\n'),
('10090', 'CHEVILLARD\r\n'),
('10100', 'MISERIEUX\r\n'),
('10110', 'OCHIAZ\r\n'),
('10120', 'OUTRIAZ\r\n'),
('10130', 'CHALEINS\r\n'),
('10140', 'IZERNORE\r\n'),
('10150', 'BRION\r\n'),
('10160', 'NIVOLLET\r\n'),
('10170', 'OZAN\r\n'),
('10180', 'MASSIEUX\r\n'),
('10190', 'CLEYZIEU\r\n'),
('10200', 'JOURNANS\r\n'),
('10210', 'MIJOUX\r\n'),
('10220', 'MIONNAY\r\n'),
('10230', 'CONAND\r\n'),
('10240', 'FERNEY\r\n'),
('10250', 'JUJURIEUX\r\n'),
('10260', 'RELEVANT\r\n'),
('10270', 'RIGNAT\r\n'),
('10280', 'FARGES\r\n'),
('10290', 'PERON\r\n'),
('10300', 'PUGIEU\r\n'),
('10310', 'LOCHIEU\r\n'),
('10320', 'BRENAZ\r\n'),
('10330', 'RIGNIEUX\r\n'),
('10340', 'MARBOZ\r\n'),
('10350', 'BEAUREGARD\r\n'),
('10360', 'NATTAGES\r\n'),
('10370', 'CORVEISSIAT\r\n'),
('10380', 'MONTMERLE\r\n'),
('10390', 'MONTAGNAT\r\n'),
('10400', 'LHOPITAL\r\n'),
('10410', 'LANCRANS\r\n'),
('10420', 'HOTONNES\r\n'),
('10430', 'CHATILLON\r\n'),
('10440', 'MARLIEUX\r\n'),
('10450', 'RANCE\r\n'),
('10460', 'LURCY\r\n'),
('10470', 'CHEZERY\r\n'),
('10480', 'LOMPNAS\r\n'),
('10490', 'RANCE\r\n'),
('10500', 'REYRIEUX\r\n'),
('10510', 'NURIEUX\r\n'),
('10520', 'CHALEINS\r\n'),
('10530', 'LANTENAY\r\n'),
('10540', 'BELIGNEUX\r\n'),
('10550', 'CONFORT\r\n'),
('10560', 'CORMOZ\r\n'),
('10570', 'DAGNEUX\r\n'),
('10580', 'HOSTIAS\r\n'),
('10590', 'BOURG\r\n'),
('10600', 'MARIGNIEU\r\n'),
('10610', 'LAVOURS\r\n'),
('10620', 'GENOUILLEUX\r\n'),
('10630', 'NEUVILLE\r\n'),
('10640', 'CEIGNES\r\n'),
('10650', 'MOGNENEINS\r\n'),
('10660', 'ARMIX\r\n'),
('10670', 'BIZIAT\r\n'),
('10680', 'BRION\r\n'),
('10690', 'LAVOURS\r\n'),
('10700', 'PEYZIEUX\r\n'),
('10710', 'BOUVENT\r\n'),
('10720', 'CERTINES\r\n'),
('10730', 'PONT\r\n'),
('10740', 'CLEYZIEU\r\n'),
('10750', 'LAPEYROUSE\r\n'),
('10760', 'AMBERIEUX\r\n'),
('10770', 'MONTLUEL\r\n'),
('10780', 'LOYETTES\r\n'),
('10790', 'BOURG\r\n'),
('10800', 'GENOUILLEUX\r\n'),
('10810', 'CORMOZ\r\n'),
('10820', 'ARBENT\r\n'),
('10830', 'LALLEYRIAT\r\n'),
('10840', 'OCHIAZ\r\n'),
('10850', 'ARANC\r\n'),
('10860', 'BOYEUX\r\n'),
('10870', 'PERREX\r\n'),
('10880', 'PERREX\r\n'),
('10890', 'FOISSIAT\r\n'),
('10900', 'LALLEYRIAT\r\n'),
('10910', 'MONTMERLE\r\n'),
('10920', 'AMBUTRIX\r\n'),
('10930', 'CORBONOD\r\n'),
('10940', 'MISERIEUX\r\n'),
('10950', 'COURMANGOUX\r\n'),
('10960', 'CERDON\r\n'),
('10970', 'CROTTET\r\n'),
('10980', 'ARBENT\r\n'),
('10990', 'OYONNAX\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `documentation`
--

CREATE TABLE IF NOT EXISTS `documentation` (
  `DOCID` char(32) NOT NULL,
  `TRNNUM` char(32) NOT NULL,
  `TYPDOCID` char(32) NOT NULL,
  `DOCURL` char(32) DEFAULT NULL,
  PRIMARY KEY (`DOCID`),
  KEY `I_FK_DOCUMENTATION_TOURNEE` (`TRNNUM`),
  KEY `I_FK_DOCUMENTATION_TYPEDOCUMENTATION` (`TYPDOCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `etape`
--

CREATE TABLE IF NOT EXISTS `etape` (
  `TRNNUM` char(32) NOT NULL,
  `ETPID` char(32) NOT NULL,
  `LIEUID` char(32) NOT NULL,
  `ETPHREMIN` datetime DEFAULT NULL,
  `ETPHREMAX` datetime DEFAULT NULL,
  `ETPHREDEBUT` datetime DEFAULT NULL,
  `ETPHREFIN` datetime DEFAULT NULL,
  `ETPNBPALLIV` smallint(6) DEFAULT NULL,
  `ETPNBPALLIVEUR` smallint(6) DEFAULT NULL,
  `ETPNBPALCHARG` smallint(6) DEFAULT NULL,
  `ETPNBPALCHARGEUR` datetime DEFAULT NULL,
  `ETPCHEQUE` smallint(6) DEFAULT NULL,
  `ETPETATLIV` char(32) DEFAULT NULL,
  `ETPCOMMENTAIRE` char(32) DEFAULT NULL,
  `ETPVAL` char(32) DEFAULT NULL,
  `ETPKM` int(11) DEFAULT NULL,
  PRIMARY KEY (`TRNNUM`,`ETPID`),
  KEY `I_FK_ETAPE_TOURNEE` (`TRNNUM`),
  KEY `I_FK_ETAPE_LIEU` (`LIEUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE IF NOT EXISTS `lieu` (
  `LIEUID` char(32) NOT NULL,
  `VILID` char(32) NOT NULL,
  `LIEUNOM` char(32) DEFAULT NULL,
  `LIEUCOORDGPS` char(32) DEFAULT NULL,
  PRIMARY KEY (`LIEUID`),
  KEY `I_FK_LIEU_COMMUNE` (`VILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `lieu`
--

INSERT INTO `lieu` (`LIEUID`, `VILID`, `LIEUNOM`, `LIEUCOORDGPS`) VALUES
('5010', '10010', 'hutteppiv', '(27,14)'),
('5020', '10020', 'nissa', '(100,70)'),
('5030', '10030', 'jysiza', '(97,1)'),
('5040', '10040', 'sekucyffuh', '(89,19)'),
('5050', '10050', 'rryto', '(87,84)'),
('5060', '10060', 'disodidon', '(21,34)'),
('5070', '10070', 'ddatekujod', '(53,69)'),
('5080', '10080', 'kuddettihob', '(27,31)'),
('5090', '10090', 'llogud', '(6,46)'),
('5100', '10100', 'weholuwus', '(42,94)'),
('5110', '10110', 'ttinnyzi', '(30,85)'),
('5120', '10120', 'ppifferu', '(90,94)'),
('5130', '10130', 'wyke', '(77,5)'),
('5140', '10140', 'ddissa', '(49,76)'),
('5150', '10150', 'cihit', '(17,11)'),
('5160', '10160', 'cesu', '(88,13)'),
('5170', '10170', 'llukyttillu', '(46,66)'),
('5180', '10180', 'cycurela', '(47,1)'),
('5190', '10190', 'kiqyffol', '(16,16)'),
('5200', '10200', 'xovoxadac', '(78,24)'),
('5210', '10210', 'rida', '(77,71)'),
('5220', '10220', 'nudattinni', '(97,78)'),
('5230', '10230', 'tugapuj', '(31,99)'),
('5240', '10240', 'cyca', '(17,3)'),
('5250', '10250', 'tecawa', '(68,52)'),
('5260', '10260', 'fovittu', '(41,84)'),
('5270', '10270', 'toppaffy', '(46,34)'),
('5280', '10280', 'fufi', '(8,74)'),
('5290', '10290', 'rruvavubatt', '(85,52)'),
('5300', '10300', 'tuqodd', '(40,89)'),
('5310', '10310', 'gitte', '(44,9)'),
('5320', '10320', 'deddeda', '(45,88)'),
('5330', '10330', 'cenemivi', '(88,4)'),
('5340', '10340', 'nocu', '(77,88)'),
('5350', '10350', 'middepepal', '(54,4)'),
('5360', '10360', 'ssaffeppo', '(10,19)'),
('5370', '10370', 'fivin', '(61,35)'),
('5380', '10380', 'nnewaw', '(54,83)'),
('5390', '10390', 'nnepej', '(91,99)'),
('5400', '10400', 'mmuffoffuh', '(100,36)'),
('5410', '10410', 'ssezebamme', '(3,21)'),
('5420', '10420', 'conessowet', '(71,77)'),
('5430', '10430', 'hetto', '(94,47)'),
('5440', '10440', 'rroci', '(9,59)'),
('5450', '10450', 'rrelewa', '(58,32)'),
('5460', '10460', 'nnusyq', '(33,85)'),
('5470', '10470', 'tarrarid', '(42,53)'),
('5480', '10480', 'xasselid', '(92,49)'),
('5490', '10490', 'geqemm', '(31,48)'),
('5500', '10500', 'nnunarrymi', '(55,36)'),
('5510', '10510', 'sebotuquk', '(47,35)'),
('5520', '10520', 'voli', '(34,80)'),
('5530', '10530', 'ppemmuffebadd', '(70,25)'),
('5540', '10540', 'ryga', '(49,20)'),
('5550', '10550', 'fewu', '(90,92)'),
('5560', '10560', 'lliddorr', '(99,74)'),
('5570', '10570', 'ppannasi', '(41,12)'),
('5580', '10580', 'kade', '(96,50)'),
('5590', '10590', 'kollacy', '(44,92)'),
('5600', '10600', 'jodavefej', '(44,5)'),
('5610', '10610', 'niwat', '(67,15)'),
('5620', '10620', 'ttipimmoffiss', '(95,10)'),
('5630', '10630', 'ppyzato', '(87,24)'),
('5640', '10640', 'sannenna', '(41,19)'),
('5650', '10650', 'myfudd', '(49,34)'),
('5660', '10660', 'kerre', '(68,95)'),
('5670', '10670', 'myjan', '(14,2)'),
('5680', '10680', 'qasifasse', '(21,73)'),
('5690', '10690', 'xara', '(53,5)'),
('5700', '10700', 'rroffyssise', '(39,19)'),
('5710', '10710', 'zyddovilla', '(96,83)'),
('5720', '10720', 'wannu', '(78,44)'),
('5730', '10730', 'kika', '(4,66)'),
('5740', '10740', 'zettoqu', '(61,80)'),
('5750', '10750', 'qohuhihar', '(59,26)'),
('5760', '10760', 'naxuffun', '(11,68)'),
('5770', '10770', 'ssuppubos', '(7,77)'),
('5780', '10780', 'husi', '(90,17)'),
('5790', '10790', 'doffemmipe', '(90,47)'),
('5800', '10800', 'zysi', '(82,31)'),
('5810', '10810', 'mmurrettah', '(16,44)'),
('5820', '10820', 'lovodd', '(30,54)'),
('5830', '10830', 'ssennacerri', '(86,29)'),
('5840', '10840', 'vomettett', '(21,90)'),
('5850', '10850', 'vadybu', '(98,12)'),
('5860', '10860', 'ppebarrawo', '(33,56)'),
('5870', '10870', 'ttege', '(39,89)'),
('5880', '10880', 'gehaxel', '(53,76)'),
('5890', '10890', 'llanepatox', '(27,49)'),
('5900', '10900', 'vyvyse', '(41,96)'),
('5910', '10910', 'lubifajyrr', '(79,74)'),
('5920', '10920', 'kihel', '(45,61)'),
('5930', '10930', 'llovyve', '(26,50)'),
('5940', '10940', 'savaxaham', '(6,49)'),
('5950', '10950', 'qutoss', '(71,88)'),
('5960', '10960', 'qeffyrre', '(89,82)'),
('5970', '10970', 'nnufynub', '(64,59)'),
('5980', '10980', 'ssecosele', '(78,100)'),
('5990', '10990', 'tajekuzett', '(38,90)');

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `PHOID` char(32) NOT NULL,
  `TRNNUM` char(32) NOT NULL,
  `ETPID` char(32) NOT NULL,
  `PHOURL` char(32) DEFAULT NULL,
  PRIMARY KEY (`PHOID`),
  KEY `I_FK_PHOTO_ETAPE` (`TRNNUM`,`ETPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tournee`
--

CREATE TABLE IF NOT EXISTS `tournee` (
  `TRNNUM` char(32) NOT NULL,
  `VEHIMMAT` char(32) NOT NULL,
  `CHFID` char(32) NOT NULL,
  `TRNCOMMENTAIRE` char(32) DEFAULT NULL,
  `TRNPECCHAUFFEUR` char(32) DEFAULT NULL,
  `TRNDTE` datetime DEFAULT NULL,
  PRIMARY KEY (`TRNNUM`),
  KEY `I_FK_TOURNEE_VEHICULE` (`VEHIMMAT`),
  KEY `I_FK_TOURNEE_CHAUFFEUR` (`CHFID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `typedocumentation`
--

CREATE TABLE IF NOT EXISTS `typedocumentation` (
  `TYPDOCID` char(32) NOT NULL,
  `TYPDOCLIB` char(32) DEFAULT NULL,
  PRIMARY KEY (`TYPDOCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE IF NOT EXISTS `vehicule` (
  `VEHIMMAT` char(32) NOT NULL,
  `VEHNOM` char(32) DEFAULT NULL,
  PRIMARY KEY (`VEHIMMAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `vehicule`
--

INSERT INTO `vehicule` (`VEHIMMAT`, `VEHNOM`) VALUES
('AD810HA', 'Opel'),
('AR870TM', 'Ford\r\n'),
('AT874RQ', 'Fiat\r\n'),
('AZ456ZQ', 'Ford\r\n'),
('AZ858RU', 'Renault\r\n'),
('BU127IT', 'BMW\r\n'),
('CX054NO', 'BMW\r\n'),
('DA343WD', 'BMW\r\n'),
('DC581ER', 'Renault\r\n'),
('DK103MH', 'Citroen\r\n'),
('DO585YN', 'Opel'),
('DO781MR', 'Peugeot\r\n'),
('EL274DU', 'Peugeot\r\n'),
('EN690DG', 'Renault\r\n'),
('EP034DU', 'Ford\r\n'),
('ER090XQ', 'Volkswagen\r\n'),
('EX078BI', 'Peugeot\r\n'),
('FG765WD', 'Renault\r\n'),
('FK721OD', 'BMW\r\n'),
('GL230PM', 'Peugeot\r\n'),
('GL630DQ', 'BMW\r\n'),
('HE383SD', 'Volkswagen\r\n'),
('HG141IH', 'Volkswagen\r\n'),
('HG307ON', 'Fiat\r\n'),
('IB696NG', 'BMW\r\n'),
('IJ610JA', 'Volkswagen\r\n'),
('IL874HI', 'Renault\r\n'),
('IP492NE', 'Volkswagen\r\n'),
('IT070NO', 'Ford\r\n'),
('IV012VM', 'Ford\r\n'),
('IX470LM', 'Citroen\r\n'),
('IZ090HM', 'Opel'),
('IZ654NW', 'Opel'),
('JK989UX', 'Fiat\r\n'),
('JO943MX', 'Renault\r\n'),
('JQ125OF', 'Ford\r\n'),
('JW741MZ', 'Volkswagen\r\n'),
('KD656FW', 'Ford\r\n'),
('KH454VK', 'Renault\r\n'),
('KJ032TE', 'BMW\r\n'),
('KP616XK', 'Opel'),
('LK127QV', 'Renault\r\n'),
('LM967IT', 'Citroen\r\n'),
('LY325ET', 'BMW\r\n'),
('MD618FI', 'Renault\r\n'),
('MH830TO', 'Volkswagen\r\n'),
('ML036JU', 'Renault\r\n'),
('MN074JW', 'Peugeot\r\n'),
('MP050LI', 'Renault\r\n'),
('NI363UR', 'Renault\r\n'),
('NK989ED', 'Opel'),
('NQ789UH', 'Renault\r\n'),
('ON438NO', 'Citroen\r\n'),
('OR232PK', 'Fiat\r\n'),
('OX858XE', 'Ford\r\n'),
('PS343AB', 'Peugeot\r\n'),
('PW565SH', 'Opel'),
('PW985AX', 'Fiat\r\n'),
('QN698RI', 'Peugeot\r\n'),
('QV814NA', 'Ford\r\n'),
('QX890XK', 'Opel'),
('RA769KZ', 'Peugeot\r\n'),
('RE141OJ', 'Volkswagen\r\n'),
('RG949UJ', 'Citroen\r\n'),
('RK101QP', 'Peugeot\r\n'),
('RK167AB', 'Citroen\r\n'),
('RS303IH', 'BMW\r\n'),
('RW349SV', 'Ford\r\n'),
('SD698ZC', 'Fiat\r\n'),
('SJ210PC', 'Ford\r\n'),
('SN650VA', 'Fiat\r\n'),
('SP096HA', 'Fiat\r\n'),
('ST232NM', 'Opel'),
('ST838VW', 'BMW\r\n'),
('SV418LW', 'Citroen\r\n'),
('TI185WZ', 'Citroen\r\n'),
('TU549SX', 'Opel'),
('UF876NE', 'Peugeot\r\n'),
('UR670RU', 'Ford\r\n'),
('UT890RQ', 'Citroen\r\n'),
('UV612NC', 'Ford\r\n'),
('VG305AT', 'BMW\r\n'),
('VK347KT', 'Volkswagen\r\n'),
('VM103AZ', 'Citroen\r\n'),
('WF292BW', 'Renault\r\n'),
('WP418ZE', 'Ford\r\n'),
('WR612ZA', 'Opel'),
('WZ012FG', 'Renault\r\n'),
('XO365SH', 'BMW\r\n'),
('XU581WD', 'Citroen\r\n'),
('YB430VA', 'Volkswagen\r\n'),
('YF836LG', 'Renault\r\n'),
('YH492BE', 'Ford\r\n'),
('YL496VE', 'Ford\r\n'),
('YL632BK', 'Fiat\r\n'),
('YP456RM', 'BMW\r\n'),
('YX498RG', 'BMW\r\n'),
('ZY763KD', 'BMW\r\n'),
('ZY983SB', 'Fiat\r\n');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `documentation`
--
ALTER TABLE `documentation`
  ADD CONSTRAINT `documentation_ibfk_1` FOREIGN KEY (`TRNNUM`) REFERENCES `tournee` (`TRNNUM`),
  ADD CONSTRAINT `documentation_ibfk_2` FOREIGN KEY (`TYPDOCID`) REFERENCES `typedocumentation` (`TYPDOCID`);

--
-- Contraintes pour la table `etape`
--
ALTER TABLE `etape`
  ADD CONSTRAINT `etape_ibfk_1` FOREIGN KEY (`TRNNUM`) REFERENCES `tournee` (`TRNNUM`),
  ADD CONSTRAINT `etape_ibfk_2` FOREIGN KEY (`LIEUID`) REFERENCES `lieu` (`LIEUID`);

--
-- Contraintes pour la table `lieu`
--
ALTER TABLE `lieu`
  ADD CONSTRAINT `lieu_ibfk_1` FOREIGN KEY (`VILID`) REFERENCES `commune` (`VILID`);

--
-- Contraintes pour la table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`TRNNUM`, `ETPID`) REFERENCES `etape` (`TRNNUM`, `ETPID`);

--
-- Contraintes pour la table `tournee`
--
ALTER TABLE `tournee`
  ADD CONSTRAINT `tournee_ibfk_1` FOREIGN KEY (`VEHIMMAT`) REFERENCES `vehicule` (`VEHIMMAT`),
  ADD CONSTRAINT `tournee_ibfk_2` FOREIGN KEY (`CHFID`) REFERENCES `chauffeur` (`CHFID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
