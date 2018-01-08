SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


--
-- Struktura tabulky `articles`
--

DROP TABLE IF EXISTS `mochurap_articles`;
CREATE TABLE IF NOT EXISTS `mochurap_articles` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_czech_ci,
  `tags` varchar(200) COLLATE utf8_czech_ci COMMENT 'tagy, oddelene strednikem',
  `filedata` mediumblob,
  `comments` mediumtext COLLATE utf8_czech_ci,
  `review1` smallint DEFAULT NULL,
  `review2` smallint DEFAULT NULL,
  `review3` smallint DEFAULT NULL,
  `accepted` tinyint DEFAULT '-1' COMMENT '-1 = ceka; 0 = ne; 1 = ano',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Struktura tabulky `authors`
--

DROP TABLE IF EXISTS `mochurap_authors`;
CREATE TABLE IF NOT EXISTS `mochurap_authors` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `author_id` smallint DEFAULT NULL,
  `article_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabulky `reviews`
--

DROP TABLE IF EXISTS `mochurap_reviews`;
CREATE TABLE IF NOT EXISTS `mochurap_reviews` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `reviewer_id` smallint DEFAULT NULL,
  `criteria1` tinyint DEFAULT NULL,
  `criteria2` tinyint DEFAULT NULL,
  `criteria3` tinyint DEFAULT NULL,
  `criteria4` tinyint DEFAULT NULL,
  `criteria5` tinyint DEFAULT NULL,
  `submitted` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

DROP TABLE IF EXISTS `mochurap_users`;
CREATE TABLE IF NOT EXISTS `mochurap_users` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `username` varchar(200) COLLATE utf8_czech_ci NOT NULL,
  `fullname` varchar(200) COLLATE utf8_czech_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_czech_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_czech_ci DEFAULT NULL,
  `rights` tinyint DEFAULT '1' COMMENT '1=add;2=add+review;3=admin',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Data tabulky `users`
--  

INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("admin","Pavel Mochura","d033e22ae348aeb5660fc2140aec35850c4da997","mochurap@students.zcu.cz",3);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("rec1","David Beránek","e0146cce4f0533f5d4fa389b2921b4bda14cac67","rec1@mail.com",2);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("rec2","Jana Makulová","e0146cce4f0533f5d4fa389b2921b4bda14cac67","rec2@mail.com",2);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("rec3","Václav Hájek","e0146cce4f0533f5d4fa389b2921b4bda14cac67","rec3@mail.com",2);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("rec4","Tomáš Bartoň","e0146cce4f0533f5d4fa389b2921b4bda14cac67","rec4@mail.com",2);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("rec5","Natálie Husovská","e0146cce4f0533f5d4fa389b2921b4bda14cac67","rec5@mail.com",2);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("rec6","Lenka Suková","e0146cce4f0533f5d4fa389b2921b4bda14cac67","rec6@mail.com",2);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr1","Oldřich Bőhm","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr1@mail.com",1);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr2","Michal Skoták","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr2@mail.com",1);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr3","Růžena Samcová","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr3@mail.com",1);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr4","Alena Richterová","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr4@mail.com",1);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr5","Bohuslav Dvořák","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr5@mail.com",1);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr6","Tomáš Kosek","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr6@mail.com",1);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr7","Iveta Dyachuk","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr7@mail.com",1);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr8","Emma Vedralová","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr8@mail.com",1);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr9","Čeněk Nenadál","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr9@mail.com",1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
