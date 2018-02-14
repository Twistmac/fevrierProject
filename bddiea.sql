-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.19 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour bddiea
CREATE DATABASE IF NOT EXISTS `bddiea` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bddiea`;

-- Export de la structure de la table bddiea. administrateur
CREATE TABLE IF NOT EXISTS `administrateur` (
  `IDADMIN` int(11) NOT NULL AUTO_INCREMENT,
  `IDPERSONNEPHYSIQUE` int(11) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`IDADMIN`),
  KEY `FK_ASSOCIATION_27` (`IDPERSONNEPHYSIQUE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table bddiea.administrateur : 0 rows
/*!40000 ALTER TABLE `administrateur` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrateur` ENABLE KEYS */;

-- Export de la structure de la table bddiea. afa
CREATE TABLE IF NOT EXISTS `afa` (
  `IDAFA` int(11) NOT NULL AUTO_INCREMENT,
  `IDPERSONNEPHYSIQUE` int(11) DEFAULT NULL,
  `IDPERSONNEMORALE` int(11) DEFAULT NULL,
  `STATUTCOMPTE` tinyint(1) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `NUMINSCRIPTION` varchar(250) DEFAULT NULL,
  `STATE` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`IDAFA`),
  KEY `FK_ASSOCIATION_2` (`IDPERSONNEMORALE`),
  KEY `FK_ASSOCIATION_26` (`IDPERSONNEPHYSIQUE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table bddiea.afa : 0 rows
/*!40000 ALTER TABLE `afa` DISABLE KEYS */;
/*!40000 ALTER TABLE `afa` ENABLE KEYS */;

-- Export de la structure de la table bddiea. apl
CREATE TABLE IF NOT EXISTS `apl` (
  `IDAPL` int(11) NOT NULL AUTO_INCREMENT,
  `IDPERSONNEMORALE` int(11) DEFAULT NULL,
  `LATITUDE` varchar(250) DEFAULT NULL,
  `LONGITUDE` varchar(250) DEFAULT NULL,
  `STATUTCOMPTE` tinyint(1) DEFAULT NULL,
  `DATECRETION` date DEFAULT NULL,
  `CONTRATURL` varchar(250) DEFAULT NULL,
  `ETATCONTRAT` tinyint(1) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `NUMINSCRIPTION` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`IDAPL`),
  KEY `FK_ASSOCIATION_7` (`IDPERSONNEMORALE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table bddiea.apl : 0 rows
/*!40000 ALTER TABLE `apl` DISABLE KEYS */;
/*!40000 ALTER TABLE `apl` ENABLE KEYS */;

-- Export de la structure de la table bddiea. blogs
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `comments_id` int(11) DEFAULT NULL,
  `tag` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nblecture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statut` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Export de données de la table bddiea.blogs : ~7 rows (environ)
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` (`id`, `titre`, `contenu`, `users_id`, `comments_id`, `tag`, `created_at`, `updated_at`, `nblecture`, `statut`) VALUES
	(1, 'Louer Abordable : le dispositif pour payer moins d’impôts sur ses revenus fonciers', '<p>La plupart du temps, lorsque l’on investit dans l’immobilier, on souhaite se créer un patrimoine pour en profiter plus tard. L’objectif premier est souvent la retraite. La peur d’avoir à subir une perte de revenus contraint de nombreux Français à investir dans la pierre.\r\n</p>\r\n<p>Sauf que l’on oublie parfois que, qui dit revenus fonciers dit fiscalité qui s’alourdit. Et c’est ici que les choses se corsent.</p>\r\n<p>Car tout investissement locatif reste lourdement taxé : les revenus fonciers viennent s’ajouter aux autres revenus (salariés dans la plupart des cas) et sont taxés à hauteur de la tranche marginale d’imposition du contribuable. Mais, ce n’est pas tout : les revenus tirés de la pierre font également l’objet de prélèvements sociaux au taux unique de 15, 5 %.</p>\r\n<p>Ce système de double imposition doit être anticipé par l’investisseur. Parmi les parades légales pour réduire ces impôts, on trouve le dispositif Louer Abordable.</p>\r\n<p>Depuis des décennies, les gouvernements successifs essaient de résoudre la quadrature du cercle.\r\n\r\nD’un côté, l’accès au logement pour une part non négligeable de la population française reste chose compliquée : près de 15 % des Français sont touchées par la tristement célèbre « crise du logement ». Qu’elles soient sans domicile fixe, contraintes de se loger chez des proches ou hébergées dans des taudis, ces personnes vivent au quotidien des situations pénibles.\r\n\r\nParallèlement, le niveau des loyers a globalement augmenté, connaissant même une hausse brutale durant les années 2000. A Paris, ils ont littéralement explosé puisqu’ils ont été multiplié par deux en 10 ans.</p>', NULL, NULL, 'Appartement, Grenier, Villa, Maison', '2017-11-06 22:00:00', '2018-01-15 12:49:21', '2', 0),
	(2, 'Quel est le premier investissement immobilier idéal pour un jeune couple ?', '<p>Que ce soit pour y vivre, ou pour en faire un complément de revenu, investir dans l’immobilier reste une valeur sûre. Pour un jeune couple, le premier investissement immobilier idéal est, incontestablement, l’achat de la résidence principale.\r\n\r\nL’acquisition de la première résidence apportera au couple un sentiment de sécurité et leur est bénéfique sur le plan financier. En effet, la différence de prix entre la location et l’achat immobilier est minime, surtout avec les taux de crédit favorisant les primo-accédants. De plus, opter pour un investissement immobilier c’est aussi se construire un patrimoine pour la génération future.\r\n\r\nNéanmoins, cet investissement est loin d’être sans risques. Sans préparation, l’achat de votre premier appartement peut vite tourner au cauchemar et même gâcher vos projets d’avenir. Pour vous aider, voici quelques astuces pour effectuer votre premier investissement.</p>\r\n<p>Premier investissement immobilier : être primo-accédant</p>\r\n<p>Le terme « primo-accédant » est un terme utilisé dans le domaine de l’immobilier pour désigner un particulier se lançant dans son premier achat immobilier. En général, un primo-accédant n’est pas encore propriétaire d’un bien immobilier. Ce sont, en général, des jeunes couples dont la plupart sont dans une classe d’âge de 25 à 34 ans.\r\n\r\nPlus de 80% des primo-accédants sont des couples à la recherche de leur premier foyer dont les 58% ont au moins un enfant. Les plus prisés par ces jeunes parents sont les maisons de ville ou les pavillons. Plus précisément, le terme « primo-accédant » ne s’applique pas forcement à une personne encore nouvelle dans le monde de l’investissement immobilier.\r\n\r\nEn effet, celui-ci peut être un ancien propriétaire mais pour une raison ou une autre ne l’est plus depuis plus de deux ans avant son prochain achat. Enfin, une personne possédant plusieurs biens immobiliers peut très bien être juridiquement un primo-accédant si elle n’est pas propriétaire de sa résidence principale.</p>', NULL, NULL, 'Appartement, Grenier, Villa, Maison', '2017-11-06 22:00:00', NULL, '', 0),
	(4, 'Nos conseils pour mettre en valeur sa maison pour mieux la vendre', '<p>Vendre une maison n’est pas une mince à faire, surtout si vous ne souhaitez pas avoir recours aux services d’une agence immobilière. Il faut assurer le respect de certaines normes de construction. Les inspecteurs sont particulièrement exigeants quant à la performance des immeubles de nos jours.\r\n\r\nNéanmoins, pour les particuliers en quête d’un nouvel investissement, l’aménagement est le meilleur moyen de les convaincre. Les visites sont une partie importante de la transaction.\r\n\r\nPour vous, qui pour une raison ou une autre, doit trouver un acheteur rapidement pour votre résidence, voici quelques conseils pour mettre en valeur la maison afin de mieux la vendre : rapidement et à bon prix.</p>\r\n<p>Une maison, par définition, doit être confort et pratique. On dit souvent que votre décoration doit être à l’image de votre personnalité. D’ailleurs, sur internet, vous avez plusieurs astuces pour ce faire.\r\n\r\nDifférents styles sont disponibles, allant du vintage au plus moderne. Néanmoins, pour une vente, opter pour un aménagement neutre est de mise.</p>', NULL, NULL, 'Appartement, Grenier, Villa, Maison', '2017-11-07 22:00:00', '2017-11-22 11:06:44', '', 0),
	(5, 'Construire pour revendre : ce qu’il faut savoir', '<p>L’immobilier est et sera toujours une valeur sûre. Surtout que depuis peu, les crédits immobiliers sont plus accessibles pour tous les ménages. Mais pour rentabiliser au maximum son placement, il reste encore à bien choisir ses investissements. Entre les SCPI, les achats clés en main et l’alternative de faire construire son bien : on n’a aujourd’hui que l’embarras du choix.\r\n\r\nEt il semble que la dernière option soit plus avantageuse que les autres. En outre, les possibilités de rentabilisations sont encore plus nombreuses. Les propriétaires peuvent faire une location, proposer des baux commerciaux, ou simplement revendre leur bien. Depuis quelques années, le dispositif fiscal en matière d’investissement immobilier ne cesse d’augmenter.\r\n\r\nOn peut voir que trouver un logement décent sans payer le prix fort est assez difficile. De plus en plus de ménages optent désormais pour la construction dans le but d’une revente, pour le bonheur des entrepreneurs. Le point.</p>\r\n<p>Les frais de construction d’une maison reviennent moins chers que d’acheter une maison clé en main. Certes, acquérir une maison peut être plus rapide, mais la première option revêt des avantages plus intéressants.</p>\r\n<p>Le prix moyen pour un terrain constructible est de 140€ le m2, alors que le prix moyen pour une maison est de 1 850€ le m2 et 3 300€ pour un appartement.</p>\r\n<p>Tout dépend des régions dans lesquels vous investissez. Dans les villes comme Paris, Nantes, Bordeaux, Lyon et toute la côte méditerranéenne entre Monaco et Montpellier le prix moyen est de 3 700€ le m2 pour une maison alors que pour le reste de la France, il sera de 1 800€ le m2.</p>\r\n<p>Tout dépend des régions dans lesquels vous investissez. Dans les villes comme Paris, Nantes, Bordeaux, Lyon et toute la côte méditerranéenne entre Monaco et Montpellier le prix moyen est de 3 700€ le m2 pour une maison alors que pour le reste de la France, il sera de 1 800€ le m2.</p>', NULL, NULL, 'Appartement, Grenier, Villa, Maison', '2017-11-07 22:00:00', '2017-11-22 11:07:02', '', 0),
	(6, 'Zoom sur le métier de promoteur immobilier', '<p> L’immobilier est un secteur très vaste et pris en charge par de nombreuses personnes qui présentent des fonctions différentes à des responsabilités toutes aussi différentes. Avec une influence grandissante sur l’économie à l’échelle mondiale, l’immobilier est un des grands piliers de la mise en marche d’une économie très importante.</p>\r\n<p>Bien que de nombreuses personnes travaillent dans l’immobilier, et cela aussi bien en tant que professionnel que particulier, il est nécessaire d’avoir des compétences bien définies. Un des métiers les plus courants dans le domaine est le métier de « promoteur immobilier ».</p>\r\n<p>Mais que peut bien faire un promoteur immobilier ?</p>\r\n<p>Un promoteur immobilier est celui qui vend des espaces construits ou à construire. Auparavant, on le connaissait comme étant un monteur d’affaire immobilière. En effet des dizaines d’années plus tôt, avec une intense construction de logements, les spéculations immobilières forgèrent petit à petit le personnage du promoteur immobilier jusqu’à lui attribué une fonction officielle.</p>\r\n<p>Et dans son acception, le promoteur immobilier est celui qui est à la charge du processus de l’offre sur le marché. C’est-à-dire qu’il prend en compte les demandes, les aspects réglementaires, le foncier et les moyens de financement dans un projet immobilier tout en prenant compte les risques.</p>', NULL, NULL, 'Appartement, Grenier, Villa, Maison', '2017-11-07 22:00:00', '2017-11-22 11:07:10', '', 0),
	(7, 'Tout savoir sur l’assurance pour un prêt immobilier', '<p>Lorsque vous prenez un crédit immobilier, votre banquier vous parlera surement de l’assurance prêt immobilier. Votre banquier peut vous le réclamer pour un prêt à taux zéro, pour un prêt relais ou pour tout autre type de prêt immobilier. Vous pouvez entendre et lire que cette assurance est obligatoire, ce qui n’est pas le cas. Nous allons vous apporter dans ce dossier plusieurs informations par rapport à ce sujet et vous présenter si elle est vraiment indispensable pour votre prêt.</p>\r\n<p>Lorsqu’on contracte un crédit immobilier et qu’on évoque l’assurance prêt immobilier ou l’assurance emprunteur correspondante, on se demande si elle est obligatoire. Nous tenons à souligner que contrairement à l’assurance auto ou l’assurance habitation, elle n’est pas légalement obligatoire, mais certains établissements bancaires et établissements financiers peuvent vous l’exiger.</p>\r\n<p>Depuis 2010 avec l’entrée en vigueur de la loi Lagarde, vous n’êtes pas obligé de prendre l’offre d’assurance proposée par votre prêteur, ce qui vous offre un libre choix de l’assurance-crédit qui vous convient, et ce, auprès d’un autre établissement. Dans certains cas, notamment ceux qui ont un patrimoine important, il est possible de contourner cette obligation de l’assurance prêt immobilier en mettant en garantie vos biens</p>\r\n<p>A quoi sert-elle ?</p>\r\n<p>Si certains établissements bancaires ou institutions financières exigent l’assurance crédit immobilier, c’est pour se protéger de toute défaillance de remboursement de son client. Il faut noter que cette assurance ne protège pas que l’organisme prêteur, car il couvre également le souscripteur de crédit.</p>', NULL, NULL, 'Appartement, Grenier, Villa, Maison', '2017-11-07 22:00:00', '2017-11-22 11:13:27', '', 0),
	(8, 'Assurances : quels sont les points à vérifier avant de déménager', '<p>Vous avez trouvé un nouveau logement et allez quitter l’ancien ? En plus de devoir gérer votre déménagement, préoccupez-vous de vos contrats d’assurance. Nous vous expliquons comment faire.</p>\r\n<p>Si vous optez pour  un déménageur professionnel</p>\r\n<p>Ce dernier vous fait profiter de son assurance responsabilité civile, qui jouera s’il abime l’un des objets transporté pour votre compte. Attention, vous ne pourrez pas faire jouer sa responsabilité si les meubles ou objets sont endommagés avant le déménagement, si vous avez mal emballé vos biens personnels ou si vos cartons de déménagement sont volés durant le voyage.</p>\r\n<p>Astuce : lisez avec application le contrat que vous fera signer le transporteur, il précise les garanties dont vous bénéficierez en cas de sinistre, et notamment le plafond de remboursement. Si vous avez des biens de valeurs (meubles design, objets de collection,…), n’hésitez pas à faire augmenter ce montant, pour être bien remboursé en cas de problème.</p>\r\n<p>Si vous effectuez vous même votre déménagement</p>\r\n<p>Dans ce cas, vous pourrez faire jouer la responsabilité civile du proche qui vous aide à déménager et qui a abimé l’un des biens transportés. A condition qu’il ait un contrat d’habitation, ou une carte bancaire, qui couvre sa responsabilité civile. Là aussi soyez vigilant en examinant à la loupe le montant des garanties. A noter : le contrat d’assurance habitation de votre ancien logement peut parfois prendre en charge une partie de votre déménagement, voire vous offrir des garanties spécifiques.</p>\r\n<p>Que faire de vos autres contrats ?</p>\r\n<p>Outre que vous devrez souscrire un contrat multirisques habitation avant de vous installer dans votre nouveau domicile, il faut aussi indiquer votre nouvelle adresse à tous vos assureurs. Même si vous conservez votre contrat, la tarification peut varier. Car les assureurs prennent en compte différents paramètres pour fixer le montant de leurs primes. Si vous déménagez dans une région où les cambriolages sont plus nombreux, le prix de votre assurance habitation augmentera en conséquence. Si votre nouvel appartement compte un garage, alors qu’auparavant votre véhicule stationnait dans la rue, votre prime d’assurance voiture diminuera. Enfin, si vous partez vous installer sur la Côte d’Azur ou en région parisienne où les dépassements d’honoraires sont monnaie courante, vous paierez plus cher la même couverture santé. Déménager peut donc être le bon moment pour résilier votre assurance.</p>', NULL, NULL, 'Maison, contrat, immeuble', '2017-11-22 06:54:52', '2017-11-24 02:33:58', '', 0);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;

-- Export de la structure de la table bddiea. commentaire
CREATE TABLE IF NOT EXISTS `commentaire` (
  `IDCOMMENTAIRE` int(11) NOT NULL AUTO_INCREMENT,
  `LIBELLE` varchar(250) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`IDCOMMENTAIRE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table bddiea.commentaire : 0 rows
/*!40000 ALTER TABLE `commentaire` DISABLE KEYS */;
/*!40000 ALTER TABLE `commentaire` ENABLE KEYS */;

-- Export de la structure de la table bddiea. encours_dachat
CREATE TABLE IF NOT EXISTS `encours_dachat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDPRODUIT` int(11) DEFAULT NULL,
  `LOGIN` varchar(1500) DEFAULT NULL,
  `AGENCE` varchar(1500) DEFAULT NULL,
  `DATEACHAT` date DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ASSOCIATION_32` (`IDPRODUIT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table bddiea.encours_dachat : 0 rows
/*!40000 ALTER TABLE `encours_dachat` DISABLE KEYS */;
/*!40000 ALTER TABLE `encours_dachat` ENABLE KEYS */;

-- Export de la structure de la table bddiea. etatpossessionproduit
CREATE TABLE IF NOT EXISTS `etatpossessionproduit` (
  `IDETATPOSSESSIONPRODUIT` int(11) NOT NULL AUTO_INCREMENT,
  `LIBELLE` varchar(250) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`IDETATPOSSESSIONPRODUIT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table bddiea.etatpossessionproduit : 0 rows
/*!40000 ALTER TABLE `etatpossessionproduit` DISABLE KEYS */;
/*!40000 ALTER TABLE `etatpossessionproduit` ENABLE KEYS */;

-- Export de la structure de la table bddiea. facture
CREATE TABLE IF NOT EXISTS `facture` (
  `IDFACTURE` int(11) NOT NULL AUTO_INCREMENT,
  `IDTYPEFACTURE` int(11) NOT NULL,
  `REFERENCE` varchar(250) DEFAULT NULL,
  `DATECREATIONFACTURE` date DEFAULT NULL,
  `IDPAYEUR` int(11) DEFAULT NULL,
  `IDPAYE` int(11) DEFAULT NULL,
  `TYPEPAYEUR` varchar(250) DEFAULT NULL,
  `TYPEPAYE` varchar(250) DEFAULT NULL,
  `URLFICHIERFACTURE` varchar(250) DEFAULT NULL,
  `DATEPAIEMENTFACTURE` date DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`IDFACTURE`),
  KEY `FK_ASSOCIATION_24` (`IDTYPEFACTURE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table bddiea.facture : 0 rows
/*!40000 ALTER TABLE `facture` DISABLE KEYS */;
/*!40000 ALTER TABLE `facture` ENABLE KEYS */;

-- Export de la structure de la table bddiea. favoris
CREATE TABLE IF NOT EXISTS `favoris` (
  `IDFAVORIS` int(11) NOT NULL AUTO_INCREMENT,
  `IDPRODUIT` char(10) NOT NULL,
  `LOGIN` varchar(1500) NOT NULL,
  `CREATED_AT` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`IDFAVORIS`),
  KEY `FK_favoris_produits` (`IDPRODUIT`),
  CONSTRAINT `FK_favoris_produits` FOREIGN KEY (`IDPRODUIT`) REFERENCES `produits` (`idproduit`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Export de données de la table bddiea.favoris : ~5 rows (environ)
/*!40000 ALTER TABLE `favoris` DISABLE KEYS */;
INSERT INTO `favoris` (`IDFAVORIS`, `IDPRODUIT`, `LOGIN`, `CREATED_AT`, `UPDATED_AT`) VALUES
	(1, 'ID_REF010', 'Twist', '2018-01-16 00:48:38', '2018-01-16 00:48:39'),
	(2, 'ID_REF002', 'Twist', '2018-01-16 00:59:04', '2018-01-16 00:59:06'),
	(3, 'ID_REF014', 'Twist', '2018-01-16 01:06:50', '2018-01-16 01:06:51'),
	(4, 'ID_REF009', 'Twist', '2018-01-22 16:56:42', NULL),
	(5, 'ID_REF015', 'Twist', '2018-01-23 12:24:53', NULL);
/*!40000 ALTER TABLE `favoris` ENABLE KEYS */;

-- Export de la structure de la table bddiea. images
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `urlimage1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urlimage2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urlimage3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Export de données de la table bddiea.images : ~23 rows (environ)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id`, `urlimage1`, `urlimage2`, `urlimage3`, `type`, `blog_id`, `created_at`, `updated_at`) VALUES
	(1, 'Surfers_Paradise.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, '2017-11-06 22:00:00', NULL),
	(2, 'Melbourne-Appartement.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, '2017-11-06 22:00:00', NULL),
	(3, 'benowa-waters.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, '2017-11-06 22:00:00', NULL),
	(4, 'Valla-beach-australie-a-1.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, '2017-11-06 22:00:00', NULL),
	(5, 'Redland-Bay.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, '2017-11-06 22:00:00', NULL),
	(6, 'Mount-Barker-australie-2.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, '2017-11-06 22:00:00', NULL),
	(7, 'Tugun-terrain.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, '2017-11-06 22:00:00', NULL),
	(8, 'Bridgewater-Terrain.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, '2017-11-06 22:00:00', NULL),
	(9, 'Bangholme-Bureau-commercial.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, '2017-11-06 22:00:00', NULL),
	(10, 'Australie-Entrepôt.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, '2017-11-06 22:00:00', NULL),
	(11, 'Newport-Bureau.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, '2017-11-06 22:00:00', NULL),
	(12, 'Beenleigh-Bureau.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, '2017-11-06 22:00:00', NULL),
	(13, 'Normanby-Bureau.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, '2017-11-06 22:00:00', NULL),
	(14, 'Melbourne_AUSTRALIE_Appartement.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, '2017-11-06 22:00:00', NULL),
	(15, 'Melbourne-appartement-loft-vendre.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, '2017-11-06 22:00:00', NULL),
	(16, 'louer-abordable.jpg', '', '', 'Blog', 1, '2017-11-06 22:00:00', NULL),
	(17, 'engagement-immobilier.jpg', NULL, NULL, 'Blog', 2, '2017-11-07 22:00:00', NULL),
	(18, 'investir-bien-immo.jpg', NULL, NULL, 'Blog', 3, '2017-11-07 22:00:00', NULL),
	(19, 'conseil-de-vente.jpeg', NULL, NULL, NULL, 4, '2017-11-07 22:00:00', NULL),
	(20, 'construire-pour-revendre.jpg', NULL, NULL, 'Blog', 5, '2017-11-07 22:00:00', NULL),
	(21, 'promotteur-immo.jpg', NULL, NULL, 'Blog', 6, '2017-11-07 22:00:00', NULL),
	(22, 'tout-savoir-contrat.jpg', NULL, NULL, NULL, 7, '2017-11-07 22:00:00', NULL),
	(23, '1511340892.jpg', NULL, NULL, 'Blog', 8, '2017-11-22 06:54:52', '2017-11-22 06:54:52');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;

-- Export de la structure de la table bddiea. infocompte
CREATE TABLE IF NOT EXISTS `infocompte` (
  `IDINFOCOMPTE` int(11) NOT NULL AUTO_INCREMENT,
  `LIBELLE` varchar(250) DEFAULT NULL,
  `ETATINSCRIPTION` tinyint(1) DEFAULT NULL,
  `DROITINSCRIPTION` float DEFAULT NULL,
  `CPCPOURCENTAGE` float DEFAULT NULL,
  `CCVMINPOURCENTAGE` float DEFAULT NULL,
  `CCVMAJPOURCENTAGE` float DEFAULT NULL,
  `CCVSEUIL` float DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`IDINFOCOMPTE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table bddiea.infocompte : 0 rows
/*!40000 ALTER TABLE `infocompte` DISABLE KEYS */;
/*!40000 ALTER TABLE `infocompte` ENABLE KEYS */;

-- Export de la structure de la table bddiea. inscriptionannule
CREATE TABLE IF NOT EXISTS `inscriptionannule` (
  `IDINSCRIPTIONANNULE` int(11) NOT NULL AUTO_INCREMENT,
  `IDPERSONNEMORALE` int(11) DEFAULT NULL,
  `IDPERSONNEPHYSIQUE` int(11) DEFAULT NULL,
  `DATEINSCRIPTION` date DEFAULT NULL,
  `TYPEINSCRIPTION` varchar(250) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`IDINSCRIPTIONANNULE`),
  KEY `FK_ASSOCIATION_19` (`IDPERSONNEMORALE`),
  KEY `FK_ASSOCIATION_20` (`IDPERSONNEPHYSIQUE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table bddiea.inscriptionannule : 0 rows
/*!40000 ALTER TABLE `inscriptionannule` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscriptionannule` ENABLE KEYS */;

-- Export de la structure de la table bddiea. listutilisateur
CREATE TABLE IF NOT EXISTS `listutilisateur` (
  `IDUTILISATEUR` int(11) NOT NULL AUTO_INCREMENT,
  `IDPERSONNEPHYSIQUE` int(11) NOT NULL,
  `LIBELLE` varchar(250) DEFAULT NULL,
  `DROIT` varchar(250) DEFAULT NULL,
  `DATECREATION` date DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`IDUTILISATEUR`),
  KEY `FK_ASSOCIATION_10` (`IDPERSONNEPHYSIQUE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table bddiea.listutilisateur : 0 rows
/*!40000 ALTER TABLE `listutilisateur` DISABLE KEYS */;
/*!40000 ALTER TABLE `listutilisateur` ENABLE KEYS */;

-- Export de la structure de la table bddiea. localisations
CREATE TABLE IF NOT EXISTS `localisations` (
  `IDLOCALISATION` int(11) NOT NULL AUTO_INCREMENT,
  `ADRESSE` varchar(250) DEFAULT NULL,
  `PAYS` varchar(250) DEFAULT NULL,
  `ETAT` varchar(250) DEFAULT NULL,
  `CITE` varchar(250) DEFAULT NULL,
  `CODEPOSTAL` varchar(250) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`IDLOCALISATION`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Export de données de la table bddiea.localisations : ~14 rows (environ)
/*!40000 ALTER TABLE `localisations` DISABLE KEYS */;
INSERT INTO `localisations` (`IDLOCALISATION`, `ADRESSE`, `PAYS`, `ETAT`, `CITE`, `CODEPOSTAL`, `CREATED_AT`, `UPDATED_AT`) VALUES
	(1, '9 Hamilton Ave, Surfers Paradise QLD 4217, Australie', 'Australie', 'Queensland', 'Surfers Paradise', '4217', NULL, '2017-11-06 00:00:00'),
	(2, 'Melbourne Victoria 3000, Australie', 'Australie', 'Victoria', 'Melbourne', '3000', NULL, '2017-11-06 00:00:00'),
	(3, '30 Edinburgh Road Benowa Waters', 'Queensland', 'Gold coast', 'Benowa Waters', '4217', NULL, '2017-11-06 00:00:00'),
	(4, 'Valla Beach, Nouvelle-Galles du Sud 2448, Australie', 'Australie', 'Nouvelle-Galles du Sud', 'Valla Beach', '2448', NULL, '2017-11-06 00:00:00'),
	(5, 'MacLeay Island, Queensland 4184, Australie', 'Australie', 'Queensland', 'MacLeay Island', '4184', NULL, '2017-11-06 00:00:00'),
	(6, 'Mount Barker, Australie-Méridionale 5251, Australie', 'Australie', 'Australie-Méridionale ', 'Mount Barker', '5251', NULL, '2017-11-04 00:00:00'),
	(7, 'Piggabeen, Nouvelle-Galles du Sud 2486, Australie', 'Australie', 'Nouvelle-Galles du Sud', 'Piggabeen', '2486', NULL, '2017-11-03 00:00:00'),
	(8, 'Bridgewater, Tasmanie 7030, Australie', 'Australie', 'Tasmanie', 'Bridgewater', '7030', NULL, '2017-11-05 00:00:00'),
	(9, 'Dandenong South, Victoria 3175, Australie', 'Australie', 'Victoria', 'Dandenong South', '3175', NULL, '2017-11-02 00:00:00'),
	(10, 'Yarrawonga, Palmerston Territoire du Nord 0830, Australie', 'Australie', 'Palmerston Territoire du Nord', 'Yarrawonga', '0830', NULL, '2017-11-01 00:00:00'),
	(11, 'Newport 2106, Newport Nouvelle-Galles du Sud, Australie', 'Australie', 'Nouvelle-Galles du Sud', 'Newport', '2106', NULL, '2017-11-02 00:00:00'),
	(12, 'Loganholme, Queensland 4129, Australie\r\n', 'Australie', 'Queensland', 'Loganholme', '4129', NULL, '2017-11-06 00:00:00'),
	(13, 'Spring Hill, Queensland 4000, Australie', 'Australie', 'Queensland', 'Spring Hill', '4000', NULL, '2017-11-03 00:00:00'),
	(16, 'ig 67 ha', 'Antarctique', 'alefa', 'tana', '101', '2018-01-22 21:48:35', '2018-01-22 21:48:35');
/*!40000 ALTER TABLE `localisations` ENABLE KEYS */;

-- Export de la structure de la table bddiea. membre
CREATE TABLE IF NOT EXISTS `membre` (
  `IDMEMBRE` int(11) NOT NULL AUTO_INCREMENT,
  `IDPERSONNEMORALE` int(11) DEFAULT NULL,
  `IDPERSONNEPHYSIQUE` int(11) DEFAULT NULL,
  `STATUTCOMPTE` tinyint(1) DEFAULT NULL,
  `ETATNEWSLETTER` tinyint(1) DEFAULT NULL,
  `ETATPARTAGEDONNEE` tinyint(1) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `NUMINSCRIPTION` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`IDMEMBRE`),
  KEY `FK_ASSOCIATION_14` (`IDPERSONNEMORALE`),
  KEY `FK_ASSOCIATION_15` (`IDPERSONNEPHYSIQUE`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Export de données de la table bddiea.membre : 3 rows
/*!40000 ALTER TABLE `membre` DISABLE KEYS */;
INSERT INTO `membre` (`IDMEMBRE`, `IDPERSONNEMORALE`, `IDPERSONNEPHYSIQUE`, `STATUTCOMPTE`, `ETATNEWSLETTER`, `ETATPARTAGEDONNEE`, `UPDATED_AT`, `CREATED_AT`, `NUMINSCRIPTION`) VALUES
	(1, NULL, 2, 0, 1, 1, '2018-01-22 18:06:48', '2018-01-22 18:06:48', ''),
	(2, NULL, 3, 0, 1, 1, '2018-01-22 20:18:46', '2018-01-22 20:18:46', ''),
	(3, NULL, 4, 0, 1, 1, '2018-01-22 21:48:35', '2018-01-22 21:48:35', '');
/*!40000 ALTER TABLE `membre` ENABLE KEYS */;

-- Export de la structure de la table bddiea. optionproduits
CREATE TABLE IF NOT EXISTS `optionproduits` (
  `idoptionproduit` int(11) NOT NULL AUTO_INCREMENT,
  `produit_id` varchar(190) NOT NULL,
  `ch` int(11) DEFAULT NULL,
  `sdb` int(11) DEFAULT NULL,
  `garage` int(11) DEFAULT NULL,
  `typepropriete` varchar(190) DEFAULT NULL,
  `Autres` text,
  `Parking` tinyint(1) NOT NULL,
  `piscine` int(11) DEFAULT NULL,
  PRIMARY KEY (`idoptionproduit`),
  KEY `produit_id` (`produit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Export de données de la table bddiea.optionproduits : ~13 rows (environ)
/*!40000 ALTER TABLE `optionproduits` DISABLE KEYS */;
INSERT INTO `optionproduits` (`idoptionproduit`, `produit_id`, `ch`, `sdb`, `garage`, `typepropriete`, `Autres`, `Parking`, `piscine`) VALUES
	(1, 'ID_REF001', 3, 2, NULL, 'Appartement', NULL, 0, 1),
	(2, 'ID_REF002', 2, 2, NULL, 'Résidentiel', NULL, 1, NULL),
	(3, 'ID_REF003', 5, 4, 2, 'Résidentiel', NULL, 1, NULL),
	(4, 'ID_REF004', 5, 2, 1, 'Résidentiel', NULL, 0, 2),
	(5, 'ID_REF005', NULL, NULL, NULL, 'Terrain', NULL, 0, NULL),
	(6, 'ID_REF006', NULL, NULL, NULL, 'Terrain', NULL, 0, NULL),
	(7, 'ID_REF007', NULL, NULL, NULL, 'Terrain', NULL, 0, NULL),
	(8, 'ID_REF008', NULL, NULL, NULL, 'Terrain', NULL, 0, NULL),
	(9, 'ID_REF009', NULL, NULL, NULL, 'Bureau & Local commercial', 'Catégorie: Entreprise', 1, NULL),
	(10, 'ID_REF010', NULL, NULL, NULL, 'Entrepôt & Local d\'activité', NULL, 1, NULL),
	(11, 'ID_REF011', NULL, NULL, NULL, 'Bureau & Local commercial', 'terrain de tennis, cafeteria,salle de sport', 1, NULL),
	(12, 'ID_REF014', 1, 1, NULL, 'Résidentiel', 'Catégorie: Appartement et loft', 1, NULL),
	(13, 'ID_REF015', 2, 1, 1, 'Résidentiel', NULL, 1, NULL);
/*!40000 ALTER TABLE `optionproduits` ENABLE KEYS */;

-- Export de la structure de la table bddiea. pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lien` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parametres` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Export de données de la table bddiea.pages : ~6 rows (environ)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `libelle`, `lien`, `parametres`, `created_at`, `updated_at`) VALUES
	(1, 'Page d\'accueil', '/', 'accueil', NULL, NULL),
	(2, 'Page d\'inscription Membre', '/membre', 'membre', NULL, NULL),
	(3, 'Page d\'inscription Vendeur', '/seller', 'vendeur', NULL, NULL),
	(4, 'Page d\'inscription AFA', '/agence-francophone-australien', 'afa', NULL, NULL),
	(5, 'Page d\'inscription APL', '/agence-partenaire-local', 'apl', NULL, NULL),
	(6, 'Page Services', '/services', 'services', NULL, NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Export de la structure de la table bddiea. personnemoral
CREATE TABLE IF NOT EXISTS `personnemoral` (
  `IDPERSONNEMORALE` int(11) NOT NULL AUTO_INCREMENT,
  `IDLOCALISATION` int(11) NOT NULL,
  `NOM` varchar(250) DEFAULT NULL,
  `ETATCOMPTE` tinyint(1) DEFAULT NULL,
  `URLSITEWEB` varchar(250) DEFAULT NULL,
  `LOGO` varchar(250) DEFAULT NULL,
  `PRESENTATION` text,
  `TELEPHONE` varchar(250) DEFAULT NULL,
  `EMAIL` varchar(250) DEFAULT NULL,
  `ETATPAIEMENTCOMPTE` tinyint(1) DEFAULT NULL,
  `OBSERVATION` text,
  `OPERABILITE` float DEFAULT NULL,
  `LANGUAGE` varchar(250) DEFAULT NULL,
  `CRM_PROVIDER_NAME` varchar(250) DEFAULT NULL,
  `CRM_PROVIDER_EMAIL` varchar(250) DEFAULT NULL,
  `COMPTEPAYPAL` varchar(250) DEFAULT NULL,
  `REFBANCAIRE` varchar(250) DEFAULT NULL,
  `LOGIN` varchar(1500) DEFAULT NULL,
  `MOTDEPASSE` varchar(1500) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `TYPENATURE` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDPERSONNEMORALE`),
  KEY `FK_ASSOCIATION_9` (`IDLOCALISATION`),
  CONSTRAINT `FK_personnemoral_localisations` FOREIGN KEY (`IDLOCALISATION`) REFERENCES `localisations` (`IDLOCALISATION`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Export de données de la table bddiea.personnemoral : ~1 rows (environ)
/*!40000 ALTER TABLE `personnemoral` DISABLE KEYS */;
INSERT INTO `personnemoral` (`IDPERSONNEMORALE`, `IDLOCALISATION`, `NOM`, `ETATCOMPTE`, `URLSITEWEB`, `LOGO`, `PRESENTATION`, `TELEPHONE`, `EMAIL`, `ETATPAIEMENTCOMPTE`, `OBSERVATION`, `OPERABILITE`, `LANGUAGE`, `CRM_PROVIDER_NAME`, `CRM_PROVIDER_EMAIL`, `COMPTEPAYPAL`, `REFBANCAIRE`, `LOGIN`, `MOTDEPASSE`, `UPDATED_AT`, `CREATED_AT`, `TYPENATURE`) VALUES
	(2, 1, 'Stephane', 1, 'koko.com', 'assets/images/1516061484.jpg', NULL, '0332450050', 'twistmac@hotmail.fr', 0, NULL, 0, 'Français', NULL, NULL, NULL, NULL, 'Octobone', '0000', '2018-01-15 14:46:19', '2018-01-15 14:46:21', 2);
/*!40000 ALTER TABLE `personnemoral` ENABLE KEYS */;

-- Export de la structure de la table bddiea. personnephysique
CREATE TABLE IF NOT EXISTS `personnephysique` (
  `IDPERSONNEPHYSIQUE` int(11) NOT NULL AUTO_INCREMENT,
  `IDLOCALISATION` int(11) NOT NULL,
  `NOM` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `PRENOM` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `LOGIN` varchar(1500) CHARACTER SET utf8 DEFAULT NULL,
  `MOTDEPASSE` varchar(1500) CHARACTER SET utf8 DEFAULT NULL,
  `GENRE` tinyint(1) DEFAULT NULL,
  `DATENAISSANCE` date DEFAULT NULL,
  `EMAIL` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TELEPHONE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `FAX` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `REFBANCAIRE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `COMPTEPAYPAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OBSERVATION` mediumtext CHARACTER SET utf8,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `AVATAR` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TYPENATURE` int(11) DEFAULT NULL,
  `LANGUAGE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`IDPERSONNEPHYSIQUE`),
  KEY `FK_ASSOCIATION_8` (`IDLOCALISATION`),
  CONSTRAINT `FK_personnephysique_localisations` FOREIGN KEY (`IDLOCALISATION`) REFERENCES `localisations` (`IDLOCALISATION`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Export de données de la table bddiea.personnephysique : ~2 rows (environ)
/*!40000 ALTER TABLE `personnephysique` DISABLE KEYS */;
INSERT INTO `personnephysique` (`IDPERSONNEPHYSIQUE`, `IDLOCALISATION`, `NOM`, `PRENOM`, `LOGIN`, `MOTDEPASSE`, `GENRE`, `DATENAISSANCE`, `EMAIL`, `TELEPHONE`, `FAX`, `REFBANCAIRE`, `COMPTEPAYPAL`, `OBSERVATION`, `UPDATED_AT`, `CREATED_AT`, `AVATAR`, `TYPENATURE`, `LANGUAGE`) VALUES
	(1, 6, 'Twist', 'Stephane', 'Twist', '1111', 0, '2018-01-19', 'test@yahoo.fr', '0348431881', '216335210', '1210', '95623063206130', 'test', '2018-01-19 12:07:41', '2018-01-19 12:07:43', 'assets/images/1516536559.jpg', 0, 'Francais'),
	(4, 16, 'liantsoa', 'lints', '', '', 1, '2018-01-18', 'bg@yahoo.fr', 'AFG  +93 7536000', '', '4444444444444444', '', '', '2018-01-22 21:48:35', '2018-01-22 21:48:35', 'membreParticulier/kWV9L4v2y5hRrqPdSS35EyDIFINGLVmnVR4Vae6p.jpeg', 0, 'fr');
/*!40000 ALTER TABLE `personnephysique` ENABLE KEYS */;

-- Export de la structure de la table bddiea. possessionproduit
CREATE TABLE IF NOT EXISTS `possessionproduit` (
  `IDPOSSESSIONPRODUIT` int(11) NOT NULL AUTO_INCREMENT,
  `IDETATPOSSESSIONPRODUIT` int(11) DEFAULT NULL,
  `IDPRODUIT` int(11) DEFAULT NULL,
  `IDVENDEUR` int(11) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`IDPOSSESSIONPRODUIT`),
  KEY `FK_ASSOCIATION_21` (`IDETATPOSSESSIONPRODUIT`),
  KEY `FK_ASSOCIATION_22` (`IDPRODUIT`),
  KEY `FK_ASSOCIATION_23` (`IDVENDEUR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table bddiea.possessionproduit : 0 rows
/*!40000 ALTER TABLE `possessionproduit` DISABLE KEYS */;
/*!40000 ALTER TABLE `possessionproduit` ENABLE KEYS */;

-- Export de la structure de la table bddiea. produits
CREATE TABLE IF NOT EXISTS `produits` (
  `idproduit` char(10) NOT NULL,
  `localisation_id` int(11) NOT NULL,
  `typeproduit_id` int(11) NOT NULL,
  `nom` varchar(250) DEFAULT NULL,
  `description` text,
  `surface` varchar(250) DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `images_id` int(10) NOT NULL,
  `tauxmisenavant` float DEFAULT NULL,
  `etatproduit` tinyint(1) DEFAULT NULL,
  `iframe` text,
  `slug` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`idproduit`),
  KEY `FK_ASSOCIATION_12` (`localisation_id`),
  KEY `FK_ASSOCIATION_13` (`typeproduit_id`),
  KEY `FK_produits_images` (`images_id`),
  CONSTRAINT `FK_produits_images` FOREIGN KEY (`images_id`) REFERENCES `images` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table bddiea.produits : ~15 rows (environ)
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` (`idproduit`, `localisation_id`, `typeproduit_id`, `nom`, `description`, `surface`, `prix`, `images_id`, `tauxmisenavant`, `etatproduit`, `iframe`, `slug`) VALUES
	('ID_REF001', 1, 1, 'Surfers Paradise - Appartement', '\r\nSurfers Paradise - Appartement & loft à vendre\r\nAustralie> Queensland> Surfers Paradise\r\n1 500 000 EUR\r\nAppartement & Loft (Vente)\r\n3 ch 2 sdb 265 m²\r\nCet appartement de 3 chambres de taille généreuse bénéficie d\'une impression de sol de 265m2. Une suite parentale de taille presque égale à celle du salon et couplée à une robe de chambre connectée à la salle de bain garantit à ceux qui le désirent un bon goût de vie en appartement. Pour le plat principal, le côté nord de la Gold Coast vous permettra de profiter d\'une vue alléchante sur la magnifique Broadwater, de superbes toits de la ville animés par la vie et de vues sereines ininterrompues sur l\'océan depuis le salon! Entièrement équipée avec cuisinière à gaz et table de pique-nique, la vue sur l\'océan encapsulant de la cuisine fait pour une expérience culinaire merveilleuse pour les amis, la famille ou les invités! Plus de fonctionnalités comprennent une salle d\'eau, une buanderie séparée, une climatisation entièrement canalisée, une salle multimédia et 2 parkings. Un investissement incroyable ou incroyable en live! Caractéristiques et installations du bâtiment Q1: Concierge / Tour Booking Desk. Club des résidents, salles de réception et installations de conférence. Cinéma / cinéma interne. Deux piscines extérieures / lagunes. Une piscine intérieure chauffée. Spa intérieur. Salles de vapeur intérieures et saunas. Gymnase entièrement équipé. Salle de jeux. Célèbre Longboards Café et Pool Bar. Gestion sur site. Sécurité totale. Animaux acceptés. Zone de vente au détail avec dépanneur. Minutes à pied de la plage de baignade. Minutes à pied de Surfers Paradise avec des boutiques, des restaurants et plus', '265', 2265000, 1, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d56365.45787293253!2d153.422381!3d-27.998757!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b910fe19fd1c2b7%3A0x502a35af3dea680!2sSurfers+Paradise+Queensland+4217%2C+Australie!5e0!3m2!1sfr!2sus!4v1509962436469" width="700" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', NULL),
	('ID_REF002', 2, 1, 'Melbourne - Appartement', '\r\nC\'est un superbe appartement de 2 chambres situé à Melbourne en Australie.\r\nL\'appartement pourrait être utilisé comme une maison de vacances ou comme une résidence permanente.\r\nIl y a une salle de réception incluse avec la propriété.\r\nEn outre, la propriété est également entièrement meublée.\r\nAvec la propriété il y a une piscine communale incluse.\r\nAvec la piscine communale il y a aussi un jardin privé.\r\nLa taille de la parcelle est mesurée à 75 mètres carrés.\r\navec la surface couverte étant 75m2.\r\nParking disponible inclus avec la propriété serait hors stationnement dans la rue.', '789', 500000, 2, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1610340.110288804!2d145.053135!3d-37.972566!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad646b5d2ba4df7%3A0x4045675218ccd90!2sMelbourne+Victoria%2C+Australie!5e0!3m2!1sfr!2sus!4v1509962391364" width="700" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', NULL),
	('ID_REF003', 3, 1, 'Edinburgh - Appartement', 'Découvrez le charme classique de cette maison de bord de mer intemporelle de deux étages dans la belle Benowa Waters. Bénéficiant d\'un aspect nord-est enviable et d\'une vue imprenable sur l\'eau et la ville, cette maison surdimensionnée de 5 chambres comprend 4 salles de bains, une cuisine gastronomique et un espace en plein air avec piscine, le tout sur 831m2.', '831', 450000, 3, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3522.2244453997932!2d153.38991371586621!3d-28.017615082664427!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b9104d5529d9f05%3A0xef9d933ccbaa8a55!2s30+Edinburgh+Rd%2C+Benowa+QLD+4217%2C+Australie!5e0!3m2!1sfr!2smg!4v1509962511836" width="700" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', NULL),
	('ID_REF004', 4, 1, 'Australie - Maison', '\r\n5 chambres (ou 4 plus étude), 2 salles de bains, salon ouvert, cuisine et salle à manger. Plafonds cathédrale et planchers de gomme tachetée polie dans toute la maison. Garage 3 voitures avec accès à la maison du garage via le garde-manger! La cuisine a une cuisinière à gaz et four électrique, lave-vaisselle et des plans de travail en granit. Le garde-manger est de la taille d\'une petite chambre à coucher afin que vous puissiez stocker ces achats spéciaux. C\'est l\'une des maisons les plus spacieuses dans lesquelles vous marcherez. Il est accueillant et chaleureux tout en ayant beaucoup d\'espaces privés pour ceux qui le veulent. La suite principale est fabuleuse, avec des robes de chambre et une salle de bains que vous voulez juste rester et profiter de l\'espace, la lumière et l\'ambiance. La salle de bains familiale est également spéciale, avec baignoire, douche séparée et vanité.', '650', 451260, 4, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d54955.02438080491!2d153.006723!3d-30.586323!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b9c24d0bf2d0c2d%3A0x40609b490439ac0!2sValla+Beach+Nouvelle-Galles+du+Sud+2448%2C+Australie!5e0!3m2!1sfr!2sus!4v1509962163576" width="700" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', NULL),
	('ID_REF005', 5, 1, 'Redland Bay - Terrain', '\r\nCe bloc résidentiel de 658 m2 est merveilleusement positionné, pratique pour le club de golf, les boutiques locales et la jetée de Macleay Island et le centre d\'affaires principal. Le bloc est complètement dégagé, pentes doucement de la route pavée, n\'a pas de problèmes de drainage, est clôturé sur 2 côtés et a actuellement des vues sur le terrain de golf à l\'arrière. Macleay Island offre un style de vie unique, avec une atmosphère de village convivial, un environnement de parc marin pittoresque et avec les magasins, clubs et services essentiels ici sur l\'île prêt pour que vous appréciiez', '658', 25000, 5, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d113140.72433937206!2d153.360607!3d-27.604452!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b9165c75e7c96d1%3A0x502a35af3de8fa0!2sMacLeay+Island+Queensland+4184%2C+Australie!5e0!3m2!1sfr!2sus!4v1509962053466" width="700" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', NULL),
	('ID_REF006', 6, 2, 'Mount Barker - Terrain', '\r\nC\'est une offre unique de terrains vacants. Idéalement situé dans une magnifique rue bordée d\'arbres, ce lotissement de près de 350 m² est situé à quelques pas des magasins, cabinets médicaux, banques, écoles et transports. Actuellement zoné «Résidentiel». Le conseil envisagera une utilisation à la maison ou au bureau. Il est presque impossible d\'obtenir une allocation centrale comme celle-ci au Mont Barker aujourd\'hui, alors ne tardez pas!\r\n', '350', 270000, 6, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d104479.9766268339!2d138.86599!3d-35.081751!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ab731cc551573a1%3A0x5033654628eb9a0!2sMount+Barker+Australie-M%C3%A9ridionale+5251%2C+Australie!5e0!3m2!1sfr!2sus!4v1509962129253" width="700" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', NULL),
	('ID_REF007', 7, 2, 'Tugun - Terrain', '\r\nOffert à la vente, un terrain de 20 acres situé à proximité de tout le Tweed a à offrir. Pittoresque avec la façade de l\'eau à Piggabeen Creek, la propriété a un potentiel incroyable pour le développement futur. * 20 acres * Emplacement idéal et endroit où vivre * Derrière / Ouest de l\'aéroport de Coolangatta (pas sous aucune trajectoire de vol) * 10-15 minutes de l\'aéroport de Coolangatta et des plages. * 400 mètres de front de mer de marée "Piggabeen Creek" Utilisation du terrain: * Tourisme écologique, cheval, terrain de golf, etc .. * Développement futur "Potentiel incroyable"', '80 937', 1121100, 7, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d56260.41230776478!2d153.435239!3d-28.198933!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b90fd07d398c869%3A0x50609b490443010!2sPiggabeen+Nouvelle-Galles+du+Sud+2486%2C+Australie!5e0!3m2!1sfr!2sus!4v1509961914092" width="700" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', NULL),
	('ID_REF008', 8, 3, 'Bridgewater - Terrain', '\r\nCe bloc de construction serait l\'un des meilleurs blocs à gauche dans la région. Prendre des vues sensationnelles du pont Bridgewater et au-delà dans une direction et des vues du mont Wellington et au-delà dans l\'autre sens. Avec une superficie approximative de 762 m2, ce terrain est assez grand pour construire la maison de vos rêves ou construire plusieurs unités (STCA). Il y a une réserve du Conseil à la droite de la propriété et elle aura des vues qui ne seront jamais perdues. Les bus ne sont qu\'à quelques pas. Il y a des écoles et de nombreux magasins, y compris les grands supermarchés à seulement quelques minutes. Si vous cherchez un bloc avec des vues incroyables, alors c\'est ici', '762', 32280, 8, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d93786.20888913731!2d147.225355!3d-42.728721!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xaa6e12655e20d655%3A0x503c94dd0de1400!2sBridgewater+Tasmanie+7030%2C+Australie!5e0!3m2!1sfr!2sus!4v1509962922249" width="700" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', NULL),
	('ID_REF009', 9, 3, 'Bangholme - Bureau', '\r\nUne chance rare de posséder cette usine / entrepôt, il conviendra à une variété d\'occupants / affaires. Situation centrale accès facile à toutes les principales artères et autoroutes, un grand parking à l\'arrière et large route excellente pour l\'accès des gros camions. Caractéristiques du bâtiment comprennent: -3 bureaux-cuisine / salle à manger, toilettes -Hauteur volet roulant -Grande puissance -Parking à l\'arrière -Area de 484m2 env.', '484', 447967, 9, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d100566.7099988183!2d145.217749!3d-38.030547!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad613d180ac6a05%3A0x5045675218ce070!2sDandenong+South+Victoria+3175%2C+Australie!5e0!3m2!1sfr!2sus!4v1509963450333" width="700" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', NULL),
	('ID_REF010', 10, 4, 'Australie - Entrepôt', 'Cette propriété est située juste en face de la route d\'où le nouveau magasin Bunnings est proposé d\'être construit. L\'entrepôt a une grande porte de rouleau de 6x6m pour la facilité d\'accès. Il y a suffisamment de place à l\'intérieur avec une hauteur centrale de 8m et une hauteur d\'avant-toit de 6m, la remise est claire. Un grand parking est disponible. Il y a aussi une abondance de puissance disponible avec 240 volts et 3 phases. * La superficie totale est de 242m2.', '242', 16811, 10, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15582.56164867177!2d130.988063!3d-12.473651!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2cc0bd3abddd4c65%3A0x50217a82a248270!2sYarrawonga+Territoire+du+Nord+0830%2C+Australie!5e0!3m2!1sfr!2sus!4v1509965916473" width="700" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', NULL),
	('ID_REF011', 11, 4, 'Newport - Bureau', 'C\'est une opportunité à ne pas manquer. Travaillez au bord de la mer ... Cette suite bureau au bord de l\'eau donnant sur les magnifiques voies navigables de Pittwater est située dans la banlieue très prisée de Newport. Situé dans un lotissement résidentiel sécurisé, la suite bénéficie d\'une excellente lumière naturelle tout au long de la journée depuis les grandes baies vitrées qui donnent sur une vue dont vous ne serez jamais fatigué! Caractéristiques de la propriété: - Bureau de 41m² + Cour extérieure exclusive de 21m² - Bureau au bord de l\'eau - Suite magnifiquement présentable donnant sur Pittwater - Planchers de bois à l\'entrée - Système de climatisation indépendant - Développement sécurisé avec accès par ascenseur - Système d\'intercom et câblé - Parking unique sécurisé - & kitchen En plus, il y a une opportunité d\'acquérir 9 Moorings pour une entreprise marine si nécessaire - 7 x situé à Winji Jimmi Bay, 1 x situé à Northern End of Scotland Island, 1 x situé à America\'s Bay', '400', 303036, 11, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d53136.48527748038!2d151.314345!3d-33.656376!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b0d53455c28b9f3%3A0x1c017d6b3fba90d0!2sNewport+Nouvelle-Galles+du+Sud+2106%2C+Australie!5e0!3m2!1sfr!2sus!4v1509966870452" width="700" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', NULL),
	('ID_REF012', 12, 4, 'Beenleigh - Bureau', '\r\n* Accès facile aux véhicules de la Pacific Highway et à proximité de l\'autoroute Logan * Ascenseur sécurisé à partir du parking / stockage fermé souterrain * Meilleur bureau à l\'extérieur de Brisbane CBD. * 1 kilomètre du centre commercial régional *', '400', 4270200, 12, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d56529.75114252778!2d153.185977!3d-27.683012000000005!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b9141e67f8e2637%3A0x1c02a35e27d73ad0!2sLoganholme+Queensland+4129%2C+Australie!5e0!3m2!1sfr!2sus!4v1509967406814" width="700" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', NULL),
	('ID_REF013', 13, 3, 'Normanby - Bureau', 'Fantastic opportunity to occupy a bit size office/medical suite situated along Wickham Terrace\'s business & medical strip. The property is located only 100m from Brisbane CBD & 200m from Central Train Station. * 48m2 ground floor suite * Great natural light * 1 car park included * Fitout includes: waiting area, reception, consultation room, kitchenette & storage.', '500', 131755, 13, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d28322.692382182307!2d153.023042!3d-27.45878!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b915a07e4550d17%3A0x502a35af3de98e0!2sSpring+Hill+Queensland+4000%2C+Australie!5e0!3m2!1sfr!2sus!4v1509967898804" width="700" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', NULL),
	('ID_REF014', 2, 1, 'Melbourne - Appartement', '\r\nCe développement résidentiel exclusif à Melbourne CBD atteste de l\'engagement et du pedigree d\'UEM Sunrise pour offrir des espaces de vie de qualité qui résonnent avec la riche culture de Melbourne, ainsi que son statut de ville la plus vivable au monde. À seulement quelques pas d\'une sélection d\'universités, de boutiques, de lieux culturels et de restaurants réputés dans le monde entier, qui offre le dynamisme de la ville et une vaste gamme d\'options de transport, de connectivité et de tranquillité des jardins. Les établissements d\'enseignement réputés de Melbourne, tels que l\'université Royal Melbourne Institute of Technology (RMIT), se trouvent à environ 3 minutes à pied et l\'université de Melbourne se trouve à environ 15 minutes à pied du développement. Caractéristiques: Services de conciergerie Lap Pool & Sun Deck Gynasium & Yoga Zone Sauna et hammam Cinéma privé Simulateur de golf Private & Social Jacuzzi Royal Banquet Room Rooftop Skypods Fosse BBQ avec terrasse et terrasse de divertissement', '450', 296448, 14, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d25216.75376367357!2d144.963151!3d-37.811262!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642b8c21cb29b%3A0x1c045678462e3510!2sMelbourne+Victoria+3000%2C+Australie!5e0!3m2!1sfr!2sus!4v1509968709627" width="700" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', NULL),
	('ID_REF015', 2, 4, 'Melbourne - Grand Appartement', 'Le bâtiment de 31 niveaux situé à proximité des jardins historiques de Carlton et le meilleur de cbd a à offrir un design intérieur attrayant bâtiment contemporain. Bâtiment de style Resort. Les caractéristiques comprennent une salle de gym ciel, piscine de 25m, salon en plein air, les jardins sur le toit doivent voir des vues panoramiques. Doit voir design moderne Appartement dispose de 2 chambres de bonne taille égale avec BIR, 1 salle de bain et 1 espace de voiture. Comme vous entrez à votre gauche, cuisine gastronomique européenne avec des appareils Euro, banc de granit, Grande salle de bain combinaison de blanchisserie. Balcon confortable avec de belles vues sur la ville, salon / repas ouvert. La sécurité est importante pour la résidence. Les installations comprennent une piscine chauffée de 25 mètres, un spa et une salle de sport bien équipée pour rester en forme. Confortable style de vie de villégiature, terrasse sur le toit. Venez entrer dans ce hall élégant et inspecter cet appartement aujourd\'hui', '455', 368914, 15, NULL, NULL, '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d25216.75376367357!2d144.963151!3d-37.811262!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642b8c21cb29b%3A0x1c045678462e3510!2sMelbourne+Victoria+3000%2C+Australie!5e0!3m2!1sfr!2sus!4v1509969581144" width="700" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', NULL);
/*!40000 ALTER TABLE `produits` ENABLE KEYS */;

-- Export de la structure de la table bddiea. recherche_sauvegardees
CREATE TABLE IF NOT EXISTS `recherche_sauvegardees` (
  `IDRECHERCHE` int(11) NOT NULL AUTO_INCREMENT,
  `IDPRODUIT` char(10) NOT NULL,
  `LOGIN` varchar(1500) NOT NULL,
  `DATE_SAUVEGARDE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `MOTCLE` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`IDRECHERCHE`),
  KEY `FK_ASSOCIATION_34` (`IDPRODUIT`),
  CONSTRAINT `FK_recherche_sauvegardees_produits` FOREIGN KEY (`IDPRODUIT`) REFERENCES `produits` (`idproduit`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Export de données de la table bddiea.recherche_sauvegardees : ~3 rows (environ)
/*!40000 ALTER TABLE `recherche_sauvegardees` DISABLE KEYS */;
INSERT INTO `recherche_sauvegardees` (`IDRECHERCHE`, `IDPRODUIT`, `LOGIN`, `DATE_SAUVEGARDE`, `MOTCLE`) VALUES
	(5, 'ID_REF014', 'Twist', '2018-01-22 13:37:30', NULL),
	(6, 'ID_REF007', 'Twist', '2018-01-22 15:24:49', NULL),
	(7, 'ID_REF015', 'Twist', '2018-01-23 12:25:31', NULL);
/*!40000 ALTER TABLE `recherche_sauvegardees` ENABLE KEYS */;

-- Export de la structure de la table bddiea. typefacture
CREATE TABLE IF NOT EXISTS `typefacture` (
  `IDTYPEFACTURE` int(11) NOT NULL AUTO_INCREMENT,
  `LIBELLE` varchar(250) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`IDTYPEFACTURE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table bddiea.typefacture : 0 rows
/*!40000 ALTER TABLE `typefacture` DISABLE KEYS */;
/*!40000 ALTER TABLE `typefacture` ENABLE KEYS */;

-- Export de la structure de la table bddiea. typeproduits
CREATE TABLE IF NOT EXISTS `typeproduits` (
  `idtypeproduit` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idtypeproduit`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Export de données de la table bddiea.typeproduits : ~4 rows (environ)
/*!40000 ALTER TABLE `typeproduits` DISABLE KEYS */;
INSERT INTO `typeproduits` (`idtypeproduit`, `libelle`) VALUES
	(1, 'Résidentiel'),
	(2, 'Foncier'),
	(3, 'industriel'),
	(4, 'commercial');
/*!40000 ALTER TABLE `typeproduits` ENABLE KEYS */;

-- Export de la structure de la table bddiea. vendeur
CREATE TABLE IF NOT EXISTS `vendeur` (
  `IDVENDEUR` int(11) NOT NULL AUTO_INCREMENT,
  `IDPERSONNEPHYSIQUE` int(11) DEFAULT NULL,
  `IDAFA` int(11) DEFAULT NULL,
  `IDPERSONNEMORALE` int(11) DEFAULT NULL,
  `STATUTCOMPTE` tinyint(1) DEFAULT NULL,
  `LIBELLETYPEVENDEUR` varchar(250) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `NUMINSCRIPTION` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`IDVENDEUR`),
  KEY `FK_ASSOCIATION_25` (`IDPERSONNEPHYSIQUE`),
  KEY `FK_ASSOCIATION_5` (`IDAFA`),
  KEY `FK_ASSOCIATION_6` (`IDPERSONNEMORALE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table bddiea.vendeur : 0 rows
/*!40000 ALTER TABLE `vendeur` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendeur` ENABLE KEYS */;

-- Export de la structure de la table bddiea. vente
CREATE TABLE IF NOT EXISTS `vente` (
  `IDVENTE` int(11) NOT NULL AUTO_INCREMENT,
  `IDVENDEUR` int(11) DEFAULT NULL,
  `IDMEMBRE` int(11) DEFAULT NULL,
  `IDPRODUIT` int(11) DEFAULT NULL,
  `DATEDEBUTTRANSACTION` date DEFAULT NULL,
  `DATEFINTRANSACTION` date DEFAULT NULL,
  `VALEURCCV` float DEFAULT NULL,
  `ETATPAIEMENTCCV` tinyint(1) DEFAULT NULL,
  `DATEPAIEMENTCCV` date DEFAULT NULL,
  `VALEURCPC` float DEFAULT NULL,
  `ETATPAIEMENTCPC` tinyint(1) DEFAULT NULL,
  `DATEPAIEMENTCPC` date DEFAULT NULL,
  `ETATTRANSACTION` tinyint(1) DEFAULT NULL,
  `DERNIERETAPETRANSACTION` varchar(250) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`IDVENTE`),
  KEY `FK_ASSOCIATION_16` (`IDMEMBRE`),
  KEY `FK_ASSOCIATION_17` (`IDVENDEUR`),
  KEY `FK_ASSOCIATION_18` (`IDPRODUIT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table bddiea.vente : 0 rows
/*!40000 ALTER TABLE `vente` DISABLE KEYS */;
/*!40000 ALTER TABLE `vente` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
