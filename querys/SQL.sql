show tables;

CREATE TABLE `guardar` (
  `id_guardado` int NOT NULL AUTO_INCREMENT,
  `meme_id` int NOT NULL,
  `guardardo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_guardado`),
  KEY `meme_id` (`meme_id`),
  CONSTRAINT `guardar_ibfk_1` FOREIGN KEY (`meme_id`) REFERENCES `memes` (`id_meme`) ON DELETE CASCADE
);

CREATE TABLE `memes` (
  `id_meme` int NOT NULL AUTO_INCREMENT,
  `nombreMeme` varchar(30) NOT NULL,
  `fechaMeme` datetime NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`id_meme`)
);