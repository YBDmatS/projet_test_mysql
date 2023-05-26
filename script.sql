
CREATE DATABASE videgrenierenligne;

CREATE USER 'videgrenierenligne'@'%' IDENTIFIED BY '1234!';
GRANT ALL PRIVILEGES ON videgrenierenligne.* TO 'videgrenierenligne'@'%';
FLUSH PRIVILEGES;

USE videgrenierenligne;

CREATE TABLE videgrenierenligne.articles (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `published_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `picture` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO videgrenierenligne.articles (`id`, `name`, `description`, `published_date`, `user_id`, `views`, `picture`) VALUES
(1, 'Mappemonde à gratter', 'Carte du monde à gratter. Neuve dans son emballage d’origine', '2018-05-28', 1, 4, '1.jpeg'),
(2, 'Guide Berlin', 'Guide de voyage Lonely Planet. Petit format\npas de plan détachable', '2018-05-28', 1, 29, '2.jpeg'),
(3, 'Jeu Harry Potter', 'Harry Potter et la coupe de feu. Jeu Nintendo Gamecube. Complet,\ntrès bon état', '2018-05-28', 1, 65, '3.jpeg'),
(4, 'Peinture Cheval', 'Tableau numéro d’art cheval. Fait main', '2018-05-28', 1, 7, '4.jpeg'),
(5, 'Cluedo Games of Thrones', 'Jeu de société Cluedo Games of Thrones en très bon état. nous n’y avons joué que quelques fois, et j’ai entre temps eu le coup de cœur pour le Cluedo Harry Potter.\nje me sépare donc de celui ci pour acheter l’autre version :)', '2018-05-28', 1, 8, '5.jpeg');
