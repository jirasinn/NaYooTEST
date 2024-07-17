-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2024 at 04:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nayootest`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `description`) VALUES
(1, 'งาน', 'เอาไว้เก็บรูปงาน'),
(2, 'A2', 'รูปสัตว์'),
(3, 'C', 'album for car'),
(4, 'หมา', 'ม'),
(5, 'Company', 'The best company'),
(6, 'AAA', 'AAA');

-- --------------------------------------------------------

--
-- Table structure for table `album_images`
--

CREATE TABLE `album_images` (
  `album_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `album_images`
--

INSERT INTO `album_images` (`album_id`, `image_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 8),
(1, 13),
(1, 14),
(2, 4),
(2, 7),
(2, 8),
(2, 9),
(3, 10),
(3, 19),
(4, 13),
(5, 15),
(5, 16),
(5, 17),
(5, 18);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `u_name` varchar(30) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `u_name`, `comment`, `created_at`) VALUES
(29, 4, 'C', 'Ok A', '2024-07-05 19:15:30'),
(31, 8, 'B', 'That is a very good commitment.', '2024-07-05 19:31:47'),
(32, 8, 'A', 'thank you very much', '2024-07-05 19:33:59'),
(37, 5, 'B', 'Hey sis!', '2024-07-17 11:11:53'),
(38, 8, 'B', 'hi', '2024-07-17 11:45:10'),
(39, 12, 'A', 'I love this', '2024-07-17 13:22:15'),
(40, 10, 'B', 'I hope every one enjoy!', '2024-07-17 13:23:50'),
(41, 12, 'B', 'That\'s cute!', '2024-07-17 13:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` varchar(800) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `title`, `description`) VALUES
(1, 'https://positioningmag.com/wp-content/uploads/2020/12/Job-Interview-1.jpg', 'อ่านเอกสาร', 'เอกสารงานวิจัย'),
(2, 'https://storage.googleapis.com/techsauce-prod/ugc/uploads/2023/5/1200_800_1683018482_%E0%B8%AB%E0%B8%B2%E0%B8%87%E0%B8%B2%E0%B8%99_01.jpg', 'หางาน', 'กำลังหางาน'),
(3, 'https://shortrecap.co/wp-content/uploads/2020/01/%E0%B8%84%E0%B8%B4%E0%B8%94%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B9%84%E0%B8%A1%E0%B9%88%E0%B8%AD%E0%B8%AD%E0%B8%81_cover.jpg', 'คิดงาน', 'มี Idea'),
(4, 'https://shortrecap.co/wp-content/uploads/2020/01/%E0%B8%84%E0%B8%B4%E0%B8%94%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B9%84%E0%B8%A1%E0%B9%88%E0%B8%AD%E0%B8%AD%E0%B8%81_01.jpg', 'งานที่เรารัก', 'สนุก'),
(7, 'https://static.thairath.co.th/media/dFQROr7oWzulq5Fa5BEgGYgamMYwZIoP8EpCpAeAwDCMr0pvh5eRaQ0flBNV4hIAUy1.jpg', 'ช', 'ช้าง'),
(8, 'https://www.seub.or.th/seubweb/wp-content/uploads/2024/01/33.jpg', 'น', 'ฮูก'),
(9, 'https://f.ptcdn.info/002/048/000/oidav7m4nF0JGvXz44Y-o.jpg', 'แมว', 'แมวตัวเล็กสีส้ม'),
(10, 'https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/2020-Chevrolet-Corvette-Stingray/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&width=960', 'Chevrolet ', 'รถสีแดง'),
(11, 'https://spectanews.com/wp-content/uploads/2024/04/Car.jpg', 'Car of the future', 'is it insane!'),
(13, 'https://img.lovepik.com/free-png/20211216/lovepik-puppy-png-image_401706509_wh1200.png', 'หมาน้อย', 'หมาน้อยสีน้ำตาล'),
(14, 'https://mpics.mgronline.com/pics/Images/560000009989801.JPEG', 'ตั้งใจทำงาน', 'ทุ่มเทกับงานมากๆ'),
(15, 'https://yt3.googleusercontent.com/ytc/AIdro_nL1wOsA_HAXdULNnVzI4phh7x6X9dCFLDx93gVP-mDLw=s900-c-k-c0x00ffffff-no-rj', 'NaYoo', 'บริษัทที่มีวิสัยทัศที่ดี'),
(16, 'https://ddq1mzvkg4fn7.cloudfront.net/2021/01/--.png', 'ขอนแก่นน่าอยู่', 'หาที่พัก'),
(17, 'https://ddq1mzvkg4fn7.cloudfront.net/2021/01/---.PNG', 'ex', 'web'),
(18, 'https://ddq1mzvkg4fn7.cloudfront.net/2023/03/3--1-.jpg', 'รับสมัครงาน NaYoo', 'รายระเอียดการรับสมัครงาน'),
(19, 'https://cdn.motor1.com/images/mgl/MkO9NN/s1/future-supercars.webp', 'supercar', 'The most beautiful car');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_07_16_083541_create_albums_table', 1),
(2, '2024_07_16_083608_create_images_table', 1),
(3, '2024_07_16_083614_create_album_images_table', 1),
(4, '2024_07_16_165415_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `p_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`p_id`, `u_id`, `title`, `content`, `created_at`) VALUES
(4, 1, 'Salt coffee – Last Part', 'After 40 years, he passed away, and left her a letter which said: \r\n\r\n“My dearest, please forgive me, forgive my life’s lie. \r\n\r\nThis was the only lie I said to you – the salty coffee. \r\n\r\nRemember the first time we dated?\r\n\r\nAt that time, I was so nervous, actually I wanted some sugar, but I said salt, it was hard for me to change so I just went ahead. \r\n\r\nI never thought that would be the start of my biggest lie. \r\n\r\nI tried to tell you the truth many times in my life, but I was too afraid to, as I had promised never to lie to you. \r\n\r\nNow I’m dying, and afraid of nothing so I will tell you the truth: I don’t like salty coffee, what a strange bad taste!\r\n\r\nBut I have had salty coffee for my whole life.\r\n\r\nSince I have known you, I have never felt sorry for anything I have done for you. \r\n\r\nHaving you with me is the biggest happiness of my life.\r\n\r\nIf I could live again, I would want to know you and have you for my whole life, even if I had to drink the salty coffee again.”\r\n\r\nHer tears made the letter totally wet.\r\n\r\nSome day, someone asked her: “How does salty coffee taste?” “It’s sweet,” she replied.', '2024-07-04 15:32:39'),
(5, 3, 'Reasons of love', 'When choosing a partner for life what do people usually think of? A recent study has shown that these following factors are the most important things that one takes into consideration when choosing his/her partner. Firstly, beauty is an important factor. \r\n\r\nAlthough many people say that the partner’s appearance is not important, research has shown that beauty has great effect. Secondly, money is also as important as appearance. \r\n\r\nRich people are easier to attract the opposite sex than the poor. Both men and women say that they think much on how much money their partners have before they decide to get married. \r\n\r\nIn addition, timing is important, if the partner comes in time, marriage is more possible. Do you see? If your partner comes when you are available or eager to love, he will be accepted easily.', '2024-07-04 15:40:24'),
(8, 1, 'I wanna be great programmer', 'I am practicing several languages ​​to become good at it.', '2024-07-05 19:26:50'),
(9, 2, 'Hello NaYoo', 'please accept me to join your theme', '2024-07-17 04:41:30'),
(10, 2, 'Salt coffee', 'He met her at a party.\r\n\r\nShe was so outstanding, many guys were chasing after her, while he was so normal, nobody paid attention to him.\r\n\r\nAt the end of the party, he invited her to have coffee with him.\r\n\r\nShe was so surprised, but due to being polite, she promised.\r\n\r\nThey sat in a nice coffee shop, he was too nervous to say anything, she felt uncomfortable, and she thought, “Please, let me go home.”\r\n\r\nSuddenly he asked the waiter:\r\n\r\n“Would you please give me some salt? I’d like to put it in my coffee.”\r\n\r\nEverybody stared at him, so strange!\r\n\r\nHis face turned red, but still, he put the salt in his coffee and drank it.\r\n\r\nShe asked him curiously:\r\n\r\n“Why do you have this hobby?”\r\n\r\nHe replied:\r\n\r\n“When I was a little boy I lived near the sea, I liked playing in the sea; I could feel the taste of the sea, just like the taste of this salty coffee.\r\n\r\nNow every time I have salty coffee, I always think of my childhood, think of my hometown, I miss my hometown so much, I miss my parents who are still living there.”', '2024-07-17 11:43:43'),
(12, 7, 'Yoda – the cat with four ears', 'Chicago, Illinois, couple Valerie and Ted Rock took the cat in two years ago after they visited a local bar, where a group of drinkers were handing the animal around and making fun of him.\r\n\r\nSince being adopted by the Rocks and after getting his picture posted on the Internet, the two-year-old feline has become an international media celebrity.', '2024-07-17 11:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'A', '$2y$10$zqRJ.EyIcctBiI00hbQit.V9jag17gazvbAXrI0Tsg0SQOc2eUgyK'),
(2, 'B', '$2y$10$35PNLzwJlH0K.JiHh1Ze3.YMJSF3zqAWGPFhd4Iegtm8ZIhNZlAKm'),
(3, 'C', '$2y$10$1ktR0dHzFjs02j.UN9Qc1OBtFBGkfniN0ImMZPurI6vUScVLAv1Ra'),
(4, 'biew', '$2y$10$Jfv8m4w2MfJP6EGGJJY7deCxyyd78Gc9m2KwD3gS4IjK6KPVvITL.'),
(5, 'D', '$2y$12$eVXiP9vYt.Mr9lwLeRu.r.ROBR0Z5tF3r4loxxv0QKLkcIY/m6dGy'),
(6, 'E', '$2y$12$lE7U.1Z/e1QR1puzXgQtX.Q3Zpa5JE8Yyj2YOtEsNqt9wVuygOApi'),
(7, 'F', '$2y$12$T5i9nTkjkpzW4qGTr7RMQODVpt.n4Bo4JKEhBp1kAKwkhKLk4Exji'),
(8, 'G', '$2y$12$ZBkyNETwDFWLC.amHXXY7edarjlLQbCanw3QZOyaFNmHt7GS28Rsq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album_images`
--
ALTER TABLE `album_images`
  ADD PRIMARY KEY (`album_id`,`image_id`),
  ADD KEY `album_images_image_id_foreign` (`image_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album_images`
--
ALTER TABLE `album_images`
  ADD CONSTRAINT `album_images_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`),
  ADD CONSTRAINT `album_images_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`),
  ADD CONSTRAINT `album_images_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `album_images_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`p_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
