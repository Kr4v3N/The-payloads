-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 29 juil. 2022 à 08:38
-- Version du serveur : 8.0.30-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `myblog1`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles_articles`
--

CREATE TABLE `articles_articles` (
  `id` bigint NOT NULL,
  `name` varchar(150) NOT NULL,
  `short_txt` longtext NOT NULL,
  `body_txt` longtext NOT NULL,
  `date` varchar(12) NOT NULL,
  `time` varchar(12) NOT NULL,
  `pic_name` longtext NOT NULL,
  `writer` varchar(50) NOT NULL,
  `pic_url` longtext NOT NULL,
  `activated` int NOT NULL,
  `catid` int NOT NULL,
  `catname` varchar(50) NOT NULL,
  `ocatid` int NOT NULL,
  `show` int NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `articles_articles`
--

INSERT INTO `articles_articles` (`id`, `name`, `short_txt`, `body_txt`, `date`, `time`, `pic_name`, `writer`, `pic_url`, `activated`, `catid`, `catname`, `ocatid`, `show`, `slug`) VALUES
(189, 'Scripting test', '<p>trsddfsfr</p>\r\n', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<h2>Where can I get some?</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '03/11/2021', '14H45', 'ubuntu-with-black-theme_BG6S2Nu.jpg', 'Kr4v3n', '/media/ubuntu-with-black-theme_BG6S2Nu.jpg', 1, 42, 'Scripting', 70, 59, 'scriptiong-tes-faycal'),
(191, 'Lorem ipsum dolor sit amet, consectetur ', '<p>eeeeeeeeeeee</p>\r\n', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<h2>Where can I get some?</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '03/11/2021', '15H26', 'ubuntu-with-black-theme_bdFluDQ.jpg', 'Kr4v3n', '/media/ubuntu-with-black-theme_bdFluDQ.jpg', 1, 43, 'Capture the flag', 69, 27, 'tes-sstd-fghhc'),
(192, 'Where does it come from ?', '<p>gggggggggggggggg</p>\r\n', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<h2>Where can I get some?</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '03/11/2021', '15H27', 'ubuntu-with-black-theme_ZgMHSpG.jpg', 'Kr4v3n', '/media/ubuntu-with-black-theme_ZgMHSpG.jpg', 1, 41, 'Systèmes', 67, 42, 'dff-ttt-hhhjjhsc'),
(194, 'Lorem ipsum dolor sit amet', '<p>vvvvvvvvvvvvvvvvvvvvvv</p>\r\n', '<h1>Lorem Ipsum</h1>\r\n\r\n<h4>&quot;Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...&quot;</h4>\r\n\r\n<h5>&quot;There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...&quot;</h5>\r\n\r\n<hr />\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus fringilla ligula et rhoncus. Maecenas vel tortor porta, mattis justo sit amet, placerat orci. Praesent sed efficitur ante. Duis in justo sapien. Praesent volutpat massa a purus finibus auctor. Nunc quis arcu felis. Integer nec nulla hendrerit, volutpat risus vel, lacinia diam. Vivamus efficitur augue ut metus interdum, convallis luctus nibh laoreet. Cras quis purus ut nisi mollis aliquam. Curabitur condimentum dictum dui, vel congue justo porttitor non. Proin neque nisi, vulputate congue pharetra vel, placerat et augue.</p>\r\n\r\n<p>Curabitur ornare ante convallis tristique rhoncus. Etiam ut turpis pulvinar, viverra mauris vel, vehicula elit. Ut aliquam augue suscipit purus scelerisque consectetur. Quisque scelerisque, arcu nec mollis imperdiet, dolor lorem tristique orci, congue dapibus mauris massa sed ligula. Fusce at eleifend dolor, mattis malesuada mauris. Maecenas vehicula purus eget tellus auctor, eget bibendum massa suscipit. Sed dignissim sem nisi, quis maximus risus molestie eget. Sed luctus faucibus urna, non consectetur urna tincidunt quis. In vulputate lacus lectus, et porttitor nibh dapibus vel. Ut ac mauris ipsum. Donec id rutrum leo.</p>\r\n\r\n<p>Maecenas ultrices suscipit lacinia. Nulla tincidunt arcu sapien. Mauris semper ultrices risus, vitae facilisis eros vehicula at. Etiam est nulla, porta semper consectetur ac, vestibulum eu felis. Donec non ultricies sapien, in scelerisque diam. Duis eget sodales neque, in pretium mauris. Vestibulum semper nulla vitae scelerisque aliquet. Quisque malesuada auctor tortor vel dignissim. In ac lorem felis. Maecenas porta dapibus odio, in suscipit enim luctus sit amet. Duis ut ante mollis, ornare ex nec, varius enim. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed feugiat ipsum pretium diam venenatis, et pharetra felis aliquam. Vestibulum id pharetra ipsum. Integer eget dui quis dolor imperdiet fermentum.</p>\r\n\r\n<p>Quisque elementum volutpat risus ac blandit. Nulla et diam nec dui fermentum pharetra. Maecenas tristique nulla vitae velit ullamcorper, nec finibus nisi porttitor. Vivamus lacinia neque molestie eleifend commodo. Nullam facilisis ante neque, ut aliquam orci accumsan eu. Etiam sit amet placerat ex, ut vestibulum purus. Proin a nisl imperdiet metus sagittis hendrerit. Sed sollicitudin nisl in lorem aliquam, eget cursus tortor egestas.</p>\r\n\r\n<p>Pellentesque ac commodo erat. Sed aliquet augue sit amet dignissim malesuada. Nam hendrerit sapien non urna suscipit suscipit. Phasellus ultricies lacus sapien, a scelerisque eros bibendum in. Aliquam erat volutpat. Nullam scelerisque arcu mi, eget varius neque gravida eget. Aliquam enim nisi, semper in dapibus id, viverra in nisi. Cras finibus est a pharetra tristique. Fusce eu eleifend magna, sit amet suscipit enim. Ut hendrerit felis molestie dolor faucibus, pulvinar suscipit orci egestas.</p>\r\n\r\n<p>Generated 5 paragraphs, 423 words, 2907 bytes of&nbsp;<a href=\"https://www.lipsum.com/\" title=\"Lorem Ipsum\">Lorem Ipsum</a></p>\r\n', '07/11/2021', '13H27', 'téléchargement (1)_1200x800.jpg', 'Kr4v3n', '/media/t%C3%A9l%C3%A9chargement%20(1)_1200x800.jpg', 1, 43, 'Capture the flag', 69, 84, 'lorem-ipsum-256'),
(195, 'C\'est mon premier article', '<p>wwwwwwwwwwwwwwwwww</p>\r\n', '<p>wCOLLATE=utf8_general_cicccccccccccccc</p>\r\n', '14/11/2021', '21H29', 'ubuntu-with-black-theme.jpg', 'Kr4v3n', '/media/ubuntu-with-black-theme.jpg', 1, 41, 'Systèmes', 67, 7, 'cest-mon-premier-article');

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Principal', 7, 'add_main'),
(26, 'Can change Principal', 7, 'change_main'),
(27, 'Can delete Principal', 7, 'delete_main'),
(28, 'Can view Principal', 7, 'view_main'),
(29, 'Can add Article', 8, 'add_articles'),
(30, 'Can change Article', 8, 'change_articles'),
(31, 'Can delete Article', 8, 'delete_articles'),
(32, 'Can view Article', 8, 'view_articles'),
(33, 'Can add Catégorie', 9, 'add_category'),
(34, 'Can change Catégorie', 9, 'change_category'),
(35, 'Can delete Catégorie', 9, 'delete_category'),
(36, 'Can view Catégorie', 9, 'view_category'),
(37, 'Can add Sous catégorie', 10, 'add_subcategory'),
(38, 'Can change Sous catégorie', 10, 'change_subcategory'),
(39, 'Can delete Sous catégorie', 10, 'delete_subcategory'),
(40, 'Can view Sous catégorie', 10, 'view_subcategory'),
(41, 'Can add formulaire de contact', 11, 'add_contactform'),
(42, 'Can change formulaire de contact', 11, 'change_contactform'),
(43, 'Can delete formulaire de contact', 11, 'delete_contactform'),
(44, 'Can view formulaire de contact', 11, 'view_contactform'),
(45, 'Can add Tendance', 12, 'add_trending'),
(46, 'Can change Tendance', 12, 'change_trending'),
(47, 'Can delete Tendance', 12, 'delete_trending'),
(48, 'Can view Tendance', 12, 'view_trending'),
(49, 'Can add Newsletter', 13, 'add_newsletter'),
(50, 'Can change Newsletter', 13, 'change_newsletter'),
(51, 'Can delete Newsletter', 13, 'delete_newsletter'),
(52, 'Can view Newsletter', 13, 'view_newsletter'),
(53, 'Can add Commentaire', 14, 'add_comment'),
(54, 'Can change Commentaire', 14, 'change_comment'),
(55, 'Can delete Commentaire', 14, 'delete_comment'),
(56, 'Can view Commentaire', 14, 'view_comment'),
(57, 'Can add Direction', 15, 'add_manager'),
(58, 'Can change Direction', 15, 'change_manager'),
(59, 'Can delete Direction', 15, 'delete_manager'),
(60, 'Can view Direction', 15, 'view_manager'),
(61, 'Can add Blacklist', 16, 'add_blacklist'),
(62, 'Can change Blacklist', 16, 'change_blacklist'),
(63, 'Can delete Blacklist', 16, 'delete_blacklist'),
(64, 'Can view Blacklist', 16, 'view_blacklist'),
(65, 'Can add blog post', 17, 'add_blogpost'),
(66, 'Can change blog post', 17, 'change_blogpost'),
(67, 'Can delete blog post', 17, 'delete_blogpost'),
(68, 'Can view blog post', 17, 'view_blogpost'),
(69, 'Can add author', 18, 'add_author'),
(70, 'Can change author', 18, 'change_author'),
(71, 'Can delete author', 18, 'delete_author'),
(72, 'Can view author', 18, 'view_author'),
(73, 'Can add category', 19, 'add_category'),
(74, 'Can change category', 19, 'change_category'),
(75, 'Can delete category', 19, 'delete_category'),
(76, 'Can view category', 19, 'view_category'),
(77, 'Can add post', 20, 'add_post'),
(78, 'Can change post', 20, 'change_post'),
(79, 'Can delete post', 20, 'delete_post'),
(80, 'Can view post', 20, 'view_post');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$ZdZgYqO1aTlz3JxIqXuhYC$PWwDLy4Xoko91B6DzNaj1jKK4b8M6TQHACA7fnQjyWI=', '2022-07-29 04:54:44.244179', 1, 'Kr4v3n', '', '', 'admin@thepayload.com', 1, 1, '2021-06-18 09:33:41.000000');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `blacklist_blacklist`
--

CREATE TABLE `blacklist_blacklist` (
  `id` bigint NOT NULL,
  `ip` char(39) NOT NULL,
  `date` varchar(12) NOT NULL,
  `time` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `blacklist_blacklist`
--

INSERT INTO `blacklist_blacklist` (`id`, `ip`, `date`, `time`) VALUES
(4, '125.36.54.128', '29/09/2021', '15H48');

-- --------------------------------------------------------

--
-- Structure de la table `category_category`
--

CREATE TABLE `category_category` (
  `id` bigint NOT NULL,
  `name` varchar(80) NOT NULL,
  `count` int NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `category_category`
--

INSERT INTO `category_category` (`id`, `name`, `count`, `slug`) VALUES
(66, 'Réseaux', 0, 'reseaux'),
(67, 'Systèmes', 2, 'systemes'),
(69, 'Capture the flag', 2, 'capture-the-flag'),
(70, 'Scripting', 1, 'scripting');

-- --------------------------------------------------------

--
-- Structure de la table `comment_comment`
--

CREATE TABLE `comment_comment` (
  `id` bigint NOT NULL,
  `name` varchar(70) NOT NULL,
  `email` varchar(254) NOT NULL,
  `content` longtext NOT NULL,
  `article_id` int NOT NULL,
  `date` varchar(12) NOT NULL,
  `time` varchar(10) NOT NULL,
  `status` int NOT NULL,
  `created` datetime(6) NOT NULL,
  `ip` char(39) NOT NULL,
  `country` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `comment_comment`
--

INSERT INTO `comment_comment` (`id`, `name`, `email`, `content`, `article_id`, `date`, `time`, `status`, `created`, `ip`, `country`) VALUES
(64, 'Kr4v3n', 'chena.faycal@gmail.com', 'dd', 193, '13/11/2021', '20H04', 1, '2021-11-13 19:04:12.878889', '127.0.0.1', ' Inconnu'),
(65, 'Kr4v3n', 'chena.faycal@gmail.com', 'cccccccccccccccccccccccccccccccccccccccccc', 193, '14/11/2021', '21H47', 1, '2021-11-14 20:47:10.857335', '78.199.223.11', 'FR | Quint-Fonsegrives');

-- --------------------------------------------------------

--
-- Structure de la table `contactform_contactform`
--

CREATE TABLE `contactform_contactform` (
  `id` bigint NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `msg` longtext NOT NULL,
  `date` varchar(12) NOT NULL,
  `time` varchar(12) NOT NULL,
  `ip` longtext NOT NULL,
  `country` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `contactform_contactform`
--

INSERT INTO `contactform_contactform` (`id`, `name`, `email`, `msg`, `date`, `time`, `ip`, `country`) VALUES
(30, 'test', 'info@thepayloads.com', 'C\'st un autre test', '30/09/2021', '10H01', '127.0.0.1', ' Inconnu'),
(31, 'test final', 'goldama@gmail.com', 'Ton articles est très bien :)', '30/09/2021', '10H32', '127.0.0.1', ' Inconnu');

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-06-22 07:32:38.955996', '1', 'The payloads', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-06-22 07:34:37.043248', '1', 'The payloads', 2, '[]', 7, 1),
(3, '2021-06-22 07:50:06.137642', '2', 'Main object (2)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2021-06-22 07:56:44.797354', '2', 'The payloads', 3, '', 7, 1),
(5, '2021-06-22 07:56:44.814803', '1', 'The payloads', 3, '', 7, 1),
(6, '2021-06-22 07:59:07.219533', '3', 'The Payloads', 1, '[{\"added\": {}}]', 7, 1),
(7, '2021-06-22 08:10:31.191714', '4', 'Main object (4)', 1, '[{\"added\": {}}]', 7, 1),
(8, '2021-06-22 08:25:58.878372', '3', 'Main object (3)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(9, '2021-06-22 08:37:06.126099', '3', 'Main object (3)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(10, '2021-06-22 08:53:13.855613', '4', 'Main object (4)', 2, '[{\"changed\": {\"fields\": [\"About\"]}}]', 7, 1),
(11, '2021-06-22 08:54:53.147462', '4', 'Main object (4)', 2, '[{\"changed\": {\"fields\": [\"Phone\"]}}]', 7, 1),
(12, '2021-06-22 08:56:07.369698', '4', 'Main object (4)', 2, '[{\"changed\": {\"fields\": [\"Phone\"]}}]', 7, 1),
(13, '2021-06-22 08:57:04.553215', '4', 'Main object (4)', 2, '[{\"changed\": {\"fields\": [\"Linkedin\"]}}]', 7, 1),
(14, '2021-06-22 08:57:49.645219', '4', 'Main object (4)', 2, '[{\"changed\": {\"fields\": [\"Github\"]}}]', 7, 1),
(15, '2021-06-22 08:58:16.299606', '4', 'Main object (4)', 2, '[]', 7, 1),
(16, '2021-06-22 08:59:04.196258', '4', 'Main object (4)', 2, '[]', 7, 1),
(17, '2021-06-22 08:59:37.612287', '4', 'Main object (4)', 2, '[{\"changed\": {\"fields\": [\"Youtube\"]}}]', 7, 1),
(18, '2021-06-22 09:03:53.918405', '3', 'Main object (3)', 3, '', 7, 1),
(19, '2021-06-22 09:30:18.884363', '4', 'Site settings | 4', 2, '[{\"changed\": {\"fields\": [\"Set name\"]}}]', 7, 1),
(20, '2021-06-22 09:38:47.815271', '4', 'Site settings | 4', 2, '[{\"changed\": {\"fields\": [\"Phone\"]}}]', 7, 1),
(21, '2021-06-22 09:39:55.291179', '4', 'Site settings | 4', 2, '[{\"changed\": {\"fields\": [\"Link footer\"]}}]', 7, 1),
(22, '2021-06-22 09:40:58.049462', '4', 'Site settings | 4', 2, '[]', 7, 1),
(23, '2021-06-22 09:41:12.204963', '4', 'Site settings | 4', 2, '[{\"changed\": {\"fields\": [\"Link footer\"]}}]', 7, 1),
(24, '2021-06-22 09:54:44.367484', '4', 'Site settings | 4', 2, '[{\"changed\": {\"fields\": [\"Link footer\"]}}]', 7, 1),
(25, '2021-06-22 09:56:00.597786', '4', 'Site settings | 4', 2, '[{\"changed\": {\"fields\": [\"Twitter\"]}}]', 7, 1),
(26, '2021-06-22 10:32:22.132672', '4', 'Site settings | 4', 2, '[{\"changed\": {\"fields\": [\"About\"]}}]', 7, 1),
(27, '2021-06-22 10:32:52.348439', '4', 'Site settings | 4', 2, '[{\"changed\": {\"fields\": [\"About\"]}}]', 7, 1),
(28, '2021-06-22 12:08:36.881625', '1', 'Installer Metasploit sous Linux', 1, '[{\"added\": {}}]', 8, 1),
(29, '2021-06-22 12:10:02.171887', '2', 'Trouver le mot de passe d\'un fichier RAR', 1, '[{\"added\": {}}]', 8, 1),
(30, '2021-06-22 12:19:57.766964', '2', 'Trouver le mot de passe d\'un fichier RAR', 2, '[{\"changed\": {\"fields\": [\"Short txt\"]}}]', 8, 1),
(31, '2021-06-22 12:20:05.201304', '1', 'Installer Metasploit sous Linux', 2, '[{\"changed\": {\"fields\": [\"Short txt\"]}}]', 8, 1),
(32, '2021-06-22 12:31:21.702907', '3', 'jjj', 1, '[{\"added\": {}}]', 8, 1),
(33, '2021-06-22 12:31:57.292507', '3', 'jjj', 3, '', 8, 1),
(34, '2021-06-24 13:04:01.913615', '4', 'test3cccc', 1, '[{\"added\": {}}]', 8, 1),
(35, '2021-06-24 13:04:33.375281', '4', 'test3cccc', 2, '[{\"changed\": {\"fields\": [\"Date\"]}}]', 8, 1),
(36, '2021-06-24 13:05:32.014084', '4', 'test3cccc', 3, '', 8, 1),
(37, '2021-06-30 10:27:55.134012', '10', 'dddddddddd', 3, '', 8, 1),
(38, '2021-06-30 10:27:55.140810', '9', 'SQL Injection', 3, '', 8, 1),
(39, '2021-06-30 10:27:55.147044', '8', 'Test final', 3, '', 8, 1),
(40, '2021-06-30 10:27:55.153584', '7', 'nnnnnnnnnnnnnnnnnnnn', 3, '', 8, 1),
(41, '2021-06-30 10:27:55.160183', '6', 'fffffffff', 3, '', 8, 1),
(42, '2021-06-30 10:27:55.167131', '5', 'test25', 3, '', 8, 1),
(43, '2021-06-30 10:27:55.175414', '2', 'Trouver le mot de passe d\'un fichier RAR', 3, '', 8, 1),
(44, '2021-06-30 10:27:55.183038', '1', 'Installer Metasploit sous Linux', 3, '', 8, 1),
(45, '2021-06-30 13:14:12.733504', '21', 'd', 3, '', 8, 1),
(46, '2021-06-30 13:14:12.742924', '20', 'f', 3, '', 8, 1),
(47, '2021-06-30 13:14:12.749507', '19', 'sdddddd', 3, '', 8, 1),
(48, '2021-06-30 13:14:12.757596', '18', 'sdddddddd', 3, '', 8, 1),
(49, '2021-06-30 13:14:12.765691', '17', 'xdddddd', 3, '', 8, 1),
(50, '2021-06-30 13:14:12.771852', '16', 'ddddddddddddddd', 3, '', 8, 1),
(51, '2021-06-30 13:14:12.780233', '15', 'dddd', 3, '', 8, 1),
(52, '2021-06-30 13:14:12.786776', '14', 'fffff', 3, '', 8, 1),
(53, '2021-06-30 13:14:12.792964', '13', 'ffffffff', 3, '', 8, 1),
(54, '2021-06-30 13:14:12.801320', '12', 'sssssssss', 3, '', 8, 1),
(55, '2021-06-30 13:14:12.807353', '11', 'Sql injection', 3, '', 8, 1),
(56, '2021-07-01 09:38:34.176062', '25', 'test12', 3, '', 8, 1),
(57, '2021-07-01 09:38:34.186277', '24', 'eeeeeeeeee', 3, '', 8, 1),
(58, '2021-07-01 10:57:51.507073', '1', 'Systèmes', 1, '[{\"added\": {}}]', 9, 1),
(59, '2021-07-01 10:58:02.564479', '2', 'Linux', 1, '[{\"added\": {}}]', 9, 1),
(60, '2021-07-01 10:58:09.580949', '3', 'CTF', 1, '[{\"added\": {}}]', 9, 1),
(61, '2021-07-01 11:50:23.973811', '8', 'test bien', 3, '', 9, 1),
(62, '2021-07-01 11:50:23.984484', '7', 'test 7', 3, '', 9, 1),
(63, '2021-07-01 11:50:23.993109', '5', 'test', 3, '', 9, 1),
(64, '2021-07-01 11:50:24.005316', '4', 'ff', 3, '', 9, 1),
(65, '2021-07-01 12:47:48.077977', '9', 'test', 3, '', 9, 1),
(66, '2021-07-01 12:47:48.087806', '2', 'Linux', 3, '', 9, 1),
(67, '2021-07-18 16:54:48.453768', '12', 'bbbbb', 3, '', 9, 1),
(68, '2021-07-18 17:08:44.387784', '32', 'test', 1, '[{\"added\": {}}]', 8, 1),
(69, '2021-07-18 17:42:51.904011', '33', 'test_2', 1, '[{\"added\": {}}]', 8, 1),
(70, '2021-07-23 08:04:26.827976', '11', 'test 2', 3, '', 9, 1),
(71, '2021-07-23 08:04:26.839072', '10', 'test', 3, '', 9, 1),
(72, '2021-07-23 08:04:26.847363', '6', 'Linux', 3, '', 9, 1),
(73, '2021-07-23 08:04:26.855532', '3', 'CTF', 3, '', 9, 1),
(74, '2021-07-23 08:04:26.863429', '1', 'Systèmes', 3, '', 9, 1),
(75, '2021-07-23 08:35:23.389613', '14', 'Windows', 1, '[{\"added\": {}}]', 9, 1),
(76, '2021-07-23 08:35:33.853229', '15', 'Systèmes', 1, '[{\"added\": {}}]', 9, 1),
(77, '2021-07-23 09:16:46.750750', '35', 'testv255', 2, '[{\"changed\": {\"fields\": [\"Category name\"]}}]', 8, 1),
(78, '2021-07-23 10:51:21.450362', '34', 'test ffmlm kodjkosdv fqs,lsdvgdshf', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 1),
(79, '2021-07-23 11:14:09.334009', '17', 'Programmation', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1),
(80, '2021-07-23 11:14:20.009532', '16', 'Réseaux', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1),
(81, '2021-07-23 14:12:20.751118', '4', 'Site settings | 4', 2, '[{\"changed\": {\"fields\": [\"About\"]}}]', 7, 1),
(82, '2021-07-27 11:27:28.332879', '18', 'testa', 3, '', 9, 1),
(83, '2021-07-27 11:27:41.421000', '34', 'test ffmlm', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 1),
(84, '2021-07-27 11:28:16.710975', '38', 'test2222', 2, '[]', 8, 1),
(85, '2021-07-27 12:46:16.393629', '19', 'xxxd', 3, '', 9, 1),
(86, '2021-07-27 12:46:16.421981', '17', 'Programmation', 3, '', 9, 1),
(87, '2021-07-27 12:46:16.433029', '16', 'Réseaux', 3, '', 9, 1),
(88, '2021-07-27 12:46:16.446099', '15', 'Systèmes', 3, '', 9, 1),
(89, '2021-07-27 12:46:16.459679', '14', 'Windows', 3, '', 9, 1),
(90, '2021-07-27 12:46:16.470104', '13', 'Linux', 3, '', 9, 1),
(91, '2021-07-27 13:41:01.794600', '43', 'testfff', 1, '[{\"added\": {}}]', 8, 1),
(92, '2021-07-27 13:42:07.582335', '43', 'testfff', 2, '[{\"changed\": {\"fields\": [\"Date\", \"Time\", \"Writer\", \"Category name\"]}}]', 8, 1),
(93, '2021-07-27 13:42:17.962168', '43', 'testfff', 2, '[{\"changed\": {\"fields\": [\"Category name\"]}}]', 8, 1),
(94, '2021-07-27 13:43:51.914831', '43', 'testfff', 2, '[{\"changed\": {\"fields\": [\"Pic url\"]}}]', 8, 1),
(95, '2021-07-27 13:44:26.879707', '43', 'testfff', 2, '[{\"changed\": {\"fields\": [\"Pic name\"]}}]', 8, 1),
(96, '2021-08-31 09:01:42.758286', '51', 'test', 1, '[{\"added\": {}}]', 8, 1),
(97, '2021-08-31 09:27:52.168457', '47', 'ggggggggggg', 2, '[{\"changed\": {\"fields\": [\"Body txt\"]}}]', 8, 1),
(98, '2021-08-31 09:31:51.952309', '47', 'Generate Lorem Ipsum', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Short txt\"]}}]', 8, 1),
(99, '2021-08-31 11:54:42.751048', '52', 'Viverra vitae congue eu consequat ac felis done', 1, '[{\"added\": {}}]', 8, 1),
(100, '2021-08-31 14:08:34.649554', '55', 'test 56', 3, '', 8, 1),
(101, '2021-08-31 14:11:10.165981', '57', 'ddddddddddddccccccccccccc', 3, '', 8, 1),
(102, '2021-08-31 14:11:10.193084', '56', 'dddddddddddddddddddddddd', 3, '', 8, 1),
(103, '2021-08-31 14:49:30.641869', '59', 'Burp Suite 2021', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 1),
(104, '2021-08-31 14:49:37.475315', '58', 'Burp Suite 2021', 3, '', 8, 1),
(105, '2021-08-31 18:37:29.701659', '68', 'Kali Linux ISO : Télécharger Version d’installation 64 bits et 32 bits', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 1),
(106, '2021-08-31 22:53:25.284651', '6', 'sub test 2', 3, '', 10, 1),
(107, '2021-08-31 22:53:25.295464', '5', 'testa', 3, '', 10, 1),
(108, '2021-08-31 22:53:25.303018', '4', 'test', 3, '', 10, 1),
(109, '2021-08-31 22:53:25.313630', '3', 'UDP', 3, '', 10, 1),
(110, '2021-08-31 22:53:25.323349', '2', 'Python', 3, '', 10, 1),
(111, '2021-08-31 22:53:25.334194', '1', 'testsous', 3, '', 10, 1),
(112, '2021-08-31 22:54:31.307746', '26', 'test 2', 3, '', 9, 1),
(113, '2021-08-31 22:54:31.316372', '25', 'testeur', 3, '', 9, 1),
(114, '2021-08-31 23:00:21.945228', '24', 'Windows', 3, '', 9, 1),
(115, '2021-08-31 23:00:22.040553', '23', 'CTF', 3, '', 9, 1),
(116, '2021-08-31 23:00:22.059922', '22', 'Programmation', 3, '', 9, 1),
(117, '2021-08-31 23:00:22.070193', '21', 'Réseaux', 3, '', 9, 1),
(118, '2021-08-31 23:00:22.077787', '20', 'Linux', 3, '', 9, 1),
(119, '2021-09-01 07:12:09.776306', '72', 'test', 1, '[{\"added\": {}}]', 8, 1),
(120, '2021-09-01 18:21:05.105677', '7', 'Bash', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 10, 1),
(121, '2021-09-02 14:11:16.050468', '31', 'Catch The Flag', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1),
(122, '2021-09-02 14:12:10.363040', '29', 'Windows', 3, '', 9, 1),
(123, '2021-09-02 14:12:10.375739', '27', 'Linux', 3, '', 9, 1),
(124, '2021-09-02 14:24:42.917259', '31', 'Catch The Flag', 3, '', 9, 1),
(125, '2021-09-02 14:31:43.750471', '34', 'Accueil', 3, '', 9, 1),
(126, '2021-09-02 14:31:43.760455', '33', 'Capture the Flag', 3, '', 9, 1),
(127, '2021-09-02 14:31:43.771347', '32', 'Systèmes', 3, '', 9, 1),
(128, '2021-09-02 14:31:43.780255', '30', 'Programmation', 3, '', 9, 1),
(129, '2021-09-02 14:31:43.789916', '28', 'Réseaux', 3, '', 9, 1),
(130, '2021-09-02 14:31:56.543492', '35', 'Accueil', 1, '[{\"added\": {}}]', 9, 1),
(131, '2021-09-02 14:32:22.544021', '36', 'Réseaux', 1, '[{\"added\": {}}]', 9, 1),
(132, '2021-09-02 14:32:32.547285', '37', 'Systèmes', 1, '[{\"added\": {}}]', 9, 1),
(133, '2021-09-02 14:32:53.183129', '38', 'Scripting', 1, '[{\"added\": {}}]', 9, 1),
(134, '2021-09-02 14:33:02.706143', '39', 'Capture the Flag', 1, '[{\"added\": {}}]', 9, 1),
(135, '2021-09-02 14:33:29.622672', '12', 'PowerShell', 3, '', 10, 1),
(136, '2021-09-02 14:33:29.633328', '11', 'TryHackMe', 3, '', 10, 1),
(137, '2021-09-02 14:33:29.642774', '10', 'Python', 3, '', 10, 1),
(138, '2021-09-02 14:33:29.651074', '9', 'HackTheBox', 3, '', 10, 1),
(139, '2021-09-02 14:33:29.660200', '8', 'TCP/IP', 3, '', 10, 1),
(140, '2021-09-02 14:33:29.669227', '7', 'Bash', 3, '', 10, 1),
(141, '2021-09-02 14:36:15.672758', '84', 'GGGGGGGGGGG', 3, '', 8, 1),
(142, '2021-09-02 14:36:15.685365', '83', 'hhhhhhhhhhhhhhhh', 3, '', 8, 1),
(143, '2021-09-02 14:36:15.698531', '82', 'hhhhhhhhhh', 3, '', 8, 1),
(144, '2021-09-02 14:36:15.710907', '81', 'bbbbbbbbbbb', 3, '', 8, 1),
(145, '2021-09-02 14:36:15.724301', '80', 'jjjjjjjjjjjjjjj', 3, '', 8, 1),
(146, '2021-09-02 14:36:15.735961', '79', 'linux', 3, '', 8, 1),
(147, '2021-09-02 17:08:19.461504', '87', 'Linux 2021', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 1),
(148, '2021-09-05 10:32:31.031487', '35', 'Accueil', 3, '', 9, 1),
(149, '2021-09-05 14:14:46.692571', '85', 'HackTheBox', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Short txt\", \"Body txt\", \"Ocatid\"]}}]', 8, 1),
(150, '2021-09-05 14:14:55.575943', '86', 'Le protocole UDP', 2, '[{\"changed\": {\"fields\": [\"Short txt\", \"Body txt\", \"Ocatid\"]}}]', 8, 1),
(151, '2021-09-05 14:15:04.766043', '87', 'Linux : Les modules kernel', 2, '[{\"changed\": {\"fields\": [\"Short txt\", \"Body txt\", \"Ocatid\"]}}]', 8, 1),
(152, '2021-09-05 14:15:13.910945', '88', 'Python scripting', 2, '[{\"changed\": {\"fields\": [\"Short txt\", \"Body txt\", \"Ocatid\"]}}]', 8, 1),
(153, '2021-09-05 14:15:27.478800', '89', 'Windows 11', 2, '[{\"changed\": {\"fields\": [\"Short txt\", \"Body txt\", \"Ocatid\"]}}]', 8, 1),
(154, '2021-09-05 14:15:35.043176', '90', 'L\'histoire du Bash', 2, '[{\"changed\": {\"fields\": [\"Short txt\", \"Body txt\", \"Ocatid\"]}}]', 8, 1),
(155, '2021-09-05 14:33:54.172578', '36', 'Réseaux', 2, '[{\"changed\": {\"fields\": [\"Count\"]}}]', 9, 1),
(156, '2021-09-05 14:52:33.186943', '86', 'Le protocole UDP', 2, '[{\"changed\": {\"fields\": [\"Ocatid\"]}}]', 8, 1),
(157, '2021-09-05 14:53:07.351156', '85', 'HackTheBox', 2, '[{\"changed\": {\"fields\": [\"Ocatid\"]}}]', 8, 1),
(158, '2021-09-05 14:53:27.315122', '87', 'Linux : Les modules kernel', 2, '[{\"changed\": {\"fields\": [\"Ocatid\"]}}]', 8, 1),
(159, '2021-09-05 14:53:47.189078', '88', 'Python scripting', 2, '[{\"changed\": {\"fields\": [\"Ocatid\"]}}]', 8, 1),
(160, '2021-09-05 14:54:07.024537', '89', 'Windows 11', 2, '[{\"changed\": {\"fields\": [\"Ocatid\"]}}]', 8, 1),
(161, '2021-09-05 14:55:00.802824', '90', 'L\'histoire du Bash', 2, '[{\"changed\": {\"fields\": [\"Ocatid\"]}}]', 8, 1),
(162, '2021-09-05 14:55:13.394639', '91', 'test udp', 2, '[{\"changed\": {\"fields\": [\"Short txt\", \"Body txt\"]}}]', 8, 1),
(163, '2021-09-05 14:55:22.798740', '91', 'test udp', 2, '[]', 8, 1),
(164, '2021-09-05 14:55:32.038884', '96', 'fffffffffff', 3, '', 8, 1),
(165, '2021-09-05 14:56:09.757199', '36', 'Réseaux', 2, '[{\"changed\": {\"fields\": [\"Count\"]}}]', 9, 1),
(166, '2021-09-06 00:44:24.406031', '18', 'Scripting', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 10, 1),
(167, '2021-09-06 00:44:35.216776', '17', 'Systèmes', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 10, 1),
(168, '2021-09-06 00:44:46.119985', '16', 'Capture the Flag', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 10, 1),
(169, '2021-09-06 00:44:55.725709', '15', 'Scripting', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 10, 1),
(170, '2021-09-06 00:45:05.109605', '14', 'Systèmes', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 10, 1),
(171, '2021-09-06 00:45:14.726414', '13', 'Réseaux', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 10, 1),
(172, '2021-09-14 11:30:28.841751', '42', 'testcccc', 3, '', 9, 1),
(173, '2021-09-14 11:30:28.849178', '41', 'ffffffffffffffff', 3, '', 9, 1),
(174, '2021-09-14 11:30:28.855214', '40', 'test', 3, '', 9, 1),
(175, '2021-09-14 11:30:59.647987', '19', 'vvvvvvvvvvvvvvvv', 3, '', 10, 1),
(176, '2021-09-14 11:31:34.583651', '15', 'Scripting', 3, '', 10, 1),
(177, '2021-09-14 11:31:34.593591', '14', 'Systèmes', 3, '', 10, 1),
(178, '2021-09-14 15:25:02.723820', '4', 'Site settings | 4', 2, '[{\"changed\": {\"fields\": [\"About\"]}}]', 7, 1),
(179, '2021-09-18 08:31:48.676858', '1', 'gggggggggggggggggggggg', 3, '', 11, 1),
(180, '2021-09-18 08:31:58.825444', '2', 'ssssssssssssssssss', 3, '', 11, 1),
(181, '2021-09-18 13:05:38.678512', '8', 'qqq', 3, '', 11, 1),
(182, '2021-09-18 13:05:38.690311', '7', 'ddddddddddddddd', 3, '', 11, 1),
(183, '2021-09-18 13:05:38.698685', '6', 'qqqqqqqqqqqqqqqq', 3, '', 11, 1),
(184, '2021-09-18 13:05:38.705477', '5', 'zzzzzzzzzz', 3, '', 11, 1),
(185, '2021-09-18 13:05:38.712602', '4', 'test23', 3, '', 11, 1),
(186, '2021-09-18 13:05:38.719319', '3', 'test 2', 3, '', 11, 1),
(187, '2021-09-20 18:35:57.840528', '1', 'Administrateur', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 4, 1),
(188, '2021-09-21 16:14:07.963157', '112', 'ttttttttttttttt', 3, '', 8, 1),
(189, '2021-09-21 17:06:30.477632', '123', 'sssssssssssss', 3, '', 8, 1),
(190, '2021-09-21 17:06:30.484505', '122', 'ccccccccccccccc', 3, '', 8, 1),
(191, '2021-09-21 17:06:30.491363', '121', 'xxxxxxxxxxxxxx', 3, '', 8, 1),
(192, '2021-09-21 17:06:30.497604', '120', 'dddddddddddd', 3, '', 8, 1),
(193, '2021-09-21 17:06:30.505221', '119', 'ssssssssssssss', 3, '', 8, 1),
(194, '2021-09-21 17:06:30.512130', '118', 'ssssssssssssss', 3, '', 8, 1),
(195, '2021-09-21 17:06:30.521668', '117', 'dddddddddddddddd', 3, '', 8, 1),
(196, '2021-09-21 17:06:30.528148', '116', 'fffffffffffff', 3, '', 8, 1),
(197, '2021-09-21 17:06:30.536204', '115', 'ffffffffffffffff', 3, '', 8, 1),
(198, '2021-09-21 17:06:30.545265', '114', 'titr tzs', 3, '', 8, 1),
(199, '2021-09-21 17:06:30.552163', '113', 'testvvv', 3, '', 8, 1),
(200, '2021-09-23 08:33:29.420068', '21', 'Infosec', 1, '[{\"added\": {}}]', 10, 1),
(201, '2021-09-23 09:34:26.075810', '21', 'Infosec', 2, '[{\"changed\": {\"fields\": [\"Catid\"]}}]', 10, 1),
(202, '2021-09-23 11:19:32.476655', '21', 'Infosec', 3, '', 10, 1),
(203, '2021-09-23 16:24:17.542313', '18', 'Scripting', 3, '', 10, 1),
(204, '2021-09-23 16:24:17.555772', '17', 'Systèmes', 3, '', 10, 1),
(205, '2021-09-23 16:24:17.564542', '16', 'Capture the Flag', 3, '', 10, 1),
(206, '2021-09-23 16:24:17.573570', '13', 'Réseaux', 3, '', 10, 1),
(207, '2021-09-23 16:26:08.021791', '22', 'linux', 1, '[{\"added\": {}}]', 10, 1),
(208, '2021-09-24 19:28:39.266627', '22', 'linux', 3, '', 10, 1),
(209, '2021-09-25 12:36:55.949846', '1', 'demo', 1, '[{\"added\": {}}]', 15, 1),
(210, '2021-09-25 16:50:30.069778', '1', 'Kr4v3n', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 15, 1),
(211, '2021-09-28 08:01:53.920478', '1', 'Kr4v3n', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 4, 1),
(212, '2021-09-29 11:52:17.121595', '22', 'eeeeeeeeee', 2, '[{\"changed\": {\"fields\": [\"Ip\"]}}]', 11, 1),
(213, '2021-09-29 12:11:33.311977', '30', 'chena - C\'est un test', 2, '[{\"changed\": {\"fields\": [\"Ip\"]}}]', 14, 1),
(214, '2021-09-29 12:20:35.708005', '27', 'Kr4v3n - c\'est un test', 2, '[{\"changed\": {\"fields\": [\"Ip\"]}}]', 14, 1),
(215, '2021-09-29 12:43:20.031680', '40', 'Kr4v3n - TEST IP', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Ip\", \"Country\"]}}]', 14, 1),
(216, '2021-09-29 15:20:49.264189', '1', 'Kr4v3n', 2, '[{\"changed\": {\"fields\": [\"Email\", \"Country\"]}}]', 15, 1),
(217, '2021-09-29 15:21:31.533999', '1', 'Kr4v3n', 2, '[{\"changed\": {\"fields\": [\"User txt\"]}}]', 15, 1),
(218, '2021-10-02 19:39:28.046571', '4', 'Site settings | 4', 2, '[{\"changed\": {\"fields\": [\"About\", \"About page\", \"Seo txt\", \"Seo keywords\"]}}]', 7, 1),
(219, '2021-10-06 09:01:58.796438', '155', 'C\'est un test !', 1, '[{\"added\": {}}]', 8, 1),
(220, '2021-10-06 11:18:38.476114', '155', 'cest-un-test', 2, '[{\"changed\": {\"fields\": [\"Titre\", \"Short txt\", \"Body txt\"]}}]', 8, 1),
(221, '2021-10-08 15:47:15.503925', '160', 'Test final fayçal :;', 3, '', 8, 1),
(222, '2021-10-08 15:47:16.116674', '159', 'teehff kkç,', 3, '', 8, 1),
(223, '2021-10-08 15:47:16.156856', '158', 'Fayçal Chena', 3, '', 8, 1),
(224, '2021-10-08 15:47:16.178700', '157', 'encore un  test çç ff:!!!', 3, '', 8, 1),
(225, '2021-10-08 21:16:22.737930', '1', 'BlogPost object (1)', 1, '[{\"added\": {}}]', 17, 1),
(226, '2021-10-08 21:17:52.012714', '1', 'BlogPost object (1)', 2, '[{\"changed\": {\"fields\": [\"Titre\"]}}]', 17, 1),
(227, '2021-10-08 21:18:53.564326', '1', 'BlogPost object (1)', 2, '[]', 17, 1),
(228, '2021-10-08 21:19:01.767618', '1', 'BlogPost object (1)', 2, '[]', 17, 1),
(229, '2021-10-08 21:25:47.646259', '1', 'BlogPost object (1)', 2, '[]', 17, 1),
(230, '2021-10-08 21:35:15.797722', '1', 'BlogPost object (1)', 2, '[]', 17, 1),
(231, '2021-10-08 21:35:42.138494', '2', 'BlogPost object (2)', 1, '[{\"added\": {}}]', 17, 1),
(232, '2021-10-17 06:39:45.960238', '26', 'Capture the Flag', 3, '', 10, 1),
(233, '2021-10-17 06:39:45.970781', '25', 'Scripting', 3, '', 10, 1),
(234, '2021-10-17 06:39:45.977760', '24', 'Systèmes', 3, '', 10, 1),
(235, '2021-10-17 06:39:45.984428', '23', 'Réseaux', 3, '', 10, 1),
(236, '2021-10-17 14:46:36.862054', '62', 'Capture The Flag', 1, '[{\"added\": {}}]', 9, 1),
(237, '2021-11-13 12:26:30.639159', '4', 'Site settings | 4', 2, '[{\"changed\": {\"fields\": [\"About\", \"Link footer\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(8, 'articles', 'articles'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(16, 'blacklist', 'blacklist'),
(9, 'category', 'category'),
(14, 'comment', 'comment'),
(11, 'contactform', 'contactform'),
(5, 'contenttypes', 'contenttype'),
(7, 'main', 'main'),
(15, 'manager', 'manager'),
(13, 'newsletter', 'newsletter'),
(18, 'posts', 'author'),
(17, 'posts', 'blogpost'),
(19, 'posts', 'category'),
(20, 'posts', 'post'),
(6, 'sessions', 'session'),
(10, 'subcategory', 'subcategory'),
(12, 'trending', 'trending');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-06-17 10:39:35.161857'),
(2, 'auth', '0001_initial', '2021-06-17 10:39:36.643967'),
(3, 'admin', '0001_initial', '2021-06-17 10:39:37.049087'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-06-17 10:39:37.083109'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-06-17 10:39:37.102451'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-06-17 10:39:37.338955'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-06-17 10:39:37.510957'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-06-17 10:39:37.562537'),
(9, 'auth', '0004_alter_user_username_opts', '2021-06-17 10:39:37.577082'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-06-17 10:39:37.696347'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-06-17 10:39:37.708512'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-06-17 10:39:37.735253'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-06-17 10:39:37.895225'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-06-17 10:39:38.062138'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-06-17 10:39:38.102668'),
(16, 'auth', '0011_update_proxy_permissions', '2021-06-17 10:39:38.132830'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-06-17 10:39:38.236010'),
(18, 'sessions', '0001_initial', '2021-06-17 10:39:38.344397'),
(19, 'main', '0001_initial', '2021-06-22 07:29:09.708192'),
(20, 'main', '0002_alter_main_about', '2021-06-22 07:55:58.762993'),
(21, 'main', '0003_alter_main_about', '2021-06-22 07:58:15.277833'),
(22, 'main', '0004_auto_20210622_1040', '2021-06-22 08:40:54.643853'),
(23, 'main', '0005_main_phone', '2021-06-22 08:41:32.943412'),
(24, 'main', '0006_auto_20210622_1128', '2021-06-22 09:28:27.266383'),
(25, 'main', '0007_main_link_footer', '2021-06-22 09:36:53.735829'),
(26, 'articles', '0001_initial', '2021-06-22 12:02:41.153778'),
(27, 'articles', '0002_auto_20210625_1602', '2021-06-25 14:02:56.645899'),
(28, 'articles', '0003_articles_comments', '2021-06-30 08:18:38.940564'),
(29, 'articles', '0004_auto_20210630_1036', '2021-06-30 08:36:36.755871'),
(30, 'articles', '0005_alter_articles_time', '2021-07-01 09:14:36.450486'),
(31, 'category', '0001_initial', '2021-07-01 10:57:01.777355'),
(32, 'subcategory', '0001_initial', '2021-07-01 13:38:38.406402'),
(33, 'articles', '0006_auto_20210728_1524', '2021-07-28 13:24:32.536244'),
(34, 'subcategory', '0002_auto_20210728_1524', '2021-07-28 13:24:32.720430'),
(35, 'articles', '0007_auto_20210811_1048', '2021-08-11 08:48:36.188649'),
(36, 'articles', '0008_auto_20210822_2054', '2021-08-22 18:55:17.800457'),
(37, 'articles', '0009_auto_20210831_1052', '2021-08-31 08:52:42.438525'),
(38, 'articles', '0010_auto_20210831_1411', '2021-08-31 12:11:43.709319'),
(39, 'articles', '0011_articles_comments', '2021-08-31 12:12:37.355783'),
(40, 'articles', '0012_rename_pic_name_articles_pic', '2021-08-31 12:57:55.361771'),
(41, 'articles', '0013_auto_20210831_1636', '2021-08-31 14:36:28.325732'),
(42, 'subcategory', '0003_auto_20210831_1832', '2021-08-31 16:32:21.956620'),
(43, 'category', '0002_category_count', '2021-09-05 13:55:20.741654'),
(44, 'articles', '0014_articles_ocatid', '2021-09-05 14:02:37.724013'),
(45, 'main', '0008_auto_20210913_2048', '2021-09-13 18:48:51.514155'),
(46, 'main', '0009_auto_20210913_2058', '2021-09-13 18:58:40.506120'),
(47, 'main', '0010_auto_20210913_2100', '2021-09-13 19:00:42.640701'),
(48, 'articles', '0015_auto_20210914_1744', '2021-09-14 15:44:19.464503'),
(49, 'articles', '0016_rename_tags_articles_tag', '2021-09-14 15:44:36.578070'),
(50, 'main', '0011_main_about_page', '2021-09-16 15:17:08.170076'),
(51, 'contactform', '0001_initial', '2021-09-18 07:09:48.253603'),
(52, 'trending', '0001_initial', '2021-09-20 16:10:57.413684'),
(53, 'articles', '0017_articles_activated', '2021-09-21 07:54:56.929223'),
(54, 'newsletter', '0001_initial', '2021-09-21 20:35:51.187597'),
(55, 'comment', '0001_initial', '2021-09-25 10:05:33.072066'),
(56, 'manager', '0001_initial', '2021-09-25 12:29:21.734656'),
(57, 'trending', '0002_trending_link', '2021-09-25 18:31:33.820175'),
(58, 'contactform', '0002_contactform_ip', '2021-09-29 11:49:45.954768'),
(59, 'comment', '0002_comment_ip', '2021-09-29 12:08:54.700217'),
(60, 'comment', '0003_remove_comment_ip', '2021-09-29 12:17:43.104632'),
(61, 'comment', '0004_comment_ip', '2021-09-29 12:19:33.075545'),
(62, 'comment', '0005_rename_ip_comment_ip', '2021-09-29 12:36:19.491511'),
(63, 'comment', '0006_comment_country', '2021-09-29 12:36:19.557457'),
(64, 'contactform', '0003_contactform_country', '2021-09-29 12:36:19.618933'),
(65, 'blacklist', '0001_initial', '2021-09-29 13:38:13.488873'),
(66, 'newsletter', '0002_rename_email_newsletter_txt', '2021-09-30 11:31:02.347229'),
(67, 'newsletter', '0003_rename_txt_newsletter_email', '2021-09-30 12:37:28.253138'),
(68, 'newsletter', '0004_rename_email_newsletter_txt', '2021-09-30 12:40:50.812656'),
(69, 'main', '0012_auto_20211002_2130', '2021-10-02 19:30:49.294414'),
(70, 'articles', '0002_auto_20211006_1020', '2021-10-06 08:26:56.163543'),
(71, 'articles', '0002_auto_20211006_1056', '2021-10-06 08:56:12.937398'),
(72, 'category', '0003_category_slug', '2021-10-08 15:23:25.463587'),
(73, 'category', '0004_remove_category_slug', '2021-10-08 20:04:45.957330'),
(74, 'posts', '0001_initial', '2021-10-08 20:04:46.216932'),
(75, 'posts', '0002_auto_20211008_2215', '2021-10-08 20:15:10.380225'),
(76, 'category', '0005_category_slug', '2021-10-17 12:22:55.930904'),
(77, 'category', '0006_remove_category_slug', '2021-10-17 14:46:31.259565'),
(78, 'category', '0007_category_slug', '2021-11-03 11:44:24.592422'),
(79, 'subcategory', '0004_subcategory_slug', '2021-11-03 11:52:26.930995'),
(80, 'articles', '0003_remove_articles_tag', '2022-07-27 04:46:58.648582'),
(81, 'trending', '0003_alter_trending_link', '2022-07-27 04:46:58.672304');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('14xlfr80jb5anapzepfkklh305qen0l6', '.eJxVjEEOwiAQAP_C2RBcSgGP3vuGZncBqRpISnsy_l1JetDrzGReYsZ9y_Pe4jovQVzEWZx-GSE_Yuki3LHcquRatnUh2RN52CanGuLzerR_g4wt9-1ok2EE5zU5diOiskazjYNl8GCArAI3KK2cBq1TIhWBvpnzZKNn8f4Aw-w3RA:1oHI1M:IzApUCOexsXOk2sxUhVGHzrpFtiFmFpN6r-0-aMU4SQ', '2022-08-12 04:54:44.251247'),
('198k5jn6lucicfjnidvo96kzxxiobm8e', '.eJxVjMsOwiAQRf-FtSEthSnj0r3fQJhhkKqBpI-V8d-1SRe6veec-1IhbmsJ2yJzmJI6q16dfjeK_JC6g3SP9dY0t7rOE-ld0Qdd9LUleV4O9--gxKV8a8nQ-czEHULuMxA7I6NHRp-MlZGiGEYcRgAyaBGGzpE10cmQrAio9wf7cjgk:1mYlty:HPWQMuvN2OsxF5ELzT_i1bt2t8vkCHVxNK__wcpwa5s', '2021-10-22 09:10:50.492304'),
('3yhd5yjxkouh7ccmkpvrap2gy7r8eu2e', '.eJxVjMsOwiAQRf-FtSEthSnj0r3fQJhhkKqBpI-V8d-1SRe6veec-1IhbmsJ2yJzmJI6q16dfjeK_JC6g3SP9dY0t7rOE-ld0Qdd9LUleV4O9--gxKV8a8nQ-czEHULuMxA7I6NHRp-MlZGiGEYcRgAyaBGGzpE10cmQrAio9wf7cjgk:1mXN7y:U8ZviNr95mrZFE52OKh-0A4Y3FolFtAC4mUNJX4TSxI', '2021-10-18 12:31:30.225012'),
('58mn5yu7ijrkocgcxxi33418qpdat74v', '.eJxVjEEOwiAQRe_C2hBKS2FcuvcMZIaZStVAUtqV8e7apAvd_vfef6mI25rj1mSJM6uz6tTpdyNMDyk74DuWW9WplnWZSe-KPmjT18ryvBzu30HGlr91kJFAgNAEDGmUKXV2ACZh68kHA_1AQMYla4NHdL31HsPkGHpk9qzeH_zVOHc:1m5A3o:N3yCK4TxJTUx85uLIBZGSUvzK9cHtpYfFIlPr1n-mGU', '2021-08-01 16:54:36.656768'),
('aoscw5ommthjj4shidi9winl1n6lz81t', '.eJxVjEEOwiAQRe_C2hBKS2FcuvcMZIaZStVAUtqV8e7apAvd_vfef6mI25rj1mSJM6uz6tTpdyNMDyk74DuWW9WplnWZSe-KPmjT18ryvBzu30HGlr91kJFAgNAEDGmUKXV2ACZh68kHA_1AQMYla4NHdL31HsPkGHpk9qzeH_zVOHc:1m8LEz:ZrUGgK4-10-zn3s6y-Qzd_z0deZdmAC5gUGJdvbfCPI', '2021-08-10 11:27:17.445131'),
('bpw5z2k61trgh3z0fx9t2umupbt4jtwl', '.eJxVjMsOwiAQRf-FtSEthSnj0r3fQJhhkKqBpI-V8d-1SRe6veec-1IhbmsJ2yJzmJI6q16dfjeK_JC6g3SP9dY0t7rOE-ld0Qdd9LUleV4O9--gxKV8a8nQ-czEHULuMxA7I6NHRp-MlZGiGEYcRgAyaBGGzpE10cmQrAio9wf7cjgk:1mmYFJ:gYU1TYwxY8ceEhKPrSL6bkRqHFlobirHVMKkrcFTpuA', '2021-11-29 09:25:49.231928'),
('ck7ax5vwt35dm12e1ownr2dr522c0m2q', '.eJxVjEEOwiAQRe_C2hBKS2FcuvcMZIaZStVAUtqV8e7apAvd_vfef6mI25rj1mSJM6uz6tTpdyNMDyk74DuWW9WplnWZSe-KPmjT18ryvBzu30HGlr91kJFAgNAEDGmUKXV2ACZh68kHA_1AQMYla4NHdL31HsPkGHpk9qzeH_zVOHc:1lyXRW:A3bC_3xN_6h2bqBTDRZk8DR1FT-9CCWG5evFCZJNpcs', '2021-07-14 10:27:42.725900'),
('djpegb751mxlsymw9ganb264214k0t9w', '.eJxVjEEOwiAQAP_C2RCQwFKP3n0DWXYXqRqalPZk_Lsh6UGvM5N5q4T7VtPeZU0zq4uy6vTLMtJT2hD8wHZfNC1tW-esR6IP2_VtYXldj_ZvULHXsY0BQQLGyQXASKUYOUcOjpCz95PN7KKLpQTjhG0hKwAEHqEgscnq8wXzDTjS:1oGYvH:sFYYchNlO4HDQy7tbYEwe102R3XZjvKOl1BzQwsR-JU', '2022-08-10 04:45:27.376373'),
('eqhlbtd3s3dc8c11xwvqyt0czk0edr5i', '.eJxVjEEOwiAQRe_C2hBKS2FcuvcMZIaZStVAUtqV8e7apAvd_vfef6mI25rj1mSJM6uz6tTpdyNMDyk74DuWW9WplnWZSe-KPmjT18ryvBzu30HGlr91kJFAgNAEDGmUKXV2ACZh68kHA_1AQMYla4NHdL31HsPkGHpk9qzeH_zVOHc:1mKzdf:3l75I7be9_P5q63-3p9CrMLI8JQB3sf8-xD7ZV0AxTo', '2021-09-14 09:01:03.067767'),
('h54pvolpq7zeg7p4sadkzhs06kobf7vr', '.eJxVjMsOwiAQRf-FtSEthSnj0r3fQJhhkKqBpI-V8d-1SRe6veec-1IhbmsJ2yJzmJI6q16dfjeK_JC6g3SP9dY0t7rOE-ld0Qdd9LUleV4O9--gxKV8a8nQ-czEHULuMxA7I6NHRp-MlZGiGEYcRgAyaBGGzpE10cmQrAio9wf7cjgk:1mguPY:vqDEOzdh2EP9VTogBAq6hfFZo7CYv1hqirSBw2H-dfA', '2021-11-13 19:53:04.556749'),
('ka97hbv5ktr9uime5gf7392961qp8595', '.eJxVjMsOwiAQRf-FtSEthSnj0r3fQJhhkKqBpI-V8d-1SRe6veec-1IhbmsJ2yJzmJI6q16dfjeK_JC6g3SP9dY0t7rOE-ld0Qdd9LUleV4O9--gxKV8a8nQ-czEHULuMxA7I6NHRp-MlZGiGEYcRgAyaBGGzpE10cmQrAio9wf7cjgk:1mV82K:GketrdDlltwHXoAdkKcXLekOCYgpDCId9pEJ3NeiiK4', '2021-10-12 08:00:24.276862'),
('qf7htrsl5kmq1626xlgcao8c1c6g66q2', '.eJxVjEEOwiAQRe_C2hBKS2FcuvcMZIaZStVAUtqV8e7apAvd_vfef6mI25rj1mSJM6uz6tTpdyNMDyk74DuWW9WplnWZSe-KPmjT18ryvBzu30HGlr91kJFAgNAEDGmUKXV2ACZh68kHA_1AQMYla4NHdL31HsPkGHpk9qzeH_zVOHc:1lvErz:HPAvtOinMkTV2NdLCGJlSDe3rGCBUmdd7Fud3oUM1-E', '2021-07-05 08:01:23.221293'),
('sodfze2gakshlwbzw1kphbeizuvgxyqe', '.eJxVjMsOwiAQRf-FtSEthSnj0r3fQJhhkKqBpI-V8d-1SRe6veec-1IhbmsJ2yJzmJI6q16dfjeK_JC6g3SP9dY0t7rOE-ld0Qdd9LUleV4O9--gxKV8a8nQ-czEHULuMxA7I6NHRp-MlZGiGEYcRgAyaBGGzpE10cmQrAio9wf7cjgk:1mY2lK:xKdRV02Oif3M9UAOrP23_z-7qWEJWHypwcoc0eSk2wc', '2021-10-20 08:58:54.597949'),
('uppf0qly3jz9rmfye338l9ytqm2e0bxh', '.eJxVjMsOwiAQRf-FtSEthSnj0r3fQJhhkKqBpI-V8d-1SRe6veec-1IhbmsJ2yJzmJI6q16dfjeK_JC6g3SP9dY0t7rOE-ld0Qdd9LUleV4O9--gxKV8a8nQ-czEHULuMxA7I6NHRp-MlZGiGEYcRgAyaBGGzpE10cmQrAio9wf7cjgk:1mbot7:vCGiJ4pf4e6hDZ9xWqJDSNvCnoQVnKPaYFuk5hkPoCg', '2021-10-30 18:58:33.998462'),
('v7z30qh9uienhu214aoem2x1g1z01hvp', '.eJxVjMsOwiAQRf-FtSEthSnj0r3fQJhhkKqBpI-V8d-1SRe6veec-1IhbmsJ2yJzmJI6q16dfjeK_JC6g3SP9dY0t7rOE-ld0Qdd9LUleV4O9--gxKV8a8nQ-czEHULuMxA7I6NHRp-MlZGiGEYcRgAyaBGGzpE10cmQrAio9wf7cjgk:1mjjUt:Pg-PpJpGqdqrN7dOnewuJWlTdFMCejWjGlMzrnfc41Y', '2021-11-21 14:50:15.564972'),
('z26rlnd4rp8ey7vujw77fd64yxnwx89p', '.eJxVjMsOwiAQRf-FtSEthSnj0r3fQJhhkKqBpI-V8d-1SRe6veec-1IhbmsJ2yJzmJI6q16dfjeK_JC6g3SP9dY0t7rOE-ld0Qdd9LUleV4O9--gxKV8a8nQ-czEHULuMxA7I6NHRp-MlZGiGEYcRgAyaBGGzpE10cmQrAio9wf7cjgk:1mlRvL:ICrnTfF5c7TVMbKzJcPCYy3ygNr15BYpIDWzBRvgMOo', '2021-11-26 08:28:39.128415');

-- --------------------------------------------------------

--
-- Structure de la table `main_main`
--

CREATE TABLE `main_main` (
  `id` bigint NOT NULL,
  `name` varchar(50) NOT NULL,
  `about` longtext NOT NULL,
  `github` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `youtube` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `set_name` varchar(20) NOT NULL,
  `link_footer` varchar(100) NOT NULL,
  `pic_name` longtext NOT NULL,
  `pic_url` longtext NOT NULL,
  `pic_name_footer` longtext NOT NULL,
  `pic_url_footer` longtext NOT NULL,
  `about_page` longtext NOT NULL,
  `seo_keywords` longtext NOT NULL,
  `seo_txt` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `main_main`
--

INSERT INTO `main_main` (`id`, `name`, `about`, `github`, `linkedin`, `twitter`, `youtube`, `phone`, `set_name`, `link_footer`, `pic_name`, `pic_url`, `pic_name_footer`, `pic_url_footer`, `about_page`, `seo_keywords`, `seo_txt`) VALUES
(4, 'The payloads', '<p>O&ugrave; puis-je m&#39;en procurer? Plusieurs variations de Lorem Ipsum peuvent &ecirc;tre trouv&eacute;es ici ou l&agrave;, mais la majeure partie d&#39;entre elles a &eacute;t&eacute; alt&eacute;r&eacute;e par l&#39;addition d&#39;humour osdf geeze ezgzegzz&nbsp; z&nbsp; er&quot;&#39;grtgg hrh ,&nbsp;em Ipsum peuvent &ecirc;tre trouv&eacute;es ici ou l&agrave;, mais la ma,&nbsp;em Ipsum peuvent &ecirc;tre trouv&eacute;es ici ou l&agrave;, mais la ma</p>\r\n', 'https://github.com/Kr4v3N', 'https://www.linkedin.com/in/faycalchena/', 'https://twitter.com/faycal_chena', 'https://www.youtube.com/', '07 58 69 87 41', 'Site settings', 'https://www.linkedin.com/in/faycalchena/', 'logo-011.png', '/media/logo-011.png', 'logo-022.png', '/media/logo-022.png', '<h2>Why do y&nbsp; Salut ou use?</h2>\r\n\r\n<p>The Lorem ipum filling text is used by graphic designers, programmers and printers with the aim of occupying the spaces of a website, an advertising product or an editorial production whose final text is not yet ready.</p>\r\n\r\n<p>This expedient serves to get an idea of the finished product that will soon be printed or disseminated via digital channels.</p>\r\n\r\n<p>In order to have a result that is more in keeping with the final result, the graphic designers, designers or typographers report the Lorem ipsum text in respect of two fundamental aspects, namely readability and editorial requirements.</p>\r\n\r\n<p>The choice of font and font size with which Lorem ipsum is reproduced answers to specific needs that go beyond the simple and simple filling of spaces dedicated to accepting real texts and allowing to have hands an advertising/publishing product, both web and paper, true to reality.</p>\r\n\r\n<p>Its nonsense allows the eye to focus only on the graphic layout objectively evaluating the stylistic choices of a project, so it is installed on many graphic programs on many software platforms of personal publishing and content management system.</p>\r\n\r\n<hr />\r\n<h2>What are the origins of Lorem Ipsum?</h2>\r\n\r\n<p>Contrary to what one might think, the Lorem ipsum text, despite being meaningless, has noble origins.</p>\r\n\r\n<p>Objectively composed of unrelated words, Lorem ipsum owes its existence to&nbsp;<strong>Marco Tullio Cicerone&nbsp;</strong>and to some steps of his&nbsp;<em>De finibus bonorum et malorum&nbsp;</em>(The highest good and the highest evil)&nbsp;<strong>written in 45 BC&nbsp;</strong>, a classic of Latin literature dating back more than 2000 years ago.</p>', 'thepayloads, xss, python, bash', 'Au sujet de mon site');

-- --------------------------------------------------------

--
-- Structure de la table `manager_manager`
--

CREATE TABLE `manager_manager` (
  `id` bigint NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_txt` longtext NOT NULL,
  `email` varchar(254) NOT NULL,
  `ip` varchar(120) NOT NULL,
  `country` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `manager_manager`
--

INSERT INTO `manager_manager` (`id`, `name`, `user_txt`, `email`, `ip`, `country`) VALUES
(1, 'Kr4v3n', 'Super-utilisateur', 'chena.faycal@gmail.com', '125.125.236.25', 'France');

-- --------------------------------------------------------

--
-- Structure de la table `newsletter_newsletter`
--

CREATE TABLE `newsletter_newsletter` (
  `id` bigint NOT NULL,
  `txt` varchar(100) NOT NULL,
  `status` int NOT NULL,
  `date` varchar(12) NOT NULL,
  `time` varchar(12) NOT NULL,
  `phone_number` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `newsletter_newsletter`
--

INSERT INTO `newsletter_newsletter` (`id`, `txt`, `status`, `date`, `time`, `phone_number`) VALUES
(11, 'goldama@gmail.com', 1, '30/09/2021', '11H20', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `posts_blogpost`
--

CREATE TABLE `posts_blogpost` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `last_updated` datetime(6) NOT NULL,
  `created_on` date DEFAULT NULL,
  `Published` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `pic_name` varchar(150) NOT NULL,
  `pic_url` varchar(255) NOT NULL,
  `author_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `posts_blogpost`
--

INSERT INTO `posts_blogpost` (`id`, `title`, `slug`, `last_updated`, `created_on`, `Published`, `content`, `pic_name`, `pic_url`, `author_id`) VALUES
(1, 'salut les lapin fafa', '', '2021-10-08 21:35:15.796134', '2021-10-08', 0, 'Qu\'est-ce que le Lorem Ipsum?\r\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\r\n\r\nPourquoi l\'utiliser?\r\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).\r\n\r\n\r\nD\'où vient-il?\r\nContrairement à une opinion répandue, le Lorem Ipsum n\'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s\'est intéressé à un des mots latins les plus obscurs, consectetur, extrait d\'un passage du Lorem Ipsum, et en étudiant tous les usages de ce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du \"De Finibus Bonorum et Malorum\" (Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Renaissance, est un traité sur la théorie de l\'éthique. Les premières lignes du Lorem Ipsum, \"Lorem ipsum dolor sit amet...\", proviennent de la sectio', '-', '-', 1),
(2, 'ffffffffffff', 'gggggggg', '2021-10-08 21:35:42.137135', '2021-10-08', 1, 'gggggggggggggggggg', '-', '-', 1);

-- --------------------------------------------------------

--
-- Structure de la table `subcategory_subcategory`
--

CREATE TABLE `subcategory_subcategory` (
  `id` bigint NOT NULL,
  `name` varchar(80) NOT NULL,
  `catname` varchar(80) NOT NULL,
  `catid` int NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `subcategory_subcategory`
--

INSERT INTO `subcategory_subcategory` (`id`, `name`, `catname`, `catid`, `slug`) VALUES
(40, 'Réseaux', 'Réseaux', 66, 'reseaux'),
(41, 'Systèmes', 'Systèmes', 67, 'systemes'),
(42, 'Scripting', 'Scripting', 70, 'scripting'),
(43, 'Capture the flag', 'Capture the flag', 69, 'capture-the-flag');

-- --------------------------------------------------------

--
-- Structure de la table `trending_trending`
--

CREATE TABLE `trending_trending` (
  `id` bigint NOT NULL,
  `txt` varchar(200) NOT NULL,
  `link` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `trending_trending`
--

INSERT INTO `trending_trending` (`id`, `txt`, `link`) VALUES
(19, ' Record des failles zero day en 2021', 'https://www.lemondeinformatique.fr/actualites/lire-record-des-failles-zero-day-en-2021-84275.html	'),
(20, ' Pirater les ressources clouds n\'a jamais été aussi facile selon IBM X-Force', 'https://www.lemondeinformatique.fr/actualites/lire-pirater-les-ressources-clouds-n-a-jamais-ete-aussi-facile-selon-ibm-x-force-84208.html'),
(21, ' 5 astuces pour sécuriser sa maison avec la domotique', 'https://www.zataz.com/5-astuces-pour-securiser-sa-maison-avec-la-domotique/');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles_articles`
--
ALTER TABLE `articles_articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `blacklist_blacklist`
--
ALTER TABLE `blacklist_blacklist`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category_category`
--
ALTER TABLE `category_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Index pour la table `comment_comment`
--
ALTER TABLE `comment_comment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contactform_contactform`
--
ALTER TABLE `contactform_contactform`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `main_main`
--
ALTER TABLE `main_main`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `manager_manager`
--
ALTER TABLE `manager_manager`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `newsletter_newsletter`
--
ALTER TABLE `newsletter_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`txt`);

--
-- Index pour la table `posts_blogpost`
--
ALTER TABLE `posts_blogpost`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `posts_blogpost_author_id_0b18f6f1_fk_auth_user_id` (`author_id`);

--
-- Index pour la table `subcategory_subcategory`
--
ALTER TABLE `subcategory_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Index pour la table `trending_trending`
--
ALTER TABLE `trending_trending`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles_articles`
--
ALTER TABLE `articles_articles`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `blacklist_blacklist`
--
ALTER TABLE `blacklist_blacklist`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `category_category`
--
ALTER TABLE `category_category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pour la table `comment_comment`
--
ALTER TABLE `comment_comment`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `contactform_contactform`
--
ALTER TABLE `contactform_contactform`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT pour la table `main_main`
--
ALTER TABLE `main_main`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `manager_manager`
--
ALTER TABLE `manager_manager`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `newsletter_newsletter`
--
ALTER TABLE `newsletter_newsletter`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `posts_blogpost`
--
ALTER TABLE `posts_blogpost`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `subcategory_subcategory`
--
ALTER TABLE `subcategory_subcategory`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `trending_trending`
--
ALTER TABLE `trending_trending`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `posts_blogpost`
--
ALTER TABLE `posts_blogpost`
  ADD CONSTRAINT `posts_blogpost_author_id_0b18f6f1_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
