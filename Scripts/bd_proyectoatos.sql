SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


DROP TABLE IF EXISTS `binario`;
CREATE TABLE IF NOT EXISTS `binario` (
  `ID_BINARIO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(200) NOT NULL,
  `ID_SERVIDOR` int(11) NOT NULL,
  PRIMARY KEY (`ID_BINARIO`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

DROP TABLE IF EXISTS `servicio`;
CREATE TABLE IF NOT EXISTS `servicio` (
  `ID_SERVICIO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(200) NOT NULL,
  `ID_BINARIO` int(11) NOT NULL,
  PRIMARY KEY (`ID_SERVICIO`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

DROP TABLE IF EXISTS `servidor`;
CREATE TABLE IF NOT EXISTS `servidor` (
  `ID_SERVIDOR` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) NOT NULL,
  `RUTA` varchar(2000) DEFAULT NULL,
  `BULK` varchar(200) DEFAULT NULL,
  `MAKE` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_SERVIDOR`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

DROP TABLE IF EXISTS `_f`;
CREATE TABLE IF NOT EXISTS `_f` (
  `ID_F` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(200) NOT NULL,
  `ID_SERVIDOR` int(11) NOT NULL,
  PRIMARY KEY (`ID_F`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

DROP TABLE IF EXISTS `_f_global`;
CREATE TABLE IF NOT EXISTS `_f_global` (
  `ID_F_GLOBAL` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(200) NOT NULL,
  `ID_SERVIDOR` int(11) NOT NULL,
  PRIMARY KEY (`ID_F_GLOBAL`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
