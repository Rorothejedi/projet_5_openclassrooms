-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 07 juin 2018 à 18:36
-- Version du serveur :  10.1.30-MariaDB
-- Version de PHP :  7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `onetodo`
--

-- --------------------------------------------------------

--
-- Structure de la table `access`
--

CREATE TABLE `access` (
  `id_user` int(11) NOT NULL,
  `id_project` int(11) NOT NULL,
  `access` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `access`
--

INSERT INTO `access` (`id_user`, `id_project`, `access`) VALUES
(79, 34, 1),
(79, 35, 1),
(74, 34, 3),
(74, 36, 1);

-- --------------------------------------------------------

--
-- Structure de la table `conversation`
--

CREATE TABLE `conversation` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `id_conversation` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `content` text NOT NULL,
  `date_reception` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `link` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `open` tinyint(1) DEFAULT NULL,
  `color` varchar(10) DEFAULT '#306ba2',
  `description` tinytext,
  `wiki` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `project`
--

INSERT INTO `project` (`id`, `name`, `link`, `status`, `open`, `color`, `description`, `wiki`) VALUES
(34, 'HappyTest project', 'happytest-project', 1, 1, '#008080', 'Test pour les projets ouverts comme contributeur !', NULL),
(35, 'Test open project', 'test-open-project', 1, 0, '#ff8040', 'Test pour les projets ouverts comme observateur !', NULL),
(36, 'ONETODO', 'onetodo', 1, 0, '#306ba2', 'Venez contribuer au développement de la plateforme ONETODO !', '<p><a href=\"https://github.com/Rorothejedi/projet_5_openclassrooms\" target=\"_blank\" rel=\"noopener\">Participez au projet via gitHub !</a></p>');

-- --------------------------------------------------------

--
-- Structure de la table `seen`
--

CREATE TABLE `seen` (
  `id_conversation` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `seen` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `id_todolist` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `done` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `task`
--

INSERT INTO `task` (`id`, `id_todolist`, `name`, `done`) VALUES
(96, 20, 'Partie publique', 1),
(97, 20, 'Partie privé', 1),
(98, 20, 'Partie projet', 1),
(101, 24, 'Page d\'accueil', 1),
(103, 24, 'Gestion des utilisateurs', 1),
(104, 24, 'Todolist', 1),
(105, 24, 'Wiki', 1),
(106, 24, 'Paramètres', 1),
(107, 20, 'Routeur', 1),
(108, 20, 'Mise en ligne', 0),
(109, 20, 'Page 404', 1),
(110, 23, 'Création d\'un projet', 1),
(111, 23, 'Tableau de bord', 1),
(112, 23, 'Messagerie', 1),
(113, 23, 'Conversation', 1),
(114, 23, 'Liste projets ouverts', 1),
(115, 23, 'Paramètres utilisateur', 1),
(116, 21, 'Accueil', 1),
(117, 21, 'Connexion', 1),
(118, 21, 'Inscription', 1),
(119, 21, 'Contact', 1),
(120, 21, 'Mentions légales', 1),
(121, 21, 'Mot de passe oublié', 1),
(122, 20, 'Tests divers', 0),
(123, 20, 'Validation W3C', 1),
(124, 20, 'Finitions responsive', 1),
(125, 25, '404', 1),
(126, 25, 'Public - Accueil', 1),
(127, 25, 'Public - Connexion', 1),
(128, 25, 'Public - Inscription', 1),
(129, 25, 'Public - Mot de passe oublié', 1),
(130, 25, 'Public - Mentions légales', 1),
(131, 25, 'Public - Contact', 1),
(132, 25, 'Privé - Création de projet', 1),
(133, 25, 'Privé - Tableau de bord', 1),
(134, 25, 'Privé - Messagerie', 1),
(135, 25, 'Privé - Conversation', 1),
(136, 25, 'Privé - Projets ouverts', 1),
(137, 25, 'Privé - Paramètres utilisateurs', 1),
(138, 25, 'Projet - Accueil', 1),
(139, 25, 'Projet - Paramètres', 1),
(140, 25, 'Projet - Utilisateurs', 1),
(141, 25, 'Projet - Todolist', 1),
(142, 25, 'Projet - Wiki', 1),
(143, 26, '404', 1),
(144, 26, 'Public- Accueil', 1),
(145, 26, 'Public - Connexion', 1),
(146, 26, 'Public - Inscription', 1),
(147, 26, 'Public - Mot de passe oublié', 1),
(148, 26, 'Public - Mentions légales', 1),
(149, 26, 'Public - Contact', 1),
(150, 26, 'Privé - Tableau de bord', 1),
(151, 26, 'Privé - Création de projet', 1),
(152, 26, 'Privé - Messagerie', 1),
(153, 26, 'Privé - Conversation', 1),
(154, 26, 'Privé - Projets ouverts', 1),
(155, 26, 'Privé - Paramètres utilisateurs', 1),
(156, 26, 'Projet - Accueil', 1),
(157, 26, 'Projet - Todolist', 1),
(158, 26, 'Projet - Wiki', 1),
(159, 26, 'Projet - Utilisateurs', 1),
(160, 26, 'Projet - Paramètres', 1),
(161, 20, 'Vérifier tactile des todolists', 0),
(162, 20, 'Autoprefixer CSS', 1),
(164, 20, 'Compléter les commentaires', 0),
(165, 20, 'Générer la documentation', 0),
(166, 20, 'Minifier CSS', 1);

-- --------------------------------------------------------

--
-- Structure de la table `todolist`
--

CREATE TABLE `todolist` (
  `id` int(11) NOT NULL,
  `id_project` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `task_order` text NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `todolist`
--

INSERT INTO `todolist` (`id`, `id_project`, `name`, `task_order`, `completed`) VALUES
(20, 36, 'Version 1.0', 'a:14:{i:0;s:3:\"165\";i:1;s:3:\"164\";i:2;s:3:\"122\";i:3;s:3:\"108\";i:4;s:3:\"161\";i:5;s:3:\"166\";i:6;s:3:\"162\";i:7;s:3:\"123\";i:8;s:3:\"124\";i:9;s:3:\"109\";i:10;s:2:\"98\";i:11;s:2:\"97\";i:12;s:2:\"96\";i:13;s:3:\"107\";}', 0),
(21, 36, 'Partie publique', 'a:6:{i:0;s:3:\"116\";i:1;s:3:\"117\";i:2;s:3:\"118\";i:3;s:3:\"121\";i:4;s:3:\"119\";i:5;s:3:\"120\";}', 1),
(23, 36, 'Partie privée', 'a:6:{i:0;s:3:\"111\";i:1;s:3:\"110\";i:2;s:3:\"114\";i:3;s:3:\"112\";i:4;s:3:\"113\";i:5;s:3:\"115\";}', 1),
(24, 36, 'Partie projet', 'a:5:{i:0;s:3:\"101\";i:1;s:3:\"104\";i:2;s:3:\"105\";i:3;s:3:\"103\";i:4;s:3:\"106\";}', 1),
(25, 36, 'Validation W3C', 'a:18:{i:0;s:3:\"125\";i:1;s:3:\"126\";i:2;s:3:\"127\";i:3;s:3:\"128\";i:4;s:3:\"129\";i:5;s:3:\"130\";i:6;s:3:\"131\";i:7;s:3:\"133\";i:8;s:3:\"132\";i:9;s:3:\"134\";i:10;s:3:\"135\";i:11;s:3:\"136\";i:12;s:3:\"137\";i:13;s:3:\"138\";i:14;s:3:\"141\";i:15;s:3:\"142\";i:16;s:3:\"140\";i:17;s:3:\"139\";}', 1),
(26, 36, 'Responsive', 'a:18:{i:0;s:3:\"143\";i:1;s:3:\"144\";i:2;s:3:\"145\";i:3;s:3:\"146\";i:4;s:3:\"147\";i:5;s:3:\"148\";i:6;s:3:\"149\";i:7;s:3:\"150\";i:8;s:3:\"151\";i:9;s:3:\"152\";i:10;s:3:\"153\";i:11;s:3:\"154\";i:12;s:3:\"155\";i:13;s:3:\"156\";i:14;s:3:\"157\";i:15;s:3:\"158\";i:16;s:3:\"159\";i:17;s:3:\"160\";}', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_register` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `confirm_register`, `token`) VALUES
(74, 'Rodolphe', 'rodolphe.cabotiau@gmail.com', '$2y$10$Pxoclzi9KZaD23ZwYNyfbeEMFuy1BXeUd5Udyt9uaRIkHiPwiDm/u', 1, NULL),
(79, 'HappyTest', 'happytest@email.com', '$2y$10$xcEI3WrrFAjMcjdAIHjDFO0z4LOHlcO6FrfJDJ1DZqM16OrQeh67m', 1, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `access`
--
ALTER TABLE `access`
  ADD KEY `FK_id_user` (`id_user`),
  ADD KEY `FK_id_project` (`id_project`);

--
-- Index pour la table `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_discussion` (`id_conversation`);

--
-- Index pour la table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `link` (`link`);

--
-- Index pour la table `seen`
--
ALTER TABLE `seen`
  ADD KEY `id_conversation` (`id_conversation`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_todolist` (`id_todolist`);

--
-- Index pour la table `todolist`
--
ALTER TABLE `todolist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_project` (`id_project`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `conversation`
--
ALTER TABLE `conversation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT pour la table `todolist`
--
ALTER TABLE `todolist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `access`
--
ALTER TABLE `access`
  ADD CONSTRAINT `FK_id_project_access` FOREIGN KEY (`id_project`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_id_user_access` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK_id_message_conversation` FOREIGN KEY (`id_conversation`) REFERENCES `conversation` (`id`),
  ADD CONSTRAINT `FK_id_message_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `seen`
--
ALTER TABLE `seen`
  ADD CONSTRAINT `FK_id_seen_conversation` FOREIGN KEY (`id_conversation`) REFERENCES `conversation` (`id`),
  ADD CONSTRAINT `FK_id_seen_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `FK_id_task_todolist` FOREIGN KEY (`id_todolist`) REFERENCES `todolist` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `todolist`
--
ALTER TABLE `todolist`
  ADD CONSTRAINT `FK_id_todolist_project` FOREIGN KEY (`id_project`) REFERENCES `project` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
