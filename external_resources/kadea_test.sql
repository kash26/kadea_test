-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 07 sep. 2023 à 04:43
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `kadea_test`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_06_111349_create_movies_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vote_average` double(8,2) NOT NULL DEFAULT '0.00',
  `release_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`id`, `title`, `overview`, `poster_path`, `vote_average`, `release_date`, `created_at`, `updated_at`) VALUES
(298618, 'The Flash', 'When his attempt to save his family inadvertently alters the future, Barry Allen becomes trapped in a reality in which General Zod has returned and there are no Super Heroes to turn to. In order to save the world that he is in and return to the future that he knows, Barry\'s only hope is to race for his life. But will making the ultimate sacrifice be enough to reset the universe?', '/rktDFPbfHfUbArZ6OOOKsXcv0Bm.jpg', 0.00, '2023-06-13', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(335977, 'Indiana Jones and the Dial of Destiny', 'Finding himself in a new era, and approaching retirement, Indy wrestles with fitting into a world that seems to have outgrown him. But as the tentacles of an all-too-familiar evil return in the form of an old rival, Indy must don his hat and pick up his whip once more to make sure an ancient and powerful artifact doesn\'t fall into the wrong hands.', '/Af4bXE63pVsb2FtbW8uYIyPBadD.jpg', 0.00, '2023-06-28', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(346698, 'Barbie', 'Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.', '/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg', 0.00, '2023-07-19', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(385687, 'Fast X', 'Over many missions and against impossible odds, Dom Toretto and his family have outsmarted, out-nerved and outdriven every foe in their path. Now, they confront the most lethal opponent they\'ve ever faced: A terrifying threat emerging from the shadows of the past who\'s fueled by blood revenge, and who is determined to shatter this family and destroy everything—and everyone—that Dom loves, forever.', '/fiVW06jE7z9YnO4trhaMEdclSiC.jpg', 0.00, '2023-05-17', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(447277, 'The Little Mermaid', 'The youngest of King Triton’s daughters, and the most defiant, Ariel longs to find out more about the world beyond the sea, and while visiting the surface, falls for the dashing Prince Eric. With mermaids forbidden to interact with humans, Ariel makes a deal with the evil sea witch, Ursula, which gives her a chance to experience life on land, but ultimately places her life – and her father’s crown – in jeopardy.', '/ym1dxyOk4jFcSl4Q2zmRrA5BEEN.jpg', 0.00, '2023-05-18', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(502356, 'The Super Mario Bros. Movie', 'While working underground to fix a water main, Brooklyn plumbers—and brothers—Mario and Luigi are transported down a mysterious pipe and wander into a magical new world. But when the brothers are separated, Mario embarks on an epic quest to find Luigi.', '/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg', 0.00, '2023-04-05', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(532408, 'The Boogeyman', 'Still reeling from the tragic death of their mother, a teenage girl and her younger sister find themselves plagued by a sadistic presence in their house and struggle to get their grieving father to pay attention before it’s too late.', '/pYwZdnXVnVxAr7dx4MEK7tTK9gI.jpg', 0.00, '2023-05-31', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(569094, 'Spider-Man: Across the Spider-Verse', 'After reuniting with Gwen Stacy, Brooklyn’s full-time, friendly neighborhood Spider-Man is catapulted across the Multiverse, where he encounters the Spider Society, a team of Spider-People charged with protecting the Multiverse’s very existence. But when the heroes clash on how to handle a new threat, Miles finds himself pitted against the other Spiders and must set out on his own to save those he loves most.', '/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg', 0.00, '2023-05-31', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(614479, 'Insidious: The Red Door', 'To put their demons to rest once and for all, Josh Lambert and a college-aged Dalton Lambert must go deeper into The Further than ever before, facing their family\'s dark past and a host of new and more horrifying terrors that lurk behind the red door.', '/rdCnFDaeRHq9llh8hdZaBMVTMUP.jpg', 0.00, '2023-07-05', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(615656, 'Meg 2: The Trench', 'An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.', '/FQHtuf2zc8suMFE28RyvFt3FJN.jpg', 0.00, '2023-08-02', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(635910, 'The Last Voyage of the Demeter', 'The crew of the merchant ship Demeter attempts to survive the ocean voyage from Carpathia to London as they are stalked each night by a merciless presence onboard the ship.', '/nrtbv6Cew7qC7k9GsYSf5uSmuKh.jpg', 0.00, '2023-08-09', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(667538, 'Transformers: Rise of the Beasts', 'When a new threat capable of destroying the entire planet emerges, Optimus Prime and the Autobots must team up with a powerful faction known as the Maximals. With the fate of humanity hanging in the balance, humans Noah and Elena will do whatever it takes to help the Transformers as they engage in the ultimate battle to save Earth.', '/gPbM0MK8CP8A174rmUwGsADNYKD.jpg', 0.00, '2023-06-06', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(678512, 'Sound of Freedom', 'The story of Tim Ballard, a former US government agent, who quits his job in order to devote his life to rescuing children from global sex traffickers.', '/kSf9svfL2WrKeuK8W08xeR5lTn8.jpg', 0.00, '2023-07-03', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(724209, 'Heart of Stone', 'An intelligence operative for a shadowy global peacekeeping agency races to stop a hacker from stealing its most valuable — and dangerous — weapon.', '/vB8o2p4ETnrfiWEgVxHmHWP9yRl.jpg', 0.00, '2023-08-09', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(734253, 'Adipurush', '7000 years ago, Ayodhya\'s Prince Raghava and Prince Sesh along with the Mighty Vanar Warriors travels to the island of Lanka with an aim to rescue Raghava\'s wife Janaki, who has been abducted by Lankesh, the king of Lanka.', '/1H2xEZOixs0z0JKwyjANZiKNNVJ.jpg', 0.00, '2023-06-16', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(869855, 'H4Z4RD', 'Noah loves his girlfriend Lea and their daughter Zita dearly, just about as much as his extremely pimped car with vanity plate “H4Z4RD”. When his cousin offers him a seemingly simple job as a driver, it soon turns into an unlikely and nerve-racking race through Antwerp, which can only result in the end of Noah, his family or the car…', '/1dviyIqBrbnigrbodIvfMQj8mJ0.jpg', 0.00, '2022-07-20', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(872585, 'Oppenheimer', 'The story of J. Robert Oppenheimer’s role in the development of the atomic bomb during World War II.', '/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg', 0.00, '2023-07-19', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(884605, 'No Hard Feelings', 'On the brink of losing her childhood home, Maddie discovers an intriguing job listing: wealthy helicopter parents looking for someone to “date” their introverted 19-year-old son, Percy, before he leaves for college. To her surprise, Maddie soon discovers the awkward Percy is no sure thing.', '/gD72DhJ7NbfxvtxGiAzLaa0xaoj.jpg', 0.00, '2023-06-15', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(968051, 'The Nun II', 'Set four years after the ending of the the nun, this follows Sister Irene as she investigates a murder at a boarding school in France. While investigating she is once again forced to face the demonic force Valak, the Nun.', '/mYD7rtnL2s8zkZ9Vuc2HvHrlFsQ.jpg', 0.00, '2023-09-05', '2023-09-07 02:35:56', '2023-09-07 02:35:56'),
(976573, 'Elemental', 'In a city where fire, water, land and air residents live together, a fiery young woman and a go-with-the-flow guy will discover something elemental: how much they have in common.', '/4Y1WNkd88JXmGfhtWR7dmDAo1T2.jpg', 0.00, '2023-06-14', '2023-09-07 02:35:56', '2023-09-07 02:35:56');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Isaac Kashiya', 'isaackashiya@gmail.com', NULL, '$2y$10$Hm3VWO6iixU8Oap6P8jZ2uoY3s8DyInsX2W4uJH.eyAUJLnpiKASi', 't4GhDmHJXwuErMruai4A8q1MUzAPm1FVZiM7xgmdIwRLD7BwiuV0U6dovz2l', '2023-09-06 23:45:24', '2023-09-06 23:45:24');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=976574;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
