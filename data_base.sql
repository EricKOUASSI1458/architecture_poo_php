-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour test-laravel
CREATE DATABASE IF NOT EXISTS `test-laravel` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test-laravel`;

-- Listage de la structure de la table test-laravel. banks
CREATE TABLE IF NOT EXISTS `banks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test-laravel.banks : ~0 rows (environ)
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;

-- Listage de la structure de la table test-laravel. books
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test-laravel.books : ~7 rows (environ)
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`id`, `user_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
	(1, 3, 'l\'aventure', 'Joli roman et plein de leÃ§ons', '2020-04-22 23:31:07', '2020-04-22 23:31:07'),
	(2, 3, 'les frasques d\'ebintou', 'Joli roman et plein de leï¿½ons et super instructif', '2020-04-22 23:35:31', '2020-04-22 23:35:31'),
	(3, 1, 'LA FRANCE EN DANGER', 'Joli roman et plein de leçons et super instructif', '2020-04-22 23:46:50', '2020-04-22 23:48:42'),
	(4, 1, 'le pain', 'BLABLABLABLABLABLA', '2020-10-18 11:42:12', NULL),
	(5, 1, 'la ville', 'BLABLABLABLABLABLA', '2020-10-18 11:42:17', NULL),
	(6, 2, 'viiilepain', 'hdvjqbfvjn  bjqdshkcj', '2020-10-18 11:44:00', NULL),
	(7, 2, 'le vent', 'le vej sdpcl ^p  qv,kiv, vkq,f é pà ', '2020-10-18 11:44:29', NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;

-- Listage de la structure de la table test-laravel. computers
CREATE TABLE IF NOT EXISTS `computers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test-laravel.computers : ~5 rows (environ)
/*!40000 ALTER TABLE `computers` DISABLE KEYS */;
INSERT INTO `computers` (`id`, `created_at`, `updated_at`, `lib`, `prix`) VALUES
	(1, '2020-04-28 00:23:06', '2020-04-28 00:23:06', 'HP', 426000),
	(2, '2020-04-28 00:23:53', '2020-04-28 00:23:53', 'Toshiba', 358000),
	(3, '2020-04-28 00:24:05', '2020-04-28 00:24:05', 'Asus', 758000),
	(4, '2020-04-28 00:24:22', '2020-04-28 00:24:22', 'DELL', 788000),
	(5, '2020-04-28 00:24:46', '2020-04-28 00:24:46', 'MacBook', 1788000);
/*!40000 ALTER TABLE `computers` ENABLE KEYS */;

-- Listage de la structure de la table test-laravel. employes
CREATE TABLE IF NOT EXISTS `employes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test-laravel.employes : ~0 rows (environ)
/*!40000 ALTER TABLE `employes` DISABLE KEYS */;
/*!40000 ALTER TABLE `employes` ENABLE KEYS */;

-- Listage de la structure de la table test-laravel. failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test-laravel.failed_jobs : ~0 rows (environ)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Listage de la structure de la table test-laravel. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test-laravel.migrations : ~7 rows (environ)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2019_08_19_000000_create_failed_jobs_table', 1),
	(3, '2020_04_06_210119_create_books_table', 1),
	(4, '2020_04_06_210403_create_ratings_table', 1),
	(5, '2020_04_27_234809_create_computers_table', 2),
	(6, '2020_04_27_234951_create_banks_table', 2),
	(7, '2020_04_27_235041_create_employes_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Listage de la structure de la table test-laravel. ratings
CREATE TABLE IF NOT EXISTS `ratings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `book_id` int(10) unsigned NOT NULL,
  `rating` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test-laravel.ratings : ~0 rows (environ)
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;

-- Listage de la structure de la table test-laravel. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test-laravel.users : ~4 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'ange koffi', 'ange@koffi.co', NULL, 'ange1111', NULL, '2020-04-23 00:07:05', '2020-04-23 00:07:05'),
	(2, 'dea eliot', 'eliot.dea@domaine.com', NULL, 'ec86376e23b99516bb874a35db8a3cdb6a95987d', NULL, '2020-10-14 22:29:29', '2020-10-14 22:29:36'),
	(3, 'arnaud n\'draman', 'arnaurd@ndra', NULL, 'arnaud', NULL, '2020-10-14 22:30:40', '2020-10-14 22:30:45'),
	(7, 'phineas', 'phineas@dambo.org', NULL, 'b226a429ba9f35ddf62a80608c6d9a57ead47fc7', NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
