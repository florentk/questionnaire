-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  Dim 05 nov. 2017 à 18:08
-- Version du serveur :  5.5.54-0+deb8u1-log
-- Version de PHP :  5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `questionnaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `id_answer` bigint(20) NOT NULL,
  `id_session` bigint(20) NOT NULL,
  `id_choice` bigint(20) NOT NULL,
  `rank` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `choice`
--

CREATE TABLE `choice` (
  `id_choice` bigint(20) NOT NULL,
  `id_question` bigint(20) NOT NULL,
  `title` char(100) NOT NULL,
  `description` longtext,
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  `position` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `choice`
--

INSERT INTO `choice` (`id_choice`, `id_question`, `title`, `description`, `weight`, `position`) VALUES
(17, 4, 'Améliorer le système de protection sociale existant', '- éradiquer l\'extrême pauvreté\n- résoudre le problème des non-recours aux aides (dû à la complication des dossiers, la stigmatisation …)\n- simplifier le mille-feuilles des aides sociales\n- combler les trous dans le système de protection sociale (pour les 18-25 ans, fins de droits …)\n- réduire le coût administratif lié au contrôle des prestataires', 0, 1),
(18, 4, 'Satisfaire les besoins essentiels', '- être autonome dans la satisfaction de ses besoins minimum\n- satisfaire les besoins reconnus par la Déclaration des Droits de l\'Humain et repris dans la charte européenne : nourriture, logement, éducation, santé ...\n- continuer les avancées sociales par la reconnaissance inconditionnelle des besoins essentiels, suite à la SECU, au DAL ...', 0, 2),
(19, 4, 'Construire un nouveau contrat social', '- faciliter l\'émancipation et l\'égalité des droits de tou-tes : jeunes, personnes âgées, femmes, porteurs de handicap ….\n- aider à l\'intégration des travailleurs immigrés\n- permettre à chacun-e d\'exercer sa citoyenneté, de participer à la vie de la cité ... (//Thomas Paine : « sans revenu, point de citoyen »)\n- réconcilier Liberté (chacun-e choisit l\'usage de son RBI), l’Égalité (tou-tes reçoivent le même montant) et la Fraternité (financement collectif d\'un nouveau droit constitutionnel)\n- valoriser l\'interdépendance : accueil inconditionnel de chaque citoyen-ne, reconnu-e dans sa diversité a priori, comme partie d\'un collectif (éducation à l\'autonomie, au travail collaboratif, au développement de ses compétences …)\n- réduire les frais financiers et humains de la criminalité, des addictions et de la fraude', 0, 3),
(20, 4, 'Changer le rapport à l\'emploi', '- permettre de refuser un emploi\n- faciliter la négociation des conditions de travail (horaires, tâches, autonomie ...)\n- sécuriser chacun-e face à la disparition d\'emplois (due à l\'automatisation, la numérisation, le partage des tâches...)\n- sécuriser entre les périodes de chômage, d\'intermittence, d\'interim...', 0, 4),
(21, 4, 'Impulser un renouveau économique', '- reconnaître la richesse de toutes les activités, rémunérées ou non (entretien ménager, éducation, soins, bénévolat, formation personnelle ...)\n- sécuriser la consommation et faciliter l\'accession au logement, à la formation, à l\'outil de travail …\n- sécuriser la créativité entrepreneuriale, artisanale et artistique\n- impulser une nouvelle répartition du temps de travail', 0, 5),
(22, 4, 'Réduire les inégalités sociales', '- mieux répartir les bénéfices de la productivité (automatisation, numérisation, partage des tâches avec le consommateur …)\n- réduire la souffrance au travail comme celle des exclus du marché de l\'emploi', 0, 6),
(23, 4, 'Impulser un élan écologique', '- améliorer le pouvoir d\'achat vers une consommation équitable, locale, durable\n- être autonome dans la satisfaction de ses besoins minimum\n- impliquer les citoyens-usagers dans la gestion des ressources locales\n- réduire la surconsommation compulsive grâce à la sécurisation financière durable', 0, 7),
(24, 4, 'Améliorer le potentiel humain', '- libérer chacun-e de la peur de manquer, des besoins physiologiques et de sécurité\n- libérer la créativité, l\'innovation et le potentiel de chacun-e\n- fluidifier les collectifs de travail (emploi ou activité) et les formes d\'échanges (in/formels)\n- faire reculer les préjugés, apaiser les conflits sociétaux et individuels', 0, 8),
(25, 5, 'Ce que l\'Etat donne déjà (allocations, niches fiscales, RSA ...)', 'Redistribution sous forme inconditionnelle, individuelle et automatique des aides déjà existantes', 0, 1),
(26, 5, 'Des leviers fiscaux (impôts, taxes, cotisations ...)', 'Financement par l\'augmentation d’impôts déjà existants ou la création de nouvelles : CSG, TVA, RI, taxes diverses... ', 0, 2),
(27, 5, 'La création monétaire (monnaie locale, nationale, européenne ou libre)', 'Distribuer la création monétaire sous forme d\'un revenu de base. La monnaie utilisée peut être internationale, européenne, nationale ou locale. ', 0, 3),
(28, 5, 'Développer les Services Publics et Biens Communs', 'Élargissement des services publics et des biens communs gratuits : transports, énergies, internet, culture, etc. La gratuité de ces services permets à chacun de bénéficier des besoins de bases pour vivre.', 0, 4),
(29, 5, 'Investir les économies réalisées (gestion, santé, éducation, développement économique local ...)', 'Les économies réalisées grâce à un revenu de base inconditionnelle, individuelle et automatique permet d\'économiser de l\'argent par rapport aux systèmes d\'aides existantes. L\'argent économisé permet de financer un revenu de base.', 0, 5),
(30, 6, 'Au niveau des minima sociaux actuels (RSA, Minimum vieillesse, AAH, ASS, etc)', NULL, 0, 1),
(31, 6, 'Entre les minima sociaux et le seuil de pauvreté', NULL, 0, 2),
(32, 6, 'Au niveau du seuil de pauvreté (960 euros)', NULL, 0, 3),
(33, 6, 'Au delà du seuil de pauvreté', NULL, 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

CREATE TABLE `evaluation` (
  `id_evaluation` bigint(20) NOT NULL,
  `id_result` bigint(20) NOT NULL,
  `id_choice` bigint(20) NOT NULL,
  `rating` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `evaluation`
--

INSERT INTO `evaluation` (`id_evaluation`, `id_result`, `id_choice`, `rating`) VALUES
(1, 30, 17, 5),
(2, 30, 18, 5),
(3, 30, 19, 3),
(4, 30, 20, 5),
(5, 30, 21, 5),
(6, 30, 22, 5),
(7, 30, 23, 1),
(8, 30, 24, 5),
(9, 30, 25, 2),
(10, 30, 26, 2),
(11, 30, 27, 4),
(12, 30, 28, 2),
(13, 30, 29, 4),
(14, 30, 30, 0),
(15, 30, 31, 0),
(16, 30, 32, 0),
(17, 30, 33, 3),
(18, 8, 17, 1),
(19, 8, 18, 3),
(20, 8, 19, 5),
(21, 8, 20, 3),
(22, 8, 21, 5),
(23, 8, 22, 3),
(24, 8, 23, 5),
(25, 8, 24, 3),
(26, 8, 25, 4),
(27, 8, 26, 4),
(28, 8, 27, 2),
(29, 8, 28, 4),
(30, 8, 29, 2),
(31, 8, 30, 0),
(32, 8, 31, 0),
(33, 8, 32, 3),
(34, 8, 33, 0),
(35, 16, 17, 5),
(36, 16, 18, 1),
(37, 16, 19, 1),
(38, 16, 20, 1),
(39, 16, 21, 1),
(40, 16, 22, 1),
(41, 16, 23, 1),
(42, 16, 24, 5),
(43, 16, 25, 4),
(44, 16, 26, 2),
(45, 16, 27, 4),
(46, 16, 28, 4),
(47, 16, 29, 4),
(48, 16, 30, 3),
(49, 16, 31, 0),
(50, 16, 32, 0),
(51, 16, 33, 0),
(52, 22, 17, 1),
(53, 22, 18, 1),
(54, 22, 19, 1),
(55, 22, 20, 1),
(56, 22, 21, 5),
(57, 22, 22, 1),
(58, 22, 23, 5),
(59, 22, 24, 5),
(60, 22, 25, 4),
(61, 22, 26, 4),
(62, 22, 27, 2),
(63, 22, 28, 2),
(64, 22, 29, 4),
(65, 22, 30, 0),
(66, 22, 31, 0),
(67, 22, 32, 0),
(68, 22, 33, 3),
(69, 15, 17, 1),
(70, 15, 18, 1),
(71, 15, 19, 1),
(72, 15, 20, 1),
(73, 15, 21, 5),
(74, 15, 22, 1),
(75, 15, 23, 5),
(76, 15, 24, 1),
(77, 15, 25, 4),
(78, 15, 26, 2),
(79, 15, 27, 4),
(80, 15, 28, 4),
(81, 15, 29, 4),
(82, 15, 30, 0),
(83, 15, 31, 0),
(84, 15, 32, 3),
(85, 15, 33, 0),
(86, 14, 17, 1),
(87, 14, 18, 1),
(88, 14, 19, 5),
(89, 14, 20, 1),
(90, 14, 21, 5),
(91, 14, 22, 5),
(92, 14, 23, 1),
(93, 14, 24, 5);

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id_question` bigint(20) NOT NULL,
  `id_questionnaire` bigint(20) NOT NULL,
  `title` char(100) NOT NULL,
  `description` longtext,
  `mode` tinyint(4) NOT NULL DEFAULT '1',
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  `place` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id_question`, `id_questionnaire`, `title`, `description`, `mode`, `weight`, `place`) VALUES
(4, 2, 'Les attentes sociétales', 'Qu\'attendez-vous d\'un RBI ? ', 1, 0, 1),
(5, 2, 'Les leviers de financements', 'Quelles sources de financements voulez-vous mobiliser dans le Revenu de Base ?', 2, 0, 2),
(6, 2, 'Le montant', 'Quel montant souhaitez-vous pour le RBI ?', 3, 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `questionnaire`
--

CREATE TABLE `questionnaire` (
  `id_questionnaire` bigint(20) NOT NULL,
  `title` char(100) NOT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `questionnaire`
--

INSERT INTO `questionnaire` (`id_questionnaire`, `title`, `description`) VALUES
(2, 'Revenu de base', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `result`
--

CREATE TABLE `result` (
  `id_result` bigint(20) NOT NULL,
  `title` char(100) NOT NULL,
  `id_result_ext` longtext NOT NULL,
  `pass` char(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `result`
--

INSERT INTO `result` (`id_result`, `title`, `id_result_ext`, `pass`) VALUES
(7, 'La Valeur-Temps Yoland Bresson et Henry Guitton', '6', '6741'),
(8, 'Revenu d\'autonomie Frédéric Bosqué\n\n(membre du MFRB)', '7', '6741'),
(9, 'Réforme des minimas sociaux Jean-Eric Hyafil\n\n\n(membre du MFRB)', '8', '6741'),
(10, ' Gérard Fouché\n\n(membre du MFRB)', '9', '6741'),
(11, 'Allocation Universelle Marc de Basquiat\n\nRéf: thèse\n\n(membre du MFRB)', '10', '6741'),
(12, 'Equinomy Sébastien Groyer\n\n(membre du MFRB)', '11', '6741'),
(13, 'Revenu d\'existence Guy Valette\n\n(membre du MFRB)', '12', '6741'),
(14, 'Revenu de base Geneviève Bouché\n\n(membre du MFRB)', '13', '6741'),
(15, 'Revenu Inconditionnel Baptiste Mylondo\n', '14', '6741'),
(16, ' Gaspard Koenig\n\nRéf : LIBER', '15', '6741'),
(17, ' Patrick Viveret\n', '16', '6741'),
(18, 'Euro Dividende Philippe Van Parijs\n', '17', '6741'),
(19, 'Salaire à Vie\nRéseau Salariat Bernard Friot\n', '18', '6741'),
(20, ' André Gorz', '19', '6741'),
(21, ' Jacques Marseille', '20', '6741'),
(22, ' Vincent Liégey\n', '21', '6741'),
(23, ' Jean Zin', '22', '6741'),
(24, 'Revenu universel Chrétiens démocrates \nChristine Boutin / Franck Margain', '23', '6741'),
(25, 'Revenu d\'existence Alternatives libérales', '24', '6741'),
(26, 'Revenu Minimum Inconditionnel Yves Cochet', '25', '6741'),
(27, ' Jean Desessard (EELV)', '26', '6741'),
(28, ' Joseph Charliet', '27', '6741'),
(29, ' James Hansen\n(climatologue de la NASA)', '28', '6741'),
(30, 'Un revenu de base pour une solidarité entre salariés et petites entreprises', '29', '4565');

-- --------------------------------------------------------

--
-- Structure de la table `result_rdb`
--

CREATE TABLE `result_rdb` (
  `id_rdb_result` bigint(20) NOT NULL,
  `supporting` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `motivation` longtext,
  `sum` longtext,
  `use_case` longtext,
  `funding` longtext,
  `reforms` longtext,
  `philosophy` longtext,
  `allocations` longtext,
  `links` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `result_rdb`
--

INSERT INTO `result_rdb` (`id_rdb_result`, `supporting`, `name`, `motivation`, `sum`, `use_case`, `funding`, `reforms`, `philosophy`, `allocations`, `links`) VALUES
(1, 'sébastien Groyer  (membre du MFRB)', '', '', '', '', '', '', '', '', ''),
(2, 'Thomas Paine', '', '', '', '', '', '', '', '', ''),
(3, 'Charles Fourier(1772-1837)France', '', 'Charles Fourier considère ainsi que l\'attirance naturelle des humains pour l\'activité et la vertu est totalement entravée et pervertie par le travail, « un état où l’homme s’impose à regret un supplice », et par la morale, cette « mortelle ennemie de l’attraction passionnée »', '', 'Les dividendes ainsi perçus viennent en positif sur le compte de chaque individu (et non de chaque famille, les enfants étant émancipés dès l\'âge de 3 ans). Sur ce compte sont inscrits en négatif le revenu minimum annuel garanti à chacun dès l\'âge de trois ans révolus, et le coût des biens et services qu’il a obtenus du phalanstère au cours de l’année (costumes, repas, autres fournitures et services…). Le solde positif n\'est donc distribué qu’en fin d’année, et seulement à leur majorité pour les mineurs.', '', '', '', '', ''),
(4, 'Joseph Charlier\n(1816-1896)\nBelgique', '', 'http://www.basicincome.org/bien/pdf/Solution%20du%20probleme%20social%20ou%20constitution%20humanitaire%20%E2%80%93%20Joseph%20Charlier.pdf', '', '- Développer la taxe foncière\n- impôts sur le patrimoine\n- répartition des niches', '', '', '', '', ''),
(5, 'Milton Friedman', '', '', '', '', '', '', '', '', ''),
(6, 'Yoland Bresson et Henry Guitton', 'La Valeur-Temps', 'Il faut que la collectivité, par le biais de l’État, alloue périodiquement à tout citoyen économique, sans autres considérations que celle de son existence, l’équivalent monétaire de la valeur de l’unité de temps', 'Montant faible qui remplace une partie du salaire\n\n400-450 € pour tous\nentre 300 et 500€', 'le salaire diminue', 'caisse de cotisation', '', 'réponse à l’évidente dégradation de notre modèle social, impuissant devant la montée du chômage, et de plus en plus impuissant pour éradiquer la pauvreté et pour lutter contre la précarité.', '', ''),
(7, 'Frédéric Bosqué(membre du MFRB)', 'Revenu d\'autonomie', '- Emancipation et autonomisation : Grâce à la relocalisation de la production, l’équilibre du système (et le RdB) est indépendant du système économique et financier global. C’est l’activité des habitants qui crée les richesses garantissant le RdB.- Réappropriation de la monnaie : Grâce à une monnaie complémentaire locale, réorienter la circulation de la monnaie vers un territoire et vers des activités à valeur ajoutée sociale et environnementale. La monnaie est au service de l’économie locale- Dynamisation économique d’un territoire de vie (zone rurale à revitaliser). Le revenu de base n’est pas une charge mais une ressource qui crée une dynamique qui s’étend sur un bassin de vie.- Intégration dans les problématiques écologiques et humaines: le revenu de base est au coeur d’un projet intégré qui articule les dimensions écologiques, sociales, économiques, démocratiques. Viser l’équilibre dans un nouvel écosystème.- Reconnexion de chacun avec sa participation à l’économie, à la production, au territoire, au fonctionnement de sa communauté politique: prise de conscience et choix du sens de nos actions (production, consommation, éducation, etc…) et de nos liens, responsabilisation, visibilité de son rôle.  Ne pas vivre “hors-sol”. Pouvoir d’agir sur l’évolution des choses', 'seuil de pauvreté +1€ (834€)', 'Monnaie locale complémentaire, ', 'En autonomie, créé par la production: distribution par une coopérative d\'activité de la production vitale (décidée collectivement) des habitants, indépendamment de leur participation à cette production / Financement par la production locale', 'Aucune réforme nécessaire: utilisation des dispositifs juridiques actuels:- monnaie complémentaire locale pour la forme de la distribution - coopératives d\'activité pour distribuer la production (production vitale décidée collectivement) à chaque habitant, indépendament de sa participation à cette production- coopérative d\'habitants pour la gestion de la propriété des habitations- loi ALUR: construction d\'habitat léger sur des terrains non constructibles--> mise en place possible dès maintenantPossibilité de mettre en place un revenu de base ici et maintenant, en commençant à un niveau local (un écohameau), et en utilisant les dispositifs juridiques et les techniques existantes, et notre force de travail. → Une expérimentation est déjà en prépartion', '- Revenu garanti/financé par la production de la communauté politique: relocalisation de la production vitale et autonomisation par rapport au système économique global - Revenu distribué en monnaie complémentaire locale (réappropriation de la monnaie et dynamisation des échanges dans le territoire de vie) - Intégration des dimensions écologiques, humaines, de gouvernance dans un modèle économique durable - Commencer de suite par une expérimentation au sein d\'un écohameau situé dans une zone rurale à revitaliser', '', 'http://revenudebase.info/2016/04/04/tera-experience-revenu-autonomie-dix-ans/'),
(8, 'Jean-Eric Hyafil\n\n\n(membre du MFRB)', 'Réforme des minimas sociaux', 'Réduire le coût du travail\nIl est bon d\'avoir une activité', 'Au moins le RSA et réduire l\'impôt', '1 - Remplacer les allocations familiales + le quotien enfant par un RDB enfant\n2 - Plafonner le bénéfice du quot. conjugal\n3 - Individualiser l’impôt, remplacer le quot. conjugal par un crédit d’impôt individuel\n4 - Expérimenter le RSA inconditionnel', '+ réduire la première tranche d\'impôt\n+ réflexion sur la TVA\n+ taxe sur les profits des multinationales', '- recalculer les dépenses fiscales de sorte que, avec une fusion de l’IRPP et de la CSG, ainsi que le prélèvement à un taux relativement élevé (20% à 30%) dès le premier euro, ces dépenses fiscales continuent à ouvrir droit à des réductions d’impôt sur le revenu autour de 34 milliards d’euros (leur poids en 2014) pour les ménages français.\n- basculer certaines dépenses fiscales vers des mécanismes de « chèque service universel »\n- individualiser l\'impot: comment ? Fusionner l’IRPP et la CSG en un impôt purement individuel on intégrer le revenu de base dans le revenu imposable pour maintenir le quotient conjugal.', 'Philosophie:\nDroit à l\'autonomie et au changement dans le rapport au travail.\n\nStratégie pragmatique pour parvenir au RDB\n- Réformer le RSA commpe remière étape d\'instauration du RDB: \n- supprimer la condition de recherche d’emploi pour toucher le RSA\n- modifier la règle relative à l’obligation alimentaire et le principe de subsidiarité qui en découle\n- automatiser le versement du RSA à tous ceux qui y ont droit\n- individualiser le RSA\n- verser le RSA ex-ante pour réduire à zéro les délais d’activation', '', 'Proposition Comission Sirugue: http://revenudebase.info/2016/02/17/le-mfrb-formule-ses-preconisations-sur-la-reforme-des-minima-sociaux/'),
(9, 'Gérard Fouché\n\n(membre du MFRB)', '', '', '150€/individu', '- interdire aux banques les ressources privées\n-que ce soit la BCE qui crée directement la monnaie\n-Quantitative Easing', 'Transformer la forme de création monétaire', '', '', '', ''),
(10, 'Marc de Basquiat\n\nRéf: thèse\n\n(membre du MFRB)', 'Allocation Universelle', '', '425€/adulte\n200€/enfant\n\ncf MB ( 192 € par mois pour les mineurs et de 384 € par mois pour\nles adultes. )', '-impôts proportionnels\n-basculementdes cotisat° vers IRPP (maladie, famille…)\n-fusions CSG / IRPP\n-suppression de toutes les niches fiscales', ' - l’impôt sur le revenu\n - l’impôt sur le patrimoine', '- Les cotisations sociales deviennent proportionnelles, à hauteur de 25% pour les salariés et 20% pour les non salariés. \n- Le système de santé est financé par une CSG totalement affecté à cette mission, au taux de 12 % des revenus. \n- Un impôt universel de redistribution du revenu et du patrimoine conjugue un prélèvement proportionnel de 20 % de tous les revenus (IURR) et une taxe sur l’actif net (TAN) de 1 % de tous les patrimoines nets de dettes. \n- Une disposition particulière permet d’encourager la fluidité du marché du logement.', 'le système redistributif français est complexe, peu flexible, inefficace, assez faiblement redistributif et fortement biaisé à l’encontre des revenus du travail par rapport à ceux de l’épargne. le concept d’allocation universelle, conjugué à une imposition proportionnelle des revenus (flat tax) et un volet de prestations compassionnelles, permet de définir un ensemble redistributif présentant des caractéristiques opposées. ', '', 'http://www.allocationuniverselle.com/doc/ReductionTheseAU2012-02-07Basquiat.pdf'),
(11, 'Sébastien Groyer\n\n(membre du MFRB)', 'Equinomy', 'Rendre juste la propriété et donc l\'économie', '1200 € net (50 % du PIB/adulte taxé à 33% par et pour l\'Etat)', 'Immédiate en une seul réforme fiscale et sociale globale\n', 'Tansformation totale du système fiscal avec une \'super-TVA\' remplaçant les diverses taxes (charges sociales et patronales, CSG, taxe foncière, redevance...) \nSuppression des aides diverses (APL, RSA, HLM, etc) et socle de chômage et retraite', 'Tansformation totale du système fiscal avec une \'super-TVA\' remplaçant les diverses taxes (charges sociales et patronales, CSG, taxe foncière, redevance...) \nSuppression des aides diverses (APL, RSA, HLM, etc) et socle de chômage et retraite', 'Le revenu de base de 50% du PIB est la condition de la justice et de l\'accord de tous les individus à une économie pacifique. Outre l\'émancipation et la liberté des individus, elle permet surtout une clarté, une lisibilité et une sécurité qui rendent l\'Etat et la démocratie beaucoup plus efficaces.', 'Suppression des aides diverses (APL, RSA, HLM, etc) et socle de chômage et retraite', 'www.equinomy.com'),
(12, 'Guy Valette\n\n(membre du MFRB)', 'Revenu d\'existence', '', '750€ modulable', '', 'Redistribution', '- creation de la contribution de solidarité pour le revenu d\'existance (CSRE) : 30% des salaires et revenus brut. \n- création de la taxe sur l\'actif net (TAN) : 1,5% du patrimoine par an. \n- création de la CSE ( Contribution sur l\'Excédent Brut d\'Exploitation) : 10% de l\'EBE des entreprises, compensée par la suppression de la cotisation \" patronale\" pour les allocations famililales  Suppression de l\'IRPP et de la CSG actuelle', 'Proche de la charte du MFRB (a raffiner)', 'Suppression de toutes les aides conditionnées non contributives comme le RSA, l\'ASPA, les bourses d\'études, les aides à l\'emploi,les aides aux familles, les allocations familiales et l\'allocation logement. Maintien des allocations chômage,. Renforcement de l\'assurance maladie et du système de retraite par répartition.', 'http://fr.slideshare.net/guyvalette7/le-revenu-dexistence-600-2014-31981667'),
(13, 'Geneviève Bouché\n\n(membre du MFRB)', 'Revenu de base', 'la richesse d\'une population réside dans celle du sol qu\'elle occupe, mais aussi de plus en plus dans la diversité de ses connaissances et de ses talents. Pour cela, elle doit se doter d\'instruments de gouvernance qui favorise la fructification de toutes ses richesses y compris humaines. Par ailleurs, une simplication de nos gouvernances s\'imposent.', '5% au dessus du seuil de pauvreté européen', 'le RdB doit être ajusté à la création de richesse locale et nationale ainsi que la part qui est crée dans l\'espace productif et l\'espace contributif : combinaisons de monnaies \"officielles\" (€), locales, reconnaissance, savoir… Il s’agit de favoriser les tâches productives (court terme) et contributives (long terme) de manière harmonieuse.', '\n\nLa population étant une richesse, le budget de l\'état et des collectivités est construit en prenant le RdB comme un coût fixe. La quantité de devises en circulation est calibrée en conséquence. Le montant du RdB est ajusté à l\'ambition (constructive) de la collectivité. \n\n', 'En amont des réformes, il y a la vision : compléter l\'économie productive avec l\'économie contributive. Faire évoluer le mécanisme de création / destruction de monnaies et passer au multidevise en capitalisant sur l\'espace technologique introduit les blockchain (structure per to per et non plus centralisée).', '\n\nL\'homme a été nomade, puis sédentaire et donc agriculteur.\nIl a développé des outils pour se rendre plus efficace. A présent, il devient nomade, tant socialement que géographiquement. Il veut réussir sa vie en conjuguant des activités productives et des activités contributives. Le modèle de société que les générations montantes veulent dessiner est basé sur cette aspiration collective qui est très profonde et surtout puissante car mondiale. Le modèle actuel est basé sur la propriété, la rente et la dette. Son moteur est le désir d\'accaparement. Le modèle qui se dessine est basé sur la reconnaissance par la collectivité et le désir d\'être reconnu (couches supérieures de la pyramide de Maslow).\n\n', 'Aucune autre allocation n\'est versée : c’est la société efficace et donc attractive ! En effet, la compétitivité des nations se joue à présent sur l’attractivité : les individus sont mobiles, ils cherchent à s’installer dans les pays où la vie est ouverte et simple et où tout est fait pour que chacun réussisse chaque étape de son parcours de vie.', 'http://s298243136.onlinehome.fr/dotclear/index.php?post/2016/08/01/Mon-revenu-de-base-%C3%A0-moi'),
(14, 'Baptiste Mylondo', 'Revenu Inconditionnel Suffisant', 'Fondement: reconnaissance de la contribution de tous Objectifs: suppression de la pauvreté monétaire, réduction des inégalités, sortie de la société laborieuse, donc sortie du salariat (comme lieu de subordination, d\'aliénation et d\'exploitation), donc sortie du capitalisme, donc sortie du productivisme, par développement du pouvoir d\'agir.', 'Seuil de pauvreté (60% du revenu médian)', 'Mise en oeuvre progressive du projet politique qui accompagne le RIS. Pas de mise en oeuvre par augmentation progressive du montant, mais aménagement progressif de la société pour la rendre compatible avec l\'adoption d\'un RIS (que faut-il changer dans la société pour rendre possible un véritable RIS?).', 'Hausse du taux moyen et de la progressivité de l\'IRPP', '\"coopérativisation\" de la société (entreprises et logement), revenu maximum suffisant (RMA), taxe sur le patrimoine, extension des services publics, droit inconditionnel au temps partiel choisi.', 'Plus qu\'une proposition politique concrète, le RIS est une manière d\'interpeller la société qui doit nous amener à changer l\'organisation sociale. Il ne s\'agit pas de tomber dans un fétichisme de la mesure qui conduirait à défendre un RI à tout prix, ni à défendre un RI ou rien, voire un RI et c\'est tout.', 'Suppression du RSA, de l\'ASS, du minimum vieillesse, des allocations familiales, des bourses scolaires et universitaires', 'https://www.monde-diplomatique.fr/2013/05/MYLONDO/49066  http://www.revenudebase.info/2016/06/08/questions-mylondo-revenu-condition/  http://www.revenudebase.info/wp-content/uploads/2012/07/Mylondo-Baptiste_precise-utopie-realiste.pdf'),
(15, 'Génération Libre (Gaspard Koenig et Marc de Basquiat)', 'LIBER', 'Assurer aux membres d’une même société les moyens de survivre.  Apporter à chacun la sécurité fondamentale lui permettant de disposer pleinement de sa liberté et d’effectuer ses propres choix. Assurer aux membres d’une même société les moyens de survivre.  Apporter à chacun la sécurité fondamentale lui permettant de disposer pleinement de sa liberté et d’effectuer ses propres choix. ', '480€ pour les adultes, 270€ entre 14 et 18 ans, 200€ en dessous de 14 ans', ' Sous la forme d\'un crédit d\'impôt (impôt négatif).   Successions de réformes décrites dans les 10 fiches techniques de ce document : https://blog.revenudexistence.org/2017/01/05/liber2/', 'LIBERTAXE : impôt proportionnel de 23%, sur tous les revenus (se substitue à l\'impot sur le revenu, à la CSG et à l\'impot sur les sociétés) et au premier euro, prélevé à la source et sur base individuelle.', '_', '_', ' Le LIBER remplacerait de nombreuses allocations, dont le RSA, la prime pour l’emploi, les allocations familiales, ou les exonérations fiscales sur les revenus du patrimoine  Aides maintenues : aides au logement, allocations handicapés, ainsi que les systèmes de retraite et de chomage', 'LIBER, un revenu de liberté pour tous : https://www.generationlibre.eu/wp-content/uploads/2014/05/un-LIBER-pour-tous.pdf  http://www.revenudexistence.org/doc/LIBER-II_VF.pdf'),
(16, 'Patrick Viveret\n', '', '', '', '', 'pas de proposition', '', '', '', ''),
(17, 'Philippe Van Parijs\n', 'Euro Dividende', '\n    1/ libérer les chômeurs de la trappe de pauvreté qu\'engendrent les systèmes actuels de compensation à l\'absence d\'emploi ;\n    2/ améliorer les conditions des travailleurs via l\'accroissement du pouvoir de négociation des employés face à leurs employeurs ;\n    3/ encourager le travail indépendant, l\'innovation et la prise de risque ;\n    4/ libérer les femmes au foyer de leur dépendance financière par rapport à leurs maris.\n', 'le plus élevé qui soit soutenable\nà tous les citoyens de la zone euro', '', '', '', '', '', ''),
(18, 'Bernard Friot\n', 'Salaire à Vie\nRéseau Salariat', 'Une société sans propriété lucrative afin de propriété lucrative afin de privilégier la propriété d\'usage, se rapprochant ainsi des modèles de SCOP.', 'Qualification 1 à 1500€', '', 'Par la cotisation. Le Réseau Salariat souhaite supprimer le profit et créer une caisse de cotisation salaire reprenant l\'entièreté des salaires. La part du PIB étant attribuer aux salaires (60% du PIB) irait à cette caisse.\nExcédent brut d\'exploitation (EBE)', '', '', '', ''),
(19, 'André Gorz', '', '', 'Suffisant pour permettre de refuser un travail (indigne)', '', 'pas de proposition', '', '', '', ''),
(20, 'Jacques Marseille', '', 'se rapproche de la vision suisse', '600€/adulte\n300€/enfant', '', 'La fusion de l’aide sociale, du système de chômage et du système de retraite dans un revenu de base\n(RSA+APL)', '', '', 'supprimer', ''),
(21, 'Parti pour la Décroissance (Vincent Liégey)', 'Dotation Inconditionnelle d\'Autonomie', 'Cette proposition est un des outils de la Décroissance en faveur d\'une transformation radicale, démocratique et sereine vers des sociétés soutenables, conviviales et autonomes.                         ', 'Cette DIA est composée de droit d\'accès à des services, de droits de tirage sur des ressources naturelles et aussi de monnaies locales, nationales et supranationales. Nous proposons de définir démocratiquement un plancher haut en dessous duquel nous refusons d\'abandonner qui que ce soit, et un plafond indépassable, le Revenu Maximum Acceptable avec un écart de 1 à 4 entre le plancher et le plafond.', 'De manière progressive et décentralisée : cette mise en place s\'appuie sur la transformation de la société à travers les initiatives locales (monnaies locales, AMAP, jardins communautaires, démocratie directe, etc.). En faisant pression contre l\'oligarchie et les lobbies, les communs, l\'argent public sont (re-)distribués, les lois adaptées afin de renforcer ces dynamiques.  Une seconde étape peut consister en la mise en place de mesures décentralisées et sur la base du volontariat, de le possibilité de travailler moins pour vivre mieux. Ainsi à la pression liée au chômage, tout comme au mal-être au travail s\'amenuisent en se réappropriant des activités choisies riches de sens.  Une troisième étape consiste à la mise en place d\'un revenu de base couplé au RMA mis en place de manière progressive. En s\'appuyant sur les initiatives locales et aussi à travers un ré-encastrement de l\'économie (audit de la dette, réappropriation de la création monétaire), un certain nombre de réforme (gratuité du bon usage de l\'eau par exemple) et de manière décentralisée, ce revenu est progressivement démonétarisée afin de tendre vers la DIA.', 'Le financement est pour nous une question non essentielle dans le sens où l\'enjeu est politique et non économique : l\'argent ne se mange pas ! Derrière la question du financement, se pose la question du partage des richesses au sens matériel, et de la contribution de toutes et tous aux productions. Le revenu de base fait déjà partie du questionnement sur le partage, le RMA aussi, ainsi que les notions de responsabilité, d\'autonomie, du \"qu\'est-ce qu\'on produit, pourquoi et comment ?\". Dans les faits, pour bien partager, nous proposons son financement à travers une relocalisation ouverte de nos productions et échanges, et une sortie de notre modèle économique actuel : audit des dettes publiques, non remboursements des parts illégitimes, injustes ou illégales, réappropriation politique des banques centrales, création monétaire si nécessaire, définanciarisation de l\'économie, RMA. L\'économie est un moyen, pas un but. ', '', 'La DIA est autant un chemin qu\'une fin. Ces propositions s\'inscrivent dans une réflexion paradigmatique autour des limites de la croissance, le sens de nos vies, du bien-vivre, de la démocratie et propose de se réapproprier le questionnement : qu\'est-ce qu\'on produit ? Comment et pour quel usage ?', 'Un des enjeux de la DIA est de créer des dynamiques de délibérations citoyennes sur ce que sont nos besoins et comment y répondre de manière soutenable mais aussi juste. C\'est un projet de transition : en partant de l\'existant, ce qui est souhaitable d\'être conservé est amélioré, réformé, étendu (sécurité sociale universelle), ce qui devient obsolète est démantelé une fois remplacé (RSA et sa dimension humiliante) et enfin de nouveaux outils sont créés (monnaies locales, gratuités du bon-usage).', 'http://www.projet-decroissance.net'),
(22, 'Jean Zin', '', 'Dynamiser le local', 'Suffisant', 'Monnaies locales\nCoopérative des compétences', '', '', '', '', ''),
(23, 'Chrétiens démocrates \nChristine Boutin / Franck Margain', 'Revenu universel', 'Voir peut-être avec Marc de Basquiat qui a travaillé avec elle sur sa proposition', '300€', '', '', '', '', '', 'http://fr.aleteia.org/2016/01/08/lidee-du-revenu-de-base-universel-fait-son-chemin/'),
(24, 'Alternatives libérales', 'Revenu d\'existence', '', '500 € par adulte et 100 € par mineur', '', '', 'Une fois instauré, ce revenu serait retranché à toutes les retraites par répartition. Sa mise en place serait en outre assortie d\'une suppression de toutes les allocations et mécanismes de redistributions, et le SMIC serait supprimé pour laisser place à un salaire minimum librement négocié par banche ou par entreprise...\n', '', '', ''),
(25, 'Yves Cochet', 'Revenu Minimum Inconditionnel', '', '600€', '', '', '', '', '', ''),
(26, 'Jean Desessard (EELV)', '', '', '', '', '', '', '', '', 'http://revenudebase.info/wp-content/uploads/2013/11/motion-EELV-Revenu-existence-universel.pdf'),
(27, 'Joseph Charliet', '', 'Thomas Paine', '', '- Développer la taxe foncière\n- impôts sur le patrimoine\n- répartition des niches', '', '', '', '', ''),
(28, 'James Hansen\n(climatologue de la NASA)', '', 'Fiscalité écologique', '', 'redistribution de ceux qui polluent', 'Taxe carbone', '', '', '', ''),
(29, 'Florent Kaisser', 'Un revenu de base pour une solidarité entre salariés et petites entreprises', 'La place des petites et moyennes entreprises doit être centrale dans la mise en place d\'un revenu de base', 'Un SMIC revalorisé pour les adultes : 1250 € par adulte\nDes allocations familiales revalorisées : 250 € par enfant dés le premier enfant.', 'Le revenu de base est distribué de la naissance à la mort. Il est suffisant pour vivre dignement et peut être complété par un salaire dans le cadre d\'un emploi.', 'Par la cotisation sur la valeur ajouté des entreprises (CVA). Ainsi, aussi bien  la valeur économique produit par les salariés comme par les machines contribueront au financement d\'un revenu de base et de la sécurité sociale en général.', 'Renforcement de la sécurité social et son extension pour distribuer le revenu de base et les allocations chômages. (Budget 1000 milliard d\'euros géré indépendamment de l\'état).\nÉlargissement des services publics gratuits gérés par les collectivités locales. (Budget au total : 250 milliard d\'euros environ).\nRéduction des dépenses de l\'état (transfert à la sécurité social ou au collectivités, Budget : 250 milliard d\'euros environ). ', 'Le revenu de base est à la hauteur d\'un SMIC et financé par les entreprises via la cotisation sur la valeur ajoutée. En échange, les entreprises rémunèrent leurs salariés entre 0 et un salaire maximum. Le revenu de base étant de à la hauteur d\'un SMIC revalorisé, tout travailleur recevra entre le montant de ce SMIC (ex. 1250 €) et un salaire maximum (ex. 10 000 €) quelque soit la durée du temps de travail dans l\'entreprise. Ainsi, tout salarié ne perdra pas en salaire par rapport à avant,  mieux, il y gagnera.', 'Suppression des minimas sociaux (RSA, Minimum retraire, ASS, AAH, ...)\r\nUne part (à la hauteur du revenu de base) du salaire des fonctionnaire n\'est plus financé par l\'état mais par le revenu de base.\r\nLes allocations chômages concernera seulement la partie salaire complémentaire.', 'http://florent.kaisser.name/blog/rdb_cva');

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id_session` bigint(20) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id_answer`),
  ADD KEY `session` (`id_session`),
  ADD KEY `choice` (`id_choice`);

--
-- Index pour la table `choice`
--
ALTER TABLE `choice`
  ADD PRIMARY KEY (`id_choice`),
  ADD KEY `choice_question` (`id_question`);

--
-- Index pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id_evaluation`),
  ADD KEY `result` (`id_result`),
  ADD KEY `choice` (`id_choice`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id_question`),
  ADD KEY `questionnaire` (`id_questionnaire`);

--
-- Index pour la table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`id_questionnaire`);

--
-- Index pour la table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id_result`);

--
-- Index pour la table `result_rdb`
--
ALTER TABLE `result_rdb`
  ADD PRIMARY KEY (`id_rdb_result`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id_session`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answer`
--
ALTER TABLE `answer`
  MODIFY `id_answer` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `choice`
--
ALTER TABLE `choice`
  MODIFY `id_choice` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `id_evaluation` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id_question` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `id_questionnaire` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `result`
--
ALTER TABLE `result`
  MODIFY `id_result` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `result_rdb`
--
ALTER TABLE `result_rdb`
  MODIFY `id_rdb_result` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `session`
--
ALTER TABLE `session`
  MODIFY `id_session` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
