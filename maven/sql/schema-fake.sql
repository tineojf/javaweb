-- Active: 1714077741607@@127.0.0.1@9000@software
CREATE TABLE IF NOT EXISTS `guests` (
  `id` int NOT NULL AUTO_INCREMENT, 
  `name` varchar(50) NOT NULL UNIQUE, 
  `email` varchar(100) NOT NULL,
  `role` varchar(5) NOT NULL DEFAULT 'Guest', 
  PRIMARY KEY (`id`)
);

INSERT INTO `guests` (`name`, `email`, `role`) VALUE ('Franco Tineo', 'tineo@dev.com', 'Admin');

INSERT INTO `guests` (`name`, `email`) VALUES 
('John Doe', 'jhon@mail.com'),
('Deepa Chand', 'deepa@mail.com'),
('Sara Smith', 'sara@mail.com');