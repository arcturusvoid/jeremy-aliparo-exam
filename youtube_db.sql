-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2023 at 01:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channels`
--

CREATE TABLE `youtube_channels` (
  `id` int(11) NOT NULL,
  `profile_picture` text DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channels`
--

INSERT INTO `youtube_channels` (`id`, `profile_picture`, `name`, `description`, `created_at`) VALUES
(1, 'https://yt3.ggpht.com/urNLBJGryDamao5r0jmlTg84mIBOoaeJd6XR67j4nuRd0iRvv5g-MUgaowsWKCs8V_t4KwST=s88-c-k-c0x00ffffff-no-rj', 'NBA', 'The NBA is the premier professional basketball league in the United States and Canada. The league is truly global, with games and programming in 215 countries and territories in 47 languages. The NBA consists of 30 teams. The NBA offers real time access to live regular season NBA games with a subscription to NBA LEAGUE PASS, available globally for TV, broadband, and mobile.  Real-time Stats, Scores, Highlights and more are available to fans on web and mobile with the NBA App. \n\nFor news, stories, highlights and more, go to our official website at https://app.link.nba.com/e/NBA_site\n', '0000-00-00 00:00:00'),
(8, 'https://yt3.ggpht.com/urNLBJGryDamao5r0jmlTg84mIBOoaeJd6XR67j4nuRd0iRvv5g-MUgaowsWKCs8V_t4KwST=s88-c-k-c0x00ffffff-no-rj', 'NBA', 'The NBA is the premier professional basketball league in the United States and Canada. The league is truly global, with games and programming in 215 countries and territories in 47 languages. The NBA consists of 30 teams. The NBA offers real time access to live regular season NBA games with a subscription to NBA LEAGUE PASS, available globally for TV, broadband, and mobile.  Real-time Stats, Scores, Highlights and more are available to fans on web and mobile with the NBA App. \n\nFor news, stories, highlights and more, go to our official website at https://app.link.nba.com/e/NBA_site\n', '0000-00-00 00:00:00'),
(9, 'https://yt3.ggpht.com/urNLBJGryDamao5r0jmlTg84mIBOoaeJd6XR67j4nuRd0iRvv5g-MUgaowsWKCs8V_t4KwST=s88-c-k-c0x00ffffff-no-rj', 'NBA', 'The NBA is the premier professional basketball league in the United States and Canada. The league is truly global, with games and programming in 215 countries and territories in 47 languages. The NBA consists of 30 teams. The NBA offers real time access to live regular season NBA games with a subscription to NBA LEAGUE PASS, available globally for TV, broadband, and mobile.  Real-time Stats, Scores, Highlights and more are available to fans on web and mobile with the NBA App. \n\nFor news, stories, highlights and more, go to our official website at https://app.link.nba.com/e/NBA_site\n', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel_videos`
--

CREATE TABLE `youtube_channel_videos` (
  `id` int(11) NOT NULL,
  `yotube_channel_id` int(11) NOT NULL,
  `video_link` text NOT NULL,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channel_videos`
--

INSERT INTO `youtube_channel_videos` (`id`, `yotube_channel_id`, `video_link`, `title`, `description`, `thumbnail`, `created_at`) VALUES
(1, 1, 'https://www.youtube.com/watch?v=JCczmArw1lk', '“I’m excited to play with two Hall Of Famers” - Brad Beal talks playing with KD &amp; Book! 🙌| #Shorts', '', 'https://i.ytimg.com/vi/JCczmArw1lk/hqdefault.jpg', '2023-06-29 20:11:01'),
(2, 1, 'https://www.youtube.com/watch?v=ZRBbPK5izeY', '&quot;I&#39;m excited to play with two Hall Of Famers&quot; - Bradley Beal&#39;s Suns Introductory Press Conference', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/ZRBbPK5izeY/hqdefault.jpg', '2023-06-29 20:09:47'),
(3, 1, 'https://www.youtube.com/watch?v=KwP92-8kprg', 'Toronto Raptors Rookie Gradey Dick reflects on his childhood pic! #NBARooks', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/KwP92-8kprg/hqdefault.jpg', '2023-06-29 20:05:26'),
(4, 1, 'https://www.youtube.com/watch?v=uHOe-bpYLs0', 'Donovan Mitchell working on elevating his BAG with trainer Chris Brickley. 🕷️| #Shorts', '', 'https://i.ytimg.com/vi/uHOe-bpYLs0/hqdefault.jpg', '2023-06-29 15:06:55'),
(5, 1, 'https://www.youtube.com/watch?v=8kzOiiYlHn0', '#NYvsNY🗽tipped off its 5th year in Harlem with some special guests 👀 | #Shorts', '', 'https://i.ytimg.com/vi/8kzOiiYlHn0/hqdefault.jpg', '2023-06-28 14:33:40'),
(6, 1, 'https://www.youtube.com/watch?v=4uDKhPRjIu8', 'Jayson Tatum Pulled Up To #NYvsNY 👀 | #Shorts', '', 'https://i.ytimg.com/vi/4uDKhPRjIu8/hqdefault.jpg', '2023-06-28 00:19:46'),
(7, 1, 'https://www.youtube.com/watch?v=wG29Il-RdUs', 'Another PRICELESS Wemby moment! 🥹🤝| #Shorts', '', 'https://i.ytimg.com/vi/wG29Il-RdUs/hqdefault.jpg', '2023-06-27 16:36:31'),
(8, 1, 'https://www.youtube.com/watch?v=6M11q1JrLgA', 'Victor Wembanyama’s Spurs Introductory Press Conference', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/6M11q1JrLgA/hqdefault.jpg', '2023-06-24 18:16:53'),
(9, 1, 'https://www.youtube.com/watch?v=nJ7KDvq6NfY', 'Victor Wembanyama Talks Dinner With David Robinson, Tim Duncan &amp; Manu Ginobili! 🙌| #Shorts', '', 'https://i.ytimg.com/vi/nJ7KDvq6NfY/hqdefault.jpg', '2023-06-24 18:11:57'),
(10, 1, 'https://www.youtube.com/watch?v=-wLWjHDeOwQ', 'Victor Wembanyama Gets Asked The Big Question 🤔| #Shorts', '', 'https://i.ytimg.com/vi/-wLWjHDeOwQ/hqdefault.jpg', '2023-06-24 16:54:38'),
(11, 1, 'https://www.youtube.com/watch?v=QtcpB2m28S0', 'All-Access: 2023 NBA Draft', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/QtcpB2m28S0/hqdefault.jpg', '2023-06-24 16:45:39'),
(12, 1, 'https://www.youtube.com/watch?v=C_fX7JUVvDg', 'Every #1 Pick Since 1980 | Victor Wembanyama, LeBron, Shaq and MORE', 'Check out every first overall pick since 1980 following the 2023 #NBADraft presented by State Farm Never miss a moment with ...', 'https://i.ytimg.com/vi/C_fX7JUVvDg/hqdefault.jpg', '2023-06-23 22:05:39'),
(13, 1, 'https://www.youtube.com/watch?v=8PZDjqLJhTo', 'Inside the Spurs War Room while drafting Wemby! 👏 | #Shorts', '', 'https://i.ytimg.com/vi/8PZDjqLJhTo/hqdefault.jpg', '2023-06-23 18:06:03'),
(14, 1, 'https://www.youtube.com/watch?v=12V5b7yedow', 'Jett Howard &amp; Juwan Howard! 😬📸| #Shorts', '', 'https://i.ytimg.com/vi/12V5b7yedow/hqdefault.jpg', '2023-06-23 04:18:47'),
(15, 1, 'https://www.youtube.com/watch?v=MwoFguoxnq4', '2023 #NBADraft presented by State Farm Press Conference', 'The 2023 #NBADraft presented by State Farm press conference. Hear from the future of the NBA! Never miss a moment with the ...', 'https://i.ytimg.com/vi/MwoFguoxnq4/hqdefault.jpg', '2023-06-23 04:16:10'),
(16, 1, 'https://www.youtube.com/watch?v=GoWa2-8VykU', 'The Wemby Crew. 🇫🇷🙌| #Shorts', '', 'https://i.ytimg.com/vi/GoWa2-8VykU/hqdefault.jpg', '2023-06-23 04:12:03'),
(17, 1, 'https://www.youtube.com/watch?v=U7bKiCWTyGU', 'Jett Howard reacts to his former teammate Kobe Bufkin getting drafted! Michigan Connection🤝| #Short', '', 'https://i.ytimg.com/vi/U7bKiCWTyGU/hqdefault.jpg', '2023-06-23 03:59:18'),
(18, 1, 'https://www.youtube.com/watch?v=80S-vj4iQzc', 'Gradey is looking forward to link with Drake in the 6! 🦉| #Shorts', '', 'https://i.ytimg.com/vi/80S-vj4iQzc/hqdefault.jpg', '2023-06-23 03:39:38'),
(19, 1, 'https://www.youtube.com/watch?v=aeXPv4cvBko', 'All 30 First Round Picks Of The 2023 #NBADraft', 'Check out all 30 first round picks of the 2023 #NBADraft presented by State Farm! Never miss a moment with the latest news, ...', 'https://i.ytimg.com/vi/aeXPv4cvBko/hqdefault.jpg', '2023-06-23 03:33:52'),
(20, 1, 'https://www.youtube.com/watch?v=c0rYPWWV08c', 'Wemby receives a call from coach Pop! 📲| #Shorts', '', 'https://i.ytimg.com/vi/c0rYPWWV08c/hqdefault.jpg', '2023-06-23 03:09:45'),
(21, 1, 'https://www.youtube.com/watch?v=jguHFWEEPiI', 'Former teammates Victor Wembanyama &amp; Bilal Coulibaly share a moment after being drafted! |#Shorts', '', 'https://i.ytimg.com/vi/jguHFWEEPiI/hqdefault.jpg', '2023-06-23 01:57:52'),
(22, 1, 'https://www.youtube.com/watch?v=D5ho8lg3eDY', 'National Champion &amp; now a Lottery Pick! Jordan Hawkins is headed to New Orleans! 🥹| #Shorts', '', 'https://i.ytimg.com/vi/D5ho8lg3eDY/hqdefault.jpg', '2023-06-23 01:48:34'),
(23, 1, 'https://www.youtube.com/watch?v=uUbUG8zGpMQ', 'That feeling after being drafted! Dance Scoot 🕺| #Shorts', '', 'https://i.ytimg.com/vi/uUbUG8zGpMQ/hqdefault.jpg', '2023-06-23 01:40:49'),
(24, 1, 'https://www.youtube.com/watch?v=Vf9HFIDHPns', 'Jett Howard the son of NBA Legend Juwan Howard is headed to Orlando! 🙌| #Shorts', '', 'https://i.ytimg.com/vi/Vf9HFIDHPns/hqdefault.jpg', '2023-06-23 01:39:24'),
(25, 1, 'https://www.youtube.com/watch?v=a91FF9bWKHE', 'Wemby is excited as for his former teammate Bilal Coulibaly was drafted 7th! 😧| #Shorts', '', 'https://i.ytimg.com/vi/a91FF9bWKHE/hqdefault.jpg', '2023-06-23 01:35:26'),
(26, 1, 'https://www.youtube.com/watch?v=fIjLizGDxrM', 'Scoot Henderson Full Presser After Being Selected #3 Overall In The 2023 #NBADraft', 'The Portland Trail Blazers select Scoot Henderson with the #3 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/fIjLizGDxrM/hqdefault.jpg', '2023-06-23 01:34:44'),
(27, 1, 'https://www.youtube.com/watch?v=tSkW_MzvMEI', 'Victor Wembanyama overcome with emotion as he holds his Spurs jersey for the 1st time! 🥹| #Shorts', '', 'https://i.ytimg.com/vi/tSkW_MzvMEI/hqdefault.jpg', '2023-06-23 01:23:49'),
(28, 1, 'https://www.youtube.com/watch?v=kYcPagdyIfs', 'Anthony Black is headed to Orlando! 🥶| #Shorts', '', 'https://i.ytimg.com/vi/kYcPagdyIfs/hqdefault.jpg', '2023-06-23 01:18:57'),
(29, 1, 'https://www.youtube.com/watch?v=lCJS41nmJxM', 'All the hard work led to this moment for Victor Wembanyama…let the tears flow! 🥹| #Shorts', '', 'https://i.ytimg.com/vi/lCJS41nmJxM/hqdefault.jpg', '2023-06-23 01:12:33'),
(30, 1, 'https://www.youtube.com/watch?v=8soOlgFOc0Q', 'Ausar Thompson is headed to Detroit! The Thompson twins go back-2-back! 🤝| #Shorts', '', 'https://i.ytimg.com/vi/8soOlgFOc0Q/hqdefault.jpg', '2023-06-23 00:59:38'),
(31, 1, 'https://www.youtube.com/watch?v=jrQrWfyk44s', 'Ausar Thompson Goes #5 Overall In The 2023 #NBADraft', 'The Detroit Pistons select Ausar Thompson with the #5 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/jrQrWfyk44s/hqdefault.jpg', '2023-06-23 00:53:46'),
(32, 1, 'https://www.youtube.com/watch?v=K-zkVkn_VtY', 'Amen Thompson is headed to Houston! 🚀| #Shorts', '', 'https://i.ytimg.com/vi/K-zkVkn_VtY/hqdefault.jpg', '2023-06-23 00:50:51'),
(33, 1, 'https://www.youtube.com/watch?v=_QZGbTSjXvo', 'Amen Thompson Goes #4 Overall In The 2023 #NBADraft', 'The Houston Rockets select Amen Thompson with the #4 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/_QZGbTSjXvo/hqdefault.jpg', '2023-06-23 00:45:37'),
(34, 1, 'https://www.youtube.com/watch?v=ufd1byHl7Bc', 'Scoot Henderson is headed to Portland! 🙌 #NBADraft | #Shorts', '', 'https://i.ytimg.com/vi/ufd1byHl7Bc/hqdefault.jpg', '2023-06-23 00:45:43'),
(35, 1, 'https://www.youtube.com/watch?v=9gNUXmSfyh4', 'Scoot Henderson Goes #3 Overall In The 2023 #NBADraft', 'The Portland Trail Blazers select Scoot Henderson with the #3 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/9gNUXmSfyh4/hqdefault.jpg', '2023-06-23 00:33:35'),
(36, 1, 'https://www.youtube.com/watch?v=5MPSFthKI-I', 'Victor Wembanyama Goes #1 Overall In The 2023 #NBADraft', 'The San Antonio Spurs select Victor Wembanyama with the #1 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/5MPSFthKI-I/hqdefault.jpg', '2023-06-23 00:30:26'),
(37, 1, 'https://www.youtube.com/watch?v=CoA0kuNKQVc', 'With the 1st pick of 2023 #NBADraft the Spurs Select…Victor Wembanyama! 🙌|#Shorts', '', 'https://i.ytimg.com/vi/CoA0kuNKQVc/hqdefault.jpg', '2023-06-23 00:24:38'),
(38, 1, 'https://www.youtube.com/watch?v=g57T-2I_5V4', 'Ladies &amp; Gentleman Presenting The Class of 2023! #NBADraft 🙌| #Shorts', '', 'https://i.ytimg.com/vi/g57T-2I_5V4/hqdefault.jpg', '2023-06-22 22:51:27'),
(39, 1, 'https://www.youtube.com/watch?v=LP55ReGws1c', 'Designed &amp; inspired by Family…Scoot Henderson breaks down his Draft Fit! 🔥| #Shorts', '', 'https://i.ytimg.com/vi/LP55ReGws1c/hqdefault.jpg', '2023-06-22 21:59:27'),
(40, 1, 'https://www.youtube.com/watch?v=Kbv4W1hmJ2w', 'NBA correspondent Jeremy Sochan gets ready and dyes his hair ahead of the #NBADraft! 🙌| #Shorts', '', 'https://i.ytimg.com/vi/Kbv4W1hmJ2w/hqdefault.jpg', '2023-06-22 21:30:58'),
(41, 1, 'https://www.youtube.com/watch?v=_FlGS7Q7X-8', 'Cam Whitmore gives us a sneak peek on his #NBADraft night suit &amp; kicks 👀| #Shorts', '', 'https://i.ytimg.com/vi/_FlGS7Q7X-8/hqdefault.jpg', '2023-06-22 21:21:31'),
(42, 1, 'https://www.youtube.com/watch?v=ucZZdf94LbI', '#8 HEAT at #1 NUGGETS | FULL GAME 5 HIGHLIGHTS | June 12, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/ucZZdf94LbI/hqdefault.jpg', '2023-06-13 03:16:57'),
(43, 1, 'https://www.youtube.com/watch?v=Y0p8PzJ2eMw', '#1 NUGGETS at #8 HEAT | FULL GAME 4 HIGHLIGHTS | June 9, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Y0p8PzJ2eMw/hqdefault.jpg', '2023-06-10 03:21:08'),
(44, 1, 'https://www.youtube.com/watch?v=VDFrLb_hOvQ', '#1 NUGGETS at #7 LAKERS | FULL GAME 3 HIGHLIGHTS | May 20, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/VDFrLb_hOvQ/hqdefault.jpg', '2023-05-21 03:15:06'),
(45, 1, 'https://www.youtube.com/watch?v=ju40vYNp0Uc', '#7 LAKERS at #1 NUGGETS | FULL GAME 1 HIGHLIGHTS | May 16, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/ju40vYNp0Uc/hqdefault.jpg', '2023-05-17 03:33:43'),
(46, 1, 'https://www.youtube.com/watch?v=HJJEfn0-idU', '#6 WARRIORS at #7 LAKERS | FULL GAME 6 HIGHLIGHTS | May 12, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/HJJEfn0-idU/hqdefault.jpg', '2023-05-13 04:54:48'),
(47, 1, 'https://www.youtube.com/watch?v=zitBEGqiRCY', 'NBA&#39;s Top 5 Plays Of The Night | May 11, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/zitBEGqiRCY/hqdefault.jpg', '2023-05-12 05:54:38'),
(48, 1, 'https://www.youtube.com/watch?v=oTufGVSzbKk', '#1 NUGGETS at #4 SUNS | FULL GAME 6 HIGHLIGHTS | May 11, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/oTufGVSzbKk/hqdefault.jpg', '2023-05-12 04:52:52'),
(49, 1, 'https://www.youtube.com/watch?v=rMQC1BY53tI', '#2 CELTICS at #3 76ERS | FULL GAME 6 HIGHLIGHTS | May 11, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/rMQC1BY53tI/hqdefault.jpg', '2023-05-12 02:21:40'),
(50, 1, 'https://www.youtube.com/watch?v=zi1H-Ye5WeQ', '#8 HEAT at #5 KNICKS | FULL GAME 5 HIGHLIGHTS | May 10, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/zi1H-Ye5WeQ/hqdefault.jpg', '2023-05-11 02:16:04'),
(51, 1, 'https://www.youtube.com/watch?v=y7hNE3MW81A', '#1 NUGGETS at #4 SUNS | FULL GAME 4 HIGHLIGHTS | May 7, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/y7hNE3MW81A/hqdefault.jpg', '2023-05-08 02:38:17'),
(52, 1, 'https://www.youtube.com/watch?v=ktIWbf2YsO8', '#5 KNICKS at #8 HEAT | FULL GAME 3 HIGHLIGHTS | May 6, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/ktIWbf2YsO8/hqdefault.jpg', '2023-05-06 22:28:11'),
(53, 1, 'https://www.youtube.com/watch?v=9hTzs3II9dw', '#2 CELTICS at #3 76ERS  | FULL GAME 2 HIGHLIGHTS | May 5, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/9hTzs3II9dw/hqdefault.jpg', '2023-05-06 02:26:30'),
(54, 1, 'https://www.youtube.com/watch?v=mm3zGvpfwmg', '#3 76ERS at #2 CELTICS | FULL GAME 2 HIGHLIGHTS | May 3, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/mm3zGvpfwmg/hqdefault.jpg', '2023-05-04 02:31:24'),
(55, 1, 'https://www.youtube.com/watch?v=9EOC_596j_M', 'Final 2:56 WILD ENDING #7 Lakers vs #6 Warriors - Game 1! | May 2, 2023', 'Led by Anthony Davis\'s 30 points and 23 rebounds, the No. 7 seed Los Angeles Lakers defeat the No. 6 seed Golden State ...', 'https://i.ytimg.com/vi/9EOC_596j_M/hqdefault.jpg', '2023-05-03 04:54:54'),
(56, 1, 'https://www.youtube.com/watch?v=p6o3YK0azCQ', '#7 LAKERS at #6 WARRIORS | FULL GAME 1 HIGHLIGHTS | May 2, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/p6o3YK0azCQ/hqdefault.jpg', '2023-05-03 04:54:19'),
(57, 1, 'https://www.youtube.com/watch?v=V4jHOxR8u0c', 'Final 2:40 WILD ENDING #8 HEAT vs #5 KNICKS - Game 2! | May 2, 2023', 'Led by Jalen Brunson\'s 30 points, 5 rebounds and 6 3pt. FG, the No. 5 seed New York Knicks defeat the No. 8 seed Miami Heat in ...', 'https://i.ytimg.com/vi/V4jHOxR8u0c/hqdefault.jpg', '2023-05-03 02:25:33'),
(58, 1, 'https://www.youtube.com/watch?v=WPLmAQFyVIA', 'Final 6:10 of Game 7 of the 2016 NBA Finals (Extended Version)', 'Ahead of LeBron & Warriors meeting up again, we flashback to the final minutes of Game 7 of the NBA Finals where 2 of the best ...', 'https://i.ytimg.com/vi/WPLmAQFyVIA/hqdefault.jpg', '2023-05-02 16:00:17'),
(59, 1, 'https://www.youtube.com/watch?v=5eHJIpj8fl8', '#4 SUNS at #1 NUGGETS | FULL GAME 2 HIGHLIGHTS | May 1, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/5eHJIpj8fl8/hqdefault.jpg', '2023-05-02 04:35:39'),
(60, 1, 'https://www.youtube.com/watch?v=hiPv0MPRfcw', 'Final 2:46 WILD ENDING #3 76ERS vs #2 CELTICS - Game 1! | May 1, 2023', 'Led by James Harden\'s Playoff career-high tying 45 points, the Philadelphia 76ers defeated the Boston Celtics in Game 1, ...', 'https://i.ytimg.com/vi/hiPv0MPRfcw/hqdefault.jpg', '2023-05-02 02:14:52'),
(61, 1, 'https://www.youtube.com/watch?v=G2Vdw9flATQ', '#3 76ERS at #2 CELTICS | FULL GAME 1 HIGHLIGHTS | May 1, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/G2Vdw9flATQ/hqdefault.jpg', '2023-05-02 02:04:55'),
(62, 1, 'https://www.youtube.com/watch?v=sL8jjviszm8', 'James Harden Ties PLAYOFF CAREER-HIGH 45 Points In 76ers Game 1 W! | May 1, 2023', 'Led by James Harden\'s Playoff career-high tying 45 points, the Philadelphia 76ers defeated the Boston Celtics in Game 1, ...', 'https://i.ytimg.com/vi/sL8jjviszm8/hqdefault.jpg', '2023-05-02 02:00:06'),
(63, 1, 'https://www.youtube.com/watch?v=JKajbTxAk5I', '#6 WARRIORS at #3 KINGS | FULL GAME 7 HIGHLIGHTS | April 30, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/JKajbTxAk5I/hqdefault.jpg', '2023-04-30 22:25:06'),
(64, 1, 'https://www.youtube.com/watch?v=bissN6MzK1I', '#8 HEAT at #5 KNICKS | FULL GAME 1 HIGHLIGHTS | April 30, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/bissN6MzK1I/hqdefault.jpg', '2023-04-30 19:43:15'),
(65, 1, 'https://www.youtube.com/watch?v=Q-fdOHSMk_Y', '#2 GRIZZLIES at #7 LAKERS | FULL GAME 6 HIGHLIGHTS | April 28, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Q-fdOHSMk_Y/hqdefault.jpg', '2023-04-29 05:17:56'),
(66, 1, 'https://www.youtube.com/watch?v=Fo4kjUjC1Y4', 'Jimmy Butler&#39;s Best Moments From Round 1!', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Fo4kjUjC1Y4/hqdefault.jpg', '2023-04-27 06:35:04'),
(67, 1, 'https://www.youtube.com/watch?v=imR3k4jog4U', '#8 HEAT at #1 BUCKS | FULL GAME 5 HIGHLIGHTS | April 26, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/imR3k4jog4U/hqdefault.jpg', '2023-04-27 05:01:16'),
(68, 1, 'https://www.youtube.com/watch?v=R0d-PK1iI8U', 'Final 3:13 INSANE End of Regulation Heat vs Bucks Game 5 UNCUT | April 26, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/R0d-PK1iI8U/hqdefault.jpg', '2023-04-27 04:25:59'),
(69, 1, 'https://www.youtube.com/watch?v=nOyVgk4Jgjo', '#8 TIMBERWOLVES at #1 NUGGETS | FULL GAME 5 HIGHLIGHTS | April 25, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/nOyVgk4Jgjo/hqdefault.jpg', '2023-04-26 03:59:15'),
(70, 1, 'https://www.youtube.com/watch?v=aTTuaHvdSQU', '#4 SUNS at #5 CLIPPERS | FULL GAME 4 HIGHLIGHTS | April 22, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/aTTuaHvdSQU/hqdefault.jpg', '2023-04-22 22:00:16'),
(71, 1, 'https://www.youtube.com/watch?v=anBMIuUrDiM', '#2 CELTICS at #7 HAWKS | FULL GAME 3 HIGHLIGHTS | April 21, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/anBMIuUrDiM/hqdefault.jpg', '2023-04-22 01:45:27'),
(72, 1, 'https://www.youtube.com/watch?v=Wp69xUhRWXY', 'NBA Top 10 Plays Of The Night | April 20, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Wp69xUhRWXY/hqdefault.jpg', '2023-04-21 06:57:01'),
(73, 1, 'https://www.youtube.com/watch?v=cMTfKlGAIXk', '#4 SUNS at #5 CLIPPERS | FULL GAME 3 HIGHLIGHTS | April 20, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/cMTfKlGAIXk/hqdefault.jpg', '2023-04-21 05:23:20'),
(74, 1, 'https://www.youtube.com/watch?v=xQNJZkbSYt8', '#7 HAWKS at #2 CELTICS | FULL GAME 2 HIGHLIGHTS | April 18, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/xQNJZkbSYt8/hqdefault.jpg', '2023-04-19 01:21:07'),
(75, 1, 'https://www.youtube.com/watch?v=RSAA02Mm_EE', 'Lakers Best Moments Since February 🔥👀', 'Take a look at the top plays and moments from the Lakers since February! Never miss a moment with the latest news, trending ...', 'https://i.ytimg.com/vi/RSAA02Mm_EE/hqdefault.jpg', '2023-04-11 20:00:14'),
(76, 1, 'https://www.youtube.com/watch?v=XeReLnW_Sic', 'Top 50 Blocks of the 2022-23 NBA Regular Season', 'Take a look at the top 50 blocks of the regular season! Never miss a moment with the latest news, trending stories and highlights ...', 'https://i.ytimg.com/vi/XeReLnW_Sic/hqdefault.jpg', '2023-04-11 17:00:16'),
(77, 1, 'https://www.youtube.com/watch?v=Hrj9mUzcsTQ', 'Kenneth Lofton, Jr. Scores CAREER-HIGH 42 POINTS! | April 9, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Hrj9mUzcsTQ/hqdefault.jpg', '2023-04-09 22:21:10'),
(78, 1, 'https://www.youtube.com/watch?v=yQKoMSvhLQU', 'JAZZ at LAKERS | FULL GAME HIGHLIGHTS | April 9, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/yQKoMSvhLQU/hqdefault.jpg', '2023-04-09 21:57:23'),
(79, 1, 'https://www.youtube.com/watch?v=VBL-A9WbJ98', 'KINGS at NUGGETS | FULL GAME HIGHLIGHTS | April 9, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/VBL-A9WbJ98/hqdefault.jpg', '2023-04-09 21:56:20'),
(80, 1, 'https://www.youtube.com/watch?v=YHetF9RZUo0', '76ERS at NETS | FULL GAME HIGHLIGHTS | April 9, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/YHetF9RZUo0/hqdefault.jpg', '2023-04-09 19:33:11'),
(81, 1, 'https://www.youtube.com/watch?v=OVgyTgi2nGs', 'TEAM WORLD vs TEAM USA | 2023 Nike Hoop Summit | Full Game Highlights | April 8, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/OVgyTgi2nGs/hqdefault.jpg', '2023-04-09 04:49:15'),
(82, 1, 'https://www.youtube.com/watch?v=fQScheen21k', 'WARRIORS at KINGS | FULL GAME HIGHLIGHTS | April 7, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/fQScheen21k/hqdefault.jpg', '2023-04-08 04:35:26'),
(83, 1, 'https://www.youtube.com/watch?v=Xxgd0GJuPaE', 'KINGS at MAVERICKS | FULL GAME HIGHLIGHTS | April 5, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Xxgd0GJuPaE/hqdefault.jpg', '2023-04-06 03:02:22'),
(84, 1, 'https://www.youtube.com/watch?v=VRoD8HxsG5Y', 'THUNDER at WARRIORS | FULL GAME HIGHLIGHTS | April 4, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/VRoD8HxsG5Y/hqdefault.jpg', '2023-04-05 04:39:37'),
(85, 1, 'https://www.youtube.com/watch?v=koEjoTlnX8I', 'SPURS at SUNS | FULL GAME HIGHLIGHTS | April 4, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/koEjoTlnX8I/hqdefault.jpg', '2023-04-05 04:20:34'),
(86, 1, 'https://www.youtube.com/watch?v=S0Ch4VMhRH4', 'LAKERS at ROCKETS | FULL GAME HIGHLIGHTS | April 2, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/S0Ch4VMhRH4/hqdefault.jpg', '2023-04-03 01:25:51'),
(87, 1, 'https://www.youtube.com/watch?v=qrtPw15e4yw', 'LAKERS at TIMBERWOLVES | FULL GAME HIGHLIGHTS | March 31, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/qrtPw15e4yw/hqdefault.jpg', '2023-04-01 02:44:52'),
(88, 1, 'https://www.youtube.com/watch?v=tzy4WlqF3As', 'TIMBERWOLVES at SUNS | FULL GAME HIGHLIGHTS | March 29, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/tzy4WlqF3As/hqdefault.jpg', '2023-03-30 05:01:13'),
(89, 1, 'https://www.youtube.com/watch?v=NxwqNdwPeTM', 'NBA Top 10 Plays Of The Night | March 28, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/NxwqNdwPeTM/hqdefault.jpg', '2023-03-29 05:35:12'),
(90, 1, 'https://www.youtube.com/watch?v=kKRBy3G9J7g', 'PELICANS at WARRIORS | FULL GAME HIGHLIGHTS | March 28, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/kKRBy3G9J7g/hqdefault.jpg', '2023-03-29 04:55:53'),
(91, 1, 'https://www.youtube.com/watch?v=MWrZCVPvdAA', 'BULLS at CLIPPERS | FULL GAME HIGHLIGHTS | March 27, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/MWrZCVPvdAA/hqdefault.jpg', '2023-03-28 04:58:43'),
(92, 1, 'https://www.youtube.com/watch?v=eE1EeOI9Psk', 'TIMBERWOLVES at KINGS | FULL GAME HIGHLIGHTS | March 27, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/eE1EeOI9Psk/hqdefault.jpg', '2023-03-28 04:47:09'),
(93, 1, 'https://www.youtube.com/watch?v=cPx8es1PU9g', 'SUNS at JAZZ | FULL GAME HIGHLIGHTS | March 27, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/cPx8es1PU9g/hqdefault.jpg', '2023-03-28 03:29:03'),
(94, 1, 'https://www.youtube.com/watch?v=mWsQjxUG42k', 'MUST SEE Ending Final 1:58 Timberwolves vs Warriors! | March 26, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/mWsQjxUG42k/hqdefault.jpg', '2023-03-27 03:45:29'),
(95, 1, 'https://www.youtube.com/watch?v=gutGAo-V7Vs', 'TIMBERWOLVES at WARRIORS| FULL GAME HIGHLIGHTS | March 26, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/gutGAo-V7Vs/hqdefault.jpg', '2023-03-27 03:30:08'),
(96, 1, 'https://www.youtube.com/watch?v=rBzO5Kua6tM', 'BULLS at LAKERS | FULL GAME HIGHLIGHTS | March 26, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/rBzO5Kua6tM/hqdefault.jpg', '2023-03-26 22:03:48'),
(97, 1, 'https://www.youtube.com/watch?v=00hJrAUlk2g', 'BUCKS at NUGGETS | FULL GAME HIGHLIGHTS | March 25, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/00hJrAUlk2g/hqdefault.jpg', '2023-03-26 03:38:40'),
(98, 1, 'https://www.youtube.com/watch?v=_4wRBvR0i-k', 'BUCKS at JAZZ | FULL GAME HIGHLIGHTS | March 24, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/_4wRBvR0i-k/hqdefault.jpg', '2023-03-25 03:30:30'),
(99, 1, 'https://www.youtube.com/watch?v=mtVszUUSVYY', 'NBA Top 10 Plays Of The Night | March 23, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/mtVszUUSVYY/hqdefault.jpg', '2023-03-24 06:15:32'),
(100, 1, 'https://www.youtube.com/watch?v=MmXH4Man3fE', 'THUNDER at CLIPPERS | FULL GAME HIGHLIGHTS | March 23, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/MmXH4Man3fE/hqdefault.jpg', '2023-03-24 04:58:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
