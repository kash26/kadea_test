-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 07, 2023 at 02:39 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kadea_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2023_09_06_111349_create_movies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci,
  `poster_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vote_average` double(8,2) DEFAULT '0.00',
  `release_date` date DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `backdrop_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre_ids` json DEFAULT NULL,
  `movie_id` int DEFAULT NULL,
  `original_language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popularity` double(8,2) DEFAULT NULL,
  `video` tinyint(1) DEFAULT NULL,
  `vote_count` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `overview`, `poster_path`, `vote_average`, `release_date`, `adult`, `backdrop_path`, `genre_ids`, `movie_id`, `original_language`, `original_title`, `popularity`, `video`, `vote_count`, `created_at`, `updated_at`) VALUES
(298618, 'The Flash', 'When his attempt to save his family inadvertently alters the future, Barry Allen becomes trapped in a reality in which General Zod has returned and there are no Super Heroes to turn to. In order to save the world that he is in and return to the future that he knows, Barry\'s only hope is to race for his life. But will making the ultimate sacrifice be enough to reset the universe?', '/rktDFPbfHfUbArZ6OOOKsXcv0Bm.jpg', 6.90, '2023-06-13', 0, '/yF1eOkaYvwiORauRCPWznV9xVvi.jpg', '[28, 12, 878]', NULL, 'en', 'The Flash', 798.87, 0, 2730, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(335977, 'Indiana Jones and the Dial of Destiny', 'Finding himself in a new era, and approaching retirement, Indy wrestles with fitting into a world that seems to have outgrown him. But as the tentacles of an all-too-familiar evil return in the form of an old rival, Indy must don his hat and pick up his whip once more to make sure an ancient and powerful artifact doesn\'t fall into the wrong hands.', '/Af4bXE63pVsb2FtbW8uYIyPBadD.jpg', 6.60, '2023-06-28', 0, '/35z8hWuzfFUZQaYog8E9LsXW3iI.jpg', '[12, 28, 14]', NULL, 'en', 'Indiana Jones and the Dial of Destiny', 2271.24, 0, 1394, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(346698, 'Barbie', 'Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.', '/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg', 7.40, '2023-07-19', 0, '/ctMserH8g2SeOAnCw5gFjdQF8mo.jpg', '[35, 12, 14]', NULL, 'en', 'Barbie', 3733.79, 0, 3854, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(385687, 'Fast X', 'Over many missions and against impossible odds, Dom Toretto and his family have outsmarted, out-nerved and outdriven every foe in their path. Now, they confront the most lethal opponent they\'ve ever faced: A terrifying threat emerging from the shadows of the past who\'s fueled by blood revenge, and who is determined to shatter this family and destroy everything—and everyone—that Dom loves, forever.', '/fiVW06jE7z9YnO4trhaMEdclSiC.jpg', 7.30, '2023-05-17', 0, '/4XM8DUTQb3lhLemJC51Jx4a2EuA.jpg', '[28, 80, 53]', NULL, 'en', 'Fast X', 777.16, 0, 3584, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(447277, 'The Little Mermaid', 'The youngest of King Triton’s daughters, and the most defiant, Ariel longs to find out more about the world beyond the sea, and while visiting the surface, falls for the dashing Prince Eric. With mermaids forbidden to interact with humans, Ariel makes a deal with the evil sea witch, Ursula, which gives her a chance to experience life on land, but ultimately places her life – and her father’s crown – in jeopardy.', '/ym1dxyOk4jFcSl4Q2zmRrA5BEEN.jpg', 6.60, '2023-05-18', 0, '/8FQeHmusSN2hk3bICf16x5GFQvT.jpg', '[12, 10751, 14, 10749]', NULL, 'en', 'The Little Mermaid', 626.88, 0, 1810, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(502356, 'The Super Mario Bros. Movie', 'While working underground to fix a water main, Brooklyn plumbers—and brothers—Mario and Luigi are transported down a mysterious pipe and wander into a magical new world. But when the brothers are separated, Mario embarks on an epic quest to find Luigi.', '/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg', 7.80, '2023-04-05', 0, '/9n2tJBplPbgR2ca05hS5CKXwP2c.jpg', '[16, 10751, 12, 14, 35]', NULL, 'en', 'The Super Mario Bros. Movie', 477.11, 0, 6522, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(569094, 'Spider-Man: Across the Spider-Verse', 'After reuniting with Gwen Stacy, Brooklyn’s full-time, friendly neighborhood Spider-Man is catapulted across the Multiverse, where he encounters the Spider Society, a team of Spider-People charged with protecting the Multiverse’s very existence. But when the heroes clash on how to handle a new threat, Miles finds himself pitted against the other Spiders and must set out on his own to save those he loves most.', '/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg', 8.40, '2023-05-31', 0, '/4HodYYKEIsGOdinkGi2Ucz6X9i0.jpg', '[16, 28, 12]', NULL, 'en', 'Spider-Man: Across the Spider-Verse', 848.29, 0, 4057, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(614930, 'Teenage Mutant Ninja Turtles: Mutant Mayhem', 'After years of being sheltered from the human world, the Turtle brothers set out to win the hearts of New Yorkers and be accepted as normal teenagers through heroic acts. Their new friend April O\'Neil helps them take on a mysterious crime syndicate, but they soon get in over their heads when an army of mutants is unleashed upon them.', '/ueO9MYIOHO7M1PiMUeX74uf8fB9.jpg', 7.20, '2023-07-31', 0, '/2Cpg8hUn60PK9CW9d5SWf605Ah8.jpg', '[16, 35, 28]', NULL, 'en', 'Teenage Mutant Ninja Turtles: Mutant Mayhem', 511.13, 0, 350, '2023-09-07 11:51:06', '2023-09-07 11:51:06'),
(615656, 'Meg 2: The Trench', 'An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.', '/drCySAAAvegq1vQRGRqPKN9f00w.jpg', 7.00, '2023-08-02', 0, '/8pjWz2lt29KyVGoq1mXYu6Br7dE.jpg', '[28, 878, 27]', NULL, 'en', 'Meg 2: The Trench', 4314.11, 0, 1463, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(635910, 'The Last Voyage of the Demeter', 'The crew of the merchant ship Demeter attempts to survive the ocean voyage from Carpathia to London as they are stalked each night by a merciless presence onboard the ship.', '/nrtbv6Cew7qC7k9GsYSf5uSmuKh.jpg', 7.30, '2023-08-09', 0, '/qEm4FrkGh7kGoEiBOyGYNielYVc.jpg', '[27, 14]', NULL, 'en', 'The Last Voyage of the Demeter', 1190.61, 0, 423, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(667538, 'Transformers: Rise of the Beasts', 'When a new threat capable of destroying the entire planet emerges, Optimus Prime and the Autobots must team up with a powerful faction known as the Maximals. With the fate of humanity hanging in the balance, humans Noah and Elena will do whatever it takes to help the Transformers as they engage in the ultimate battle to save Earth.', '/gPbM0MK8CP8A174rmUwGsADNYKD.jpg', 7.50, '2023-06-06', 0, '/2vFuG6bWGyQUzYS9d69E5l85nIz.jpg', '[28, 12, 878]', NULL, 'en', 'Transformers: Rise of the Beasts', 865.07, 0, 3089, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(678512, 'Sound of Freedom', 'The story of Tim Ballard, a former US government agent, who quits his job in order to devote his life to rescuing children from global sex traffickers.', '/kSf9svfL2WrKeuK8W08xeR5lTn8.jpg', 8.10, '2023-07-03', 0, '/waBWlJlMpyFb7STkFHfFvJKgwww.jpg', '[28, 18]', NULL, 'en', 'Sound of Freedom', 1125.53, 0, 410, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(724209, 'Heart of Stone', 'An intelligence operative for a shadowy global peacekeeping agency races to stop a hacker from stealing its most valuable — and dangerous — weapon.', '/vB8o2p4ETnrfiWEgVxHmHWP9yRl.jpg', 6.90, '2023-08-09', 0, '/xVMtv55caCEvBaV83DofmuZybmI.jpg', '[53, 28]', NULL, 'en', 'Heart of Stone', 870.58, 0, 989, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(734253, 'Adipurush', '7000 years ago, Ayodhya\'s Prince Raghava and Prince Sesh along with the Mighty Vanar Warriors travels to the island of Lanka with an aim to rescue Raghava\'s wife Janaki, who has been abducted by Lankesh, the king of Lanka.', '/1H2xEZOixs0z0JKwyjANZiKNNVJ.jpg', 4.80, '2023-06-16', 0, '/2QL5j6mB4ZpyBcVr0WO9H9MQGBu.jpg', '[28, 12, 18, 14, 36]', NULL, 'hi', 'आदिपुरुष', 1079.05, 0, 22, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(869855, 'H4Z4RD', 'Noah loves his girlfriend Lea and their daughter Zita dearly, just about as much as his extremely pimped car with vanity plate “H4Z4RD”. When his cousin offers him a seemingly simple job as a driver, it soon turns into an unlikely and nerve-racking race through Antwerp, which can only result in the end of Noah, his family or the car…', '/1dviyIqBrbnigrbodIvfMQj8mJ0.jpg', 5.80, '2022-07-20', 0, '/vcQQx1z5iUbqZ3uJXvfCCMN3HPb.jpg', '[28, 35]', NULL, 'nl', 'H4Z4RD', 545.79, 0, 11, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(872585, 'Oppenheimer', 'The story of J. Robert Oppenheimer’s role in the development of the atomic bomb during World War II.', '/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg', 8.30, '2023-07-19', 0, '/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg', '[18, 36]', NULL, 'en', 'Oppenheimer', 539.38, 0, 3205, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(884605, 'No Hard Feelings', 'On the brink of losing her childhood home, Maddie discovers an intriguing job listing: wealthy helicopter parents looking for someone to “date” their introverted 19-year-old son, Percy, before he leaves for college. To her surprise, Maddie soon discovers the awkward Percy is no sure thing.', '/gD72DhJ7NbfxvtxGiAzLaa0xaoj.jpg', 7.20, '2023-06-15', 0, '/rRcNmiH55Tz0ugUsDUGmj8Bsa4V.jpg', '[35, 10749]', NULL, 'en', 'No Hard Feelings', 497.23, 0, 1120, '2023-09-07 11:51:06', '2023-09-07 11:51:06'),
(912908, 'Strays', 'When Reggie is abandoned on the mean city streets by his lowlife owner, Doug, Reggie is certain that his beloved owner would never leave him on purpose. But once Reggie falls in with Bug, a fast-talking, foul-mouthed stray who loves his freedom and believes that owners are for suckers, Reggie finally realizes he was in a toxic relationship and begins to see Doug for the heartless sleazeball that he is.', '/muDaKftykz9Nj1mhRheMdbuNI9Z.jpg', 6.60, '2023-08-17', 0, '/2G18rFnH0aarHmSXXQIIQ95uf0w.jpg', '[35, 12]', NULL, 'en', 'Strays', 616.41, 0, 58, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(968051, 'The Nun II', 'Set four years after the ending of the the nun, this follows Sister Irene as she investigates a murder at a boarding school in France. While investigating she is once again forced to face the demonic force Valak, the Nun.', '/mYD7rtnL2s8zkZ9Vuc2HvHrlFsQ.jpg', 7.30, '2023-09-05', 0, '/53z2fXEKfnNg2uSOPss2unPBGX1.jpg', '[27, 9648, 53]', NULL, 'en', 'The Nun II', 660.40, 0, 15, '2023-09-07 11:51:05', '2023-09-07 11:51:05'),
(976573, 'Elemental', 'In a city where fire, water, land and air residents live together, a fiery young woman and a go-with-the-flow guy will discover something elemental: how much they have in common.', '/4Y1WNkd88JXmGfhtWR7dmDAo1T2.jpg', 7.80, '2023-06-14', 0, '/jZIYaISP3GBSrVOPfrp98AMa8Ng.jpg', '[16, 35, 10751, 14, 10749]', NULL, 'en', 'Elemental', 1353.76, 0, 1765, '2023-09-07 11:51:05', '2023-09-07 11:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Isaac Kashiya', 'isaackashiya@gmail.com', NULL, '$2y$10$COCjo5dgY32HNFfGPoHQEu9TYaY9FMmw0Qd7.Hwx472RgU3MtAkWu', NULL, '2023-09-07 12:00:10', '2023-09-07 12:00:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=976574;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
