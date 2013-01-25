CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `utilisateurs` (
  `identifiant` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `courriel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `numero_telephone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_cellulaire` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_texte_permis` tinyint(1) DEFAULT NULL,
  `niveau` int(1) DEFAULT NULL,
  PRIMARY KEY (`identifiant`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO schema_migrations (version) VALUES ('20130109022457');