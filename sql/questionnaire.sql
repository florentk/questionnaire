-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 06 Novembre 2016 à 15:44
-- Version du serveur :  5.7.15-0ubuntu0.16.04.1
-- Version de PHP :  7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Contenu de la table `choice`
--

INSERT INTO `choice` (`id_choice`, `id_question`, `title`, `description`, `weight`, `position`) VALUES
(17, 4, 'Améliorer le système de protection sociale existant', '- éradiquer l\'extrême misère\r\n- résoudre le problème des non-recours aux aides (dû à la complication des dossiers, la stigmatisation …)\r\n- simplifier le mille-feuilles des aides sociales\r\n- combler les trous dans le système de protection sociale (pour les 18-25 ans …)\r\n- réduire le coût administratif lié au contrôle des prestataires ', 0, 1),
(18, 4, 'Satisfaire les besoins essentiels', '- satisfaire les besoins reconnus par la Déclaration des Droits de l\'Humain, repris dans la charte européenne : nourriture, ...\r\n- être libre dans la satisfaction de ses besoins minimum', 0, 2),
(19, 4, 'Construire un nouveau contrat social', '- faciliter l\'émancipation et l\'égalité des droits de tou-tes : jeunes, personnes âgées, femmes, porteurs de handicap ….\r\n- aider à l\'intégration des travailleurs immigrés\r\n- permettre à chacun-e d\'exercer sa citoyenneté, de participer à la vie de la cité ... (//Thomas Paine : « sans revenu, point de citoyen »)\r\n- réconcilier Liberté (chacun-e choisit l\'usage de son RBI), l’Égalité (tou-tes le reçoivent) et la Fraternité (financement collectif d\'un nouveau droit constitutionnel)\r\n- interdépendance : accueil inconditionnel de chaque citoyen-ne, reconnu-e dans sa diversité a priori, comme partie d\'un collectif (éducation à l\'autonomie, au travail collaboratif, au développement de ses compétences …) ', 0, 3),
(20, 4, 'Changer le rapport à l\'emploi', '- permettre de refuser un emploi\r\n- faciliter la négociation des conditions de travail (horaires, tâches, autonomie ...)\r\n- sécuriser chacun-e face à la disparition d\'emplois (due à l\'automatisation, la numérisation, le partage des tâches...)\r\n- sécuriser entre les périodes de chômage, d\'intermittence, d\'interim... ', 0, 4),
(21, 4, 'Impulser un renouveau économique', '- reconnaître la richesse de toutes les activités, rémunérées ou non (entretien ménager, éducation, soins, bénévolat, formation personnelle ...)\r\n- sécuriser la consommation et faciliter l\'accession au logement, à la formation …\r\n- sécuriser la créativité entrepreneuriale, artisanale et artistique\r\n- impulser une nouvelle répartition du temps de travail ', 0, 5),
(22, 4, 'Réduire les inégalités sociales', '- mieux répartir les bénéfices de la productivité (automatisation, numérisation, partage des tâches avec le consommateur …)\r\n- réduire la souffrance au travail comme celle des exclus du marché du travail', 0, 6),
(23, 4, 'Impulser un élan écologique', '- améliorer le pouvoir d\'achat vers une consommation équitable, locale, durable\r\n- être autonome dans la satisfaction de ses besoins minimum\r\n- impliquer les citoyens-usagers dans la gestion des ressources locales ', 0, 7),
(24, 4, 'Améliorer le potentiel humain', '- libérer chacun-e de la peur de manquer, des besoins physiques et de sécurité\r\n- libérer la créativité, l\'innovation et le potentiel de chacun-e\r\n- fluidifier les collectifs de travail (emploi ou activité) et les formes d\'échanges (in-formels)\r\n- faire reculer les préjugés, apaiser les conflits sociétaux et individuels ', 0, 8),
(25, 5, 'Ce que l\'Etat donne déjà', 'Redistribution sous forme inconditionnelle, individuelle et automatique des aides déjà existantes', 0, 1),
(26, 5, 'Des leviers fiscaux existants', 'Financement par l\'augmentation d’impôts déjà existants ou la création de nouvelles : CSG, TVA, RI, taxes diverses... ', 0, 2),
(27, 5, 'La création monétaire', 'Distribuer la création monétaire sous forme d\'un revenu de base. La monnaie utilisée peut être internationale, européenne, nationale ou locale. ', 0, 3),
(28, 5, 'Élargir la sphère de la gratuité', 'Élargissement des services publics et des biens communs : transports, énergies, internet, culture, etc. La gratuité de ces services permets à chacun de bénéficier des besoins de bases pour vivre.', 0, 4),
(29, 5, 'Économies réalisées', 'Les économies réalisées grâce à un revenu de base inconditionnelle, individuelle et automatique permet d\'économiser de l\'argent par rapport aux systèmes d\'aides existantes. L\'argent économisé permet de financer un revenu de base.', 0, 5),
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
-- Contenu de la table `evaluation`
--

INSERT INTO `evaluation` (`id_evaluation`, `id_result`, `id_choice`, `rating`) VALUES
(26, 8, 17, 3),
(27, 8, 18, 3),
(28, 8, 19, 1),
(29, 8, 20, 3),
(30, 8, 21, 3),
(31, 8, 22, 3),
(32, 8, 23, 1),
(33, 8, 24, 3),
(34, 8, 25, 5),
(35, 8, 26, 3),
(36, 8, 27, 1),
(37, 8, 28, 1),
(38, 8, 29, 5),
(39, 8, 30, 5),
(40, 8, 31, 3),
(41, 8, 32, 1),
(42, 8, 33, 1),
(43, 9, 17, 3),
(44, 9, 18, 1),
(45, 9, 19, 1),
(46, 9, 20, 1),
(47, 9, 21, 1),
(48, 9, 22, 1),
(49, 9, 23, 1),
(50, 9, 24, 1),
(51, 9, 25, 5),
(52, 9, 26, 1),
(53, 9, 27, 1),
(54, 9, 28, 1),
(55, 9, 29, 1),
(56, 9, 30, 5),
(57, 9, 31, 1),
(58, 9, 32, 1),
(59, 9, 33, 1);

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id_question` bigint(20) NOT NULL,
  `id_questionnaire` bigint(20) NOT NULL,
  `title` char(100) NOT NULL,
  `description` longtext,
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  `place` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`id_question`, `id_questionnaire`, `title`, `description`, `weight`, `place`) VALUES
(4, 2, 'Les attentes sociétales', 'Qu\'attendez-vous d\'un RBI ? ', 0, 1),
(5, 2, 'Les leviers de financements', 'Quels outils voulez-vous impliquer dans le financement du RBI ? ', 0, 2),
(6, 2, 'Le montant', 'A quel niveau souhaitez-vous le RBI ?', 0, 3);

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
-- Contenu de la table `questionnaire`
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
  `id_result_ext` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `result`
--

INSERT INTO `result` (`id_result`, `title`, `id_result_ext`) VALUES
(2, ' sébastien Groyer  (membre du MFRB)', '1'),
(3, ' Thomas Paine', '2'),
(4, ' Charles Fourier\n(1772-1837)\nFrance', '3'),
(5, ' Joseph Charlier\n(1816-1896)\nBelgique', '4'),
(6, ' Milton Friedman', '5'),
(7, 'La Valeur-Temps Yoland Bresson et Henry Guitton', '6'),
(8, 'Revenu d\'autonomie Frédéric Bosqué\n\n(membre du MFRB)', '7'),
(9, 'Réforme des minimas sociaux Jean-Eric Hyafil\n\n\n(membre du MFRB)', '8'),
(10, ' Gérard Fouché\n\n(membre du MFRB)', '9'),
(11, 'Allocation Universelle Marc de Basquiat\n\nRéf: thèse\n\n(membre du MFRB)', '10'),
(12, 'Equinomy Sébastien Groyer\n\n(membre du MFRB)', '11'),
(13, 'Revenu d\'existence Guy Valette\n\n(membre du MFRB)', '12'),
(14, 'Revenu de base Geneviève Bouché\n\n(membre du MFRB)', '13'),
(15, 'Revenu Inconditionnel Baptiste Mylondo\n', '14'),
(16, ' Gaspard Koenig\n\nRéf : LIBER', '15'),
(17, ' Patrick Viveret\n', '16'),
(18, 'Euro Dividende Philippe Van Parijs\n', '17'),
(19, 'Salaire à Vie\nRéseau Salariat Bernard Friot\n', '18'),
(20, ' André Gorz', '19'),
(21, ' Jacques Marseille', '20'),
(22, ' Vincent Liégey\n', '21'),
(23, ' Jean Zin', '22'),
(24, 'Revenu universel Chrétiens démocrates \nChristine Boutin / Franck Margain', '23'),
(25, 'Revenu d\'existence Alternatives libérales', '24'),
(26, 'Revenu Minimum Inconditionnel Yves Cochet', '25'),
(27, ' Jean Desessard (EELV)', '26'),
(28, ' Joseph Charliet', '27'),
(29, ' James Hansen\n(climatologue de la NASA)', '28');

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
-- Contenu de la table `result_rdb`
--

INSERT INTO `result_rdb` (`id_rdb_result`, `supporting`, `name`, `motivation`, `sum`, `use_case`, `funding`, `reforms`, `philosophy`, `allocations`, `links`) VALUES
(1, 'sébastien Groyer  (membre du MFRB)', '', '', '', '', '', '', '', '', ''),
(2, 'Thomas Paine', '', '', '', '', '', '', '', '', ''),
(3, 'Charles Fourier\n(1772-1837)\nFrance', '', 'Charles Fourier considère ainsi que l\'attirance naturelle des humains pour l\'activité et la vertu est totalement entravée et pervertie par le travail, « un état où l’homme s’impose à regret un supplice », et par la morale, cette « mortelle ennemie de l’attraction passionnée »', '', 'Les dividendes ainsi perçus viennent en positif sur le compte de chaque individu (et non de chaque famille, les enfants étant émancipés dès l\'âge de 3 ans). Sur ce compte sont inscrits en négatif le revenu minimum annuel garanti à chacun dès l\'âge de trois ans révolus, et le coût des biens et services qu’il a obtenus du phalanstère au cours de l’année (costumes, repas, autres fournitures et services…). Le solde positif n\'est donc distribué qu’en fin d’année, et seulement à leur majorité pour les mineurs.', '', '', '', '', ''),
(4, 'Joseph Charlier\n(1816-1896)\nBelgique', '', 'http://www.basicincome.org/bien/pdf/Solution%20du%20probleme%20social%20ou%20constitution%20humanitaire%20%E2%80%93%20Joseph%20Charlier.pdf', '', '- Développer la taxe foncière\n- impôts sur le patrimoine\n- répartition des niches', '', '', '', '', ''),
(5, 'Milton Friedman', '', '', '', '', '', '', '', '', ''),
(6, 'Yoland Bresson et Henry Guitton', 'La Valeur-Temps', 'Il faut que la collectivité, par le biais de l’État, alloue périodiquement à tout citoyen économique, sans autres considérations que celle de son existence, l’équivalent monétaire de la valeur de l’unité de temps', 'Montant faible qui remplace une partie du salaire\n\n400-450 € pour tous\nentre 300 et 500€', 'le salaire diminue', 'caisse de cotisation', '', 'réponse à l’évidente dégradation de notre modèle social, impuissant devant la montée du chômage, et de plus en plus impuissant pour éradiquer la pauvreté et pour lutter contre la précarité.', '', ''),
(7, 'Frédéric Bosqué\n\n(membre du MFRB)', 'Revenu d\'autonomie', '- Emancipation et autonomisation : Grâce à la relocalisation de la production, l’équilibre du système (et le RdB) est indépendant du système économique et financier global. C’est l’activité des habitants qui crée les richesses garantissant le RdB.\n- Réappropriation de la monnaie : Grâce à une monnaie complémentaire locale, réorienter la circulation de la monnaie vers un territoire et vers des activités à valeur ajoutée sociale et environnementale. La monnaie est au service de l’économie locale\n- Dynamisation économique d’un territoire de vie (zone rurale à revitaliser). Le revenu de base n’est pas une charge mais une ressource qui crée une dynamique qui s’étend sur un bassin de vie.\n- Intégration dans les problématiques écologiques et humaines: le revenu de base est au coeur d’un projet intégré qui articule les dimensions écologiques, sociales, économiques, démocratiques. Viser l’équilibre dans un nouvel écosystème.\n- Reconnexion de chacun avec sa participation à l’économie, à la production, au territoire, au fonctionnement de sa communauté politique: prise de conscience et choix du sens de nos actions (production, consommation, éducation, etc…) et de nos liens, responsabilisation, visibilité de son rôle.  Ne pas vivre “hors-sol”. Pouvoir d’agir sur l’évolution des choses\n\n', 'seuil de pauvreté +1€ (834€)', 'Monnaie locale complémentaire, ', 'En autonomie, créé par la production: distribution par une coopérative d\'activité de la production vitale (décidée collectivement) des habitants, indépendamment de leur participation à cette production / Financement par la production locale', 'Aucune réforme nécessaire: utilisation des dispositifs juridiques actuels:\n- monnaie complémentaire locale pour la forme de la distribution \n- coopératives d\'activité pour distribuer la production (production vitale décidée collectivement) à chaque habitant, indépendament de sa participation à cette production\n- coopérative d\'habitants pour la gestion de la propriété des habitations\n- loi ALUR: construction d\'habitat léger sur des terrains non constructibles\n--> mise en place possible dès maintenant\n\nPossibilité de mettre en place un revenu de base ici et maintenant, en commençant à un niveau local (un écohameau), et en utilisant les dispositifs juridiques et les techniques existantes, et notre force de travail. → Une expérimentation est déjà en prépartion', '- Revenu garanti/financé par la production de la communauté politique: relocalisation de la production vitale et autonomisation par rapport au système économique global - Revenu distribué en monnaie complémentaire locale (réappropriation de la monnaie et dynamisation des échanges dans le territoire de vie) - Intégration des dimensions écologiques, humaines, de gouvernance dans un modèle économique durable - Commencer de suite par une expérimentation au sein d\'un écohameau situé dans une zone rurale à revitaliser', '', 'http://revenudebase.info/2016/04/04/tera-experience-revenu-autonomie-dix-ans/'),
(8, 'Jean-Eric Hyafil\n\n\n(membre du MFRB)', 'Réforme des minimas sociaux', 'Réduire le coût du travail\nIl est bon d\'avoir une activité', 'Au moins le RSA et réduire l\'impôt', '1 - Remplacer les allocations familiales + le quotien enfant par un RDB enfant\n2 - Plafonner le bénéfice du quot. conjugal\n3 - Individualiser l’impôt, remplacer le quot. conjugal par un crédit d’impôt individuel\n4 - Expérimenter le RSA inconditionnel', '+ réduire la première tranche d\'impôt\n+ réflexion sur la TVA\n+ taxe sur les profits des multinationales', '- recalculer les dépenses fiscales de sorte que, avec une fusion de l’IRPP et de la CSG, ainsi que le prélèvement à un taux relativement élevé (20% à 30%) dès le premier euro, ces dépenses fiscales continuent à ouvrir droit à des réductions d’impôt sur le revenu autour de 34 milliards d’euros (leur poids en 2014) pour les ménages français.\n- basculer certaines dépenses fiscales vers des mécanismes de « chèque service universel »\n- individualiser l\'impot: comment ? Fusionner l’IRPP et la CSG en un impôt purement individuel on intégrer le revenu de base dans le revenu imposable pour maintenir le quotient conjugal.', 'Philosophie:\nDroit à l\'autonomie et au changement dans le rapport au travail.\n\nStratégie pragmatique pour parvenir au RDB\n- Réformer le RSA commpe remière étape d\'instauration du RDB: \n- supprimer la condition de recherche d’emploi pour toucher le RSA\n- modifier la règle relative à l’obligation alimentaire et le principe de subsidiarité qui en découle\n- automatiser le versement du RSA à tous ceux qui y ont droit\n- individualiser le RSA\n- verser le RSA ex-ante pour réduire à zéro les délais d’activation', '', 'Proposition Comission Sirugue: http://revenudebase.info/2016/02/17/le-mfrb-formule-ses-preconisations-sur-la-reforme-des-minima-sociaux/'),
(9, 'Gérard Fouché\n\n(membre du MFRB)', '', '', '150€/individu', '- interdire aux banques les ressources privées\n-que ce soit la BCE qui crée directement la monnaie\n-Quantitative Easing', 'Transformer la forme de création monétaire', '', '', '', ''),
(10, 'Marc de Basquiat\n\nRéf: thèse\n\n(membre du MFRB)', 'Allocation Universelle', '', '425€/adulte\n200€/enfant\n\ncf MB ( 192 € par mois pour les mineurs et de 384 € par mois pour\nles adultes. )', '-impôts proportionnels\n-basculementdes cotisat° vers IRPP (maladie, famille…)\n-fusions CSG / IRPP\n-suppression de toutes les niches fiscales', ' - l’impôt sur le revenu\n - l’impôt sur le patrimoine', '- Les cotisations sociales deviennent proportionnelles, à hauteur de 25% pour les salariés et 20% pour les non salariés. \n- Le système de santé est financé par une CSG totalement affecté à cette mission, au taux de 12 % des revenus. \n- Un impôt universel de redistribution du revenu et du patrimoine conjugue un prélèvement proportionnel de 20 % de tous les revenus (IURR) et une taxe sur l’actif net (TAN) de 1 % de tous les patrimoines nets de dettes. \n- Une disposition particulière permet d’encourager la fluidité du marché du logement.', 'le système redistributif français est complexe, peu flexible, inefficace, assez faiblement redistributif et fortement biaisé à l’encontre des revenus du travail par rapport à ceux de l’épargne. le concept d’allocation universelle, conjugué à une imposition proportionnelle des revenus (flat tax) et un volet de prestations compassionnelles, permet de définir un ensemble redistributif présentant des caractéristiques opposées. ', '', 'http://www.allocationuniverselle.com/doc/ReductionTheseAU2012-02-07Basquiat.pdf'),
(11, 'Sébastien Groyer\n\n(membre du MFRB)', 'Equinomy', 'Rendre juste la propriété et donc l\'économie', '1200 € net (50 % du PIB/adulte taxé à 33% par et pour l\'Etat)', 'Immédiate en une seul réforme fiscale et sociale globale\n', 'Tansformation totale du système fiscal avec une \'super-TVA\' remplaçant les diverses taxes (charges sociales et patronales, CSG, taxe foncière, redevance...) \nSuppression des aides diverses (APL, RSA, HLM, etc) et socle de chômage et retraite', 'Tansformation totale du système fiscal avec une \'super-TVA\' remplaçant les diverses taxes (charges sociales et patronales, CSG, taxe foncière, redevance...) \nSuppression des aides diverses (APL, RSA, HLM, etc) et socle de chômage et retraite', 'Le revenu de base de 50% du PIB est la condition de la justice et de l\'accord de tous les individus à une économie pacifique. Outre l\'émancipation et la liberté des individus, elle permet surtout une clarté, une lisibilité et une sécurité qui rendent l\'Etat et la démocratie beaucoup plus efficaces.', 'Suppression des aides diverses (APL, RSA, HLM, etc) et socle de chômage et retraite', 'www.equinomy.com'),
(12, 'Guy Valette\n\n(membre du MFRB)', 'Revenu d\'existence', '', '750€ modulable', '', 'Redistribution', '- creation de la contribution de solidarité pour le revenu d\'existance (CSRE) : 30% des salaires et revenus brut. \n- création de la taxe sur l\'actif net (TAN) : 1,5% du patrimoine par an. \n- création de la CSE ( Contribution sur l\'Excédent Brut d\'Exploitation) : 10% de l\'EBE des entreprises, compensée par la suppression de la cotisation " patronale" pour les allocations famililales  Suppression de l\'IRPP et de la CSG actuelle', 'Proche de la charte du MFRB (a raffiner)', 'Suppression de toutes les aides conditionnées non contributives comme le RSA, l\'ASPA, les bourses d\'études, les aides à l\'emploi,les aides aux familles, les allocations familiales et l\'allocation logement. Maintien des allocations chômage,. Renforcement de l\'assurance maladie et du système de retraite par répartition.', 'http://fr.slideshare.net/guyvalette7/le-revenu-dexistence-600-2014-31981667'),
(13, 'Geneviève Bouché\n\n(membre du MFRB)', 'Revenu de base', 'la richesse d\'une population réside dans celle du sol qu\'elle occupe, mais aussi de plus en plus dans la diversité de ses connaissances et de ses talents. Pour cela, elle doit se doter d\'instruments de gouvernance qui favorise la fructification de toutes ses richesses y compris humaines. Par ailleurs, une simplication de nos gouvernances s\'imposent.', '5% au dessus du seuil de pauvreté européen', 'le RdB doit être ajusté à la création de richesse locale et nationale ainsi que la part qui est crée dans l\'espace productif et l\'espace contributif : combinaisons de monnaies "officielles" (€), locales, reconnaissance, savoir… Il s’agit de favoriser les tâches productives (court terme) et contributives (long terme) de manière harmonieuse.', '\n\nLa population étant une richesse, le budget de l\'état et des collectivités est construit en prenant le RdB comme un coût fixe. La quantité de devises en circulation est calibrée en conséquence. Le montant du RdB est ajusté à l\'ambition (constructive) de la collectivité. \n\n', 'En amont des réformes, il y a la vision : compléter l\'économie productive avec l\'économie contributive. Faire évoluer le mécanisme de création / destruction de monnaies et passer au multidevise en capitalisant sur l\'espace technologique introduit les blockchain (structure per to per et non plus centralisée).', '\n\nL\'homme a été nomade, puis sédentaire et donc agriculteur.\nIl a développé des outils pour se rendre plus efficace. A présent, il devient nomade, tant socialement que géographiquement. Il veut réussir sa vie en conjuguant des activités productives et des activités contributives. Le modèle de société que les générations montantes veulent dessiner est basé sur cette aspiration collective qui est très profonde et surtout puissante car mondiale. Le modèle actuel est basé sur la propriété, la rente et la dette. Son moteur est le désir d\'accaparement. Le modèle qui se dessine est basé sur la reconnaissance par la collectivité et le désir d\'être reconnu (couches supérieures de la pyramide de Maslow).\n\n', 'Aucune autre allocation n\'est versée : c’est la société efficace et donc attractive ! En effet, la compétitivité des nations se joue à présent sur l’attractivité : les individus sont mobiles, ils cherchent à s’installer dans les pays où la vie est ouverte et simple et où tout est fait pour que chacun réussisse chaque étape de son parcours de vie.', 'http://s298243136.onlinehome.fr/dotclear/index.php?post/2016/08/01/Mon-revenu-de-base-%C3%A0-moi'),
(14, 'Baptiste Mylondo\n', 'Revenu Inconditionnel', '', '750€/adulte\n(entre 750 et 1000€)\n\nSeuil de pauvreté (750 € pour les adultes ; 230 € par mineur) minimum - la détermination du montant du revenu\ninconditionnel doit faire l\'objet d\'une délibération démocratique', 'augmenter la CSG de 35% (=43%)', ' le budget des minima sociaux (RSA, Allocation Spécifique de Solidarité), des bourses d’étudiants, des allocations familiales, des aides pour le logement et des différentes politiques de subvention à l’emploi.\n\nHarmonisation et hausse de 35 points du taux de la cotisation sociale généralisée (CSG) pour atteindre un taux d\'imposition d\'environ 47% (CSG-CRDS) sur l\'ensemble des revenus (salaires, pensions retraites, allocations chômage, revenus du capital, du patrimoine, etc.).\nLe financement du revenu inconditionnel reposerait alors pour partie sur un impôt proportionnel (à taux fixe) portant sur l\'ensemble des revenus (hors revenu inconditionnel) dès le premier euro perçu.', '\nTransferts de la protection sociale : 70 milliards d\'€\nL\'ensemble des prestations non-contributives auxquelles le revenu inconditionnel viendrait se substituer parfaitement et avantageusement pourraient être supprimées et leur budget alloué au financement du revenu inconditionnel.\n\nTransferts du budget de l\'État : 50 milliards d\'€\n\nReforme fiscale: 350 milliards d\'euros\nHarmonisation et hausse de 35 points du taux de la cotisation sociale généralisée (CSG) pour atteindre un taux d\'imposition d\'environ 47% (CSG-CRDS) sur l\'ensemble des revenus (salaires, pensions retraites, allocations chômage, revenus du capital, du patrimoine, etc.).\nLe financement du revenu inconditionnel reposerait alors pour partie sur un impôt proportionnel (à taux fixe) portant sur l\'ensemble des revenus (hors revenu inconditionnel) dès le premier euro perçu. Toutefois, grâce au versement d\'un revenu inconditionnel non imposable, cet impôt proportionnel se traduirait dans les faits par un impôt progressif : son taux augmenterait avec les revenus. On peut en outre coupler cet impôt proportionnel à un abaissement du seuil de l’impôt sur la fortune (ISF) ou à l’instauration d’un revenu maximum autorisé (RMA) pour accentuer son caractère redistributif.', 'Les 10 caractéristiques du revenu inconditionnel\n1. Revenu en espèces (et non en nature)\n2. Versé à chaque citoyen\n3. Versé sans condition (de ressources, d\'activité, d\'inactivité, etc.)\n4. Versé sans contrepartie (recherche d\'emploi, travail d\'intérêt général, etc.)\n5. Cumulable avec d\'autres revenus\n6. Versé à titre individuel (et non à l\'ensemble du foyer en la personne du\nchef de famille...)\n7. Versé tout au long de la vie\n8. Montant forfaitaire (avec toutefois une distinction entre majeurs et\nmineurs)\n9. Montant suffisant (permettant de se passer d\'emploi)\n10. Versement mensuel', '-        les allocations familiales ;\n-        les aides au logements ;\n-        Les minima sociaux (à l\'exception de l\'AAH).\n-        aux emplois aidés, et aux exonérations de cotisations sociales et patronales ;\n-        aux exonérations fiscales et à la Prime pour l\'emploi ;', 'https://www.monde-diplomatique.fr/2013/05/MYLONDO/49066'),
(15, 'Gaspard Koenig\n\nRéf : LIBER', '', '', 'environ 700€ ou moins', 'Tout supprimer et remplacer par RDB', '', '', '', 'supprimées', ''),
(16, 'Patrick Viveret\n', '', '', '', '', 'pas de proposition', '', '', '', ''),
(17, 'Philippe Van Parijs\n', 'Euro Dividende', '\n    1/ libérer les chômeurs de la trappe de pauvreté qu\'engendrent les systèmes actuels de compensation à l\'absence d\'emploi ;\n    2/ améliorer les conditions des travailleurs via l\'accroissement du pouvoir de négociation des employés face à leurs employeurs ;\n    3/ encourager le travail indépendant, l\'innovation et la prise de risque ;\n    4/ libérer les femmes au foyer de leur dépendance financière par rapport à leurs maris.\n', 'le plus élevé qui soit soutenable\nà tous les citoyens de la zone euro', '', '', '', '', '', ''),
(18, 'Bernard Friot\n', 'Salaire à Vie\nRéseau Salariat', 'Une société sans propriété lucrative afin de propriété lucrative afin de privilégier la propriété d\'usage, se rapprochant ainsi des modèles de SCOP.', 'Qualification 1 à 1500€', '', 'Par la cotisation. Le Réseau Salariat souhaite supprimer le profit et créer une caisse de cotisation salaire reprenant l\'entièreté des salaires. La part du PIB étant attribuer aux salaires (60% du PIB) irait à cette caisse.\nExcédent brut d\'exploitation (EBE)', '', '', '', ''),
(19, 'André Gorz', '', '', 'Suffisant pour permettre de refuser un travail (indigne)', '', 'pas de proposition', '', '', '', ''),
(20, 'Jacques Marseille', '', 'se rapproche de la vision suisse', '600€/adulte\n300€/enfant', '', 'La fusion de l’aide sociale, du système de chômage et du système de retraite dans un revenu de base\n(RSA+APL)', '', '', 'supprimer', ''),
(21, 'Vincent Liégey\n', '', '', 'pas spécifié\nune partie en nature', '- services publics gratuits (en local, ex: cantine, transports, énergie, eau…)', '', '', '', '', ''),
(22, 'Jean Zin', '', 'Dynamiser le local', 'Suffisant', 'Monnaies locales\nCoopérative des compétences', '', '', '', '', ''),
(23, 'Chrétiens démocrates \nChristine Boutin / Franck Margain', 'Revenu universel', 'Voir peut-être avec Marc de Basquiat qui a travaillé avec elle sur sa proposition', '300€', '', '', '', '', '', 'http://fr.aleteia.org/2016/01/08/lidee-du-revenu-de-base-universel-fait-son-chemin/'),
(24, 'Alternatives libérales', 'Revenu d\'existence', '', '500 € par adulte et 100 € par mineur', '', '', 'Une fois instauré, ce revenu serait retranché à toutes les retraites par répartition. Sa mise en place serait en outre assortie d\'une suppression de toutes les allocations et mécanismes de redistributions, et le SMIC serait supprimé pour laisser place à un salaire minimum librement négocié par banche ou par entreprise...\n', '', '', ''),
(25, 'Yves Cochet', 'Revenu Minimum Inconditionnel', '', '600€', '', '', '', '', '', ''),
(26, 'Jean Desessard (EELV)', '', '', '', '', '', '', '', '', 'http://revenudebase.info/wp-content/uploads/2013/11/motion-EELV-Revenu-existence-universel.pdf'),
(27, 'Joseph Charliet', '', 'Thomas Paine', '', '- Développer la taxe foncière\n- impôts sur le patrimoine\n- répartition des niches', '', '', '', '', ''),
(28, 'James Hansen\n(climatologue de la NASA)', '', 'Fiscalité écologique', '', 'redistribution de ceux qui polluent', 'Taxe carbone', '', '', '', '');

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
-- Index pour les tables exportées
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
-- AUTO_INCREMENT pour les tables exportées
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
  MODIFY `id_evaluation` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
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
  MODIFY `id_result` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `result_rdb`
--
ALTER TABLE `result_rdb`
  MODIFY `id_rdb_result` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `session`
--
ALTER TABLE `session`
  MODIFY `id_session` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`id_session`) REFERENCES `session` (`id_session`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`id_choice`) REFERENCES `choice` (`id_choice`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `choice`
--
ALTER TABLE `choice`
  ADD CONSTRAINT `choice_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `question` (`id_question`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`id_result`) REFERENCES `result` (`id_result`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evaluation_ibfk_2` FOREIGN KEY (`id_choice`) REFERENCES `choice` (`id_choice`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`id_questionnaire`) REFERENCES `questionnaire` (`id_questionnaire`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
