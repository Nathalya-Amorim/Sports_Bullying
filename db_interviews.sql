-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 20, 2023 at 03:43 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_interviews`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contacts`
--

CREATE TABLE `tbl_contacts` (
  `id` int(10) NOT NULL,
  `con_name` varchar(150) NOT NULL,
  `con_email` varchar(150) NOT NULL,
  `con_message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_contacts`
--

INSERT INTO `tbl_contacts` (`id`, `con_name`, `con_email`, `con_message`) VALUES
(4, 'Rodrigo', 'nathalyamorim87@gmail.com', 'asdasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_interviews`
--

CREATE TABLE `tbl_interviews` (
  `id` int(10) NOT NULL,
  `int_name` varchar(100) NOT NULL,
  `int_description` varchar(600) NOT NULL,
  `int_date` varchar(100) NOT NULL,
  `int_image` varchar(250) NOT NULL,
  `int_hero` varchar(250) NOT NULL,
  `int_quote` varchar(400) NOT NULL,
  `int_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_interviews`
--

INSERT INTO `tbl_interviews` (`id`, `int_name`, `int_description`, `int_date`, `int_image`, `int_hero`, `int_quote`, `int_enabled`) VALUES
(1, 'Camila Dubera', 'Matha Dubera and Adria Masague bravely spoke out about their daughter\'s bullying and discrimination experiences for being a girl in Hockey; Camila is a 6-year-old girl who discovered her love for hockey after visiting a Canadian friend\'s house.\r\nShe picked up a stick and began to practice, quickly falling in love with the game. \r\n', 'Jan 24th, 2023', 'camila-profile-710x837.jpg', 'camila-hero-image-1440x890.jpg', 'Dubai has a good social climate for ice hockey but everything changes after the age of 14 due to the maturity of the sport in the country.', 1),
(2, 'Sabrina Triantafillou ', 'Jimmy Triantafillou a former hockey player, spoke about Sabrina Trintafillou, his daughter, who shared her experiences as a hockey player and provided a unique perspective on many young athletes\' challenges. His insights shed light on the importance of promoting a safe and supportive environment for all players. Jimmy offered valuable advice and insights to parents, coaches, and players on tackling the issue of bullying in the hockey community.', 'Feb. 10th, 2023', 'sabrina-profile-710x837.jpg', 'sabrina-hero-image-1440-890.jpg', 'I encourage my daughter every day. However, sometimes female players\' families don\'t take it very seriously because males have a better future in Hockey in terms of the economy.', 1),
(3, 'Hillary Brennan', 'Hillary Brennan, a referee in the American Hockey League and Ontario Hockey League, spoke passionately about the issue of bullying against women during our interview. Her commitment to creating a safe and inclusive environment for women in the hockey community was clear. She shared insights into how the sport can work towards eliminating harmful behaviours and promoting respect and kindness among players and fans alike.', 'Jan. 27th, 2023', 'hillary-profile-710x837.jpg', 'hillary-hero-image-1440x890.jpg', 'Women need to have two works, hockey and other, which is a considerable gap financially. But finding new consumers of women\'s Hockey is the solution.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qas`
--

CREATE TABLE `tbl_qas` (
  `id` int(10) NOT NULL,
  `qas_question` varchar(250) NOT NULL,
  `qas_answer` varchar(500) NOT NULL,
  `qas_id_interview` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_qas`
--

INSERT INTO `tbl_qas` (`id`, `qas_question`, `qas_answer`, `qas_id_interview`) VALUES
(1, 'How did Camila start in hockey? ', 'After 13 years of living in Dubai, we have some friends from Canada, we decided to accept one invitation to their house, and my daughter was invited to play hockey; she loved it and this is how this journey started.', 1),
(2, 'What do you think of the participation of women in hockey?', 'Women\'s hockey is guaranteed up to a certain age and we have observed progress in the professionalization of women\'s sport. However, women\'s hockey in children must be strengthened and more media presence must be called for. Dubai has a good social climate for ice hockey but everything changes after the age of 14 due to the maturity of the sport in the country.', 1),
(3, 'Why did Sabrina choose this sport over others?', 'It was not too many sports to choose from, hockey was popular on tv, but she also had a significant influence on all her friends. They watched games together, and she liked it.', 2),
(4, 'In family terms, how important is hockey?', 'Hockey means family,  the team is a family, and this is our family sport of choice. They are brothers, this team is a family, and it teaches you to feel safe and how to react in different situations.', 2),
(6, 'How do you feel bullying appears in Hockey?', 'Hockey is a great environment to be part of it, the engagement is fantastic, however, it is important to know how you want to manage emotions at the rink. After covid feelings grow, and sometimes people go to the rink and leverage their emotions out there. However, it is where bad behaviors could start and we know It is something we need to work on.', 3),
(7, 'Have you experienced bullying, violence, or disrespect at Hockey?', 'No, the sport in Dubai is too healthy.', 1),
(8, 'What drew your attention to this sport over others?', 'Camila started with soccer, but she did not like it so much; I thought it was more aggressive, it started with soccer for convenience, but I had not found a passion.\r\n', 1),
(10, 'Are there prejudices against hockey?', 'There is all kind of bias; Hispanics demonstrates a lot of bias against North Americans based on the genre of Hockey. Sometimes, they think those who don’t speak English know anything about hockey. ', 1),
(11, 'What do you think are the mechanisms to avoid bullying when playing hockey?', 'In Dubai, it is not applied due to the rules of the country, they are strong rules and there are no episodes of violence; they are only complaints from parents because they do not let children play anymore Dubai is different because of the country\'s rules.\r\n', 1),
(12, 'What do you think of the participation of women in hockey?\r\n', 'As a father, Hockey is guaranteed up to a certain age; there is progress in professionalizing women\'s sports. However, guaranteeing women in hockey requires more media presence.\r\n', 1),
(21, 'How do you feel about Hockey in relation to bullying?', 'it is a great environment to be part of it; the engagement is all fantastic. However, it is important to know how you want to manage emotions. After covid, the feelings grow. And sometimes, people go to the rink and leverage the emotions out there. However, it is where bad behaviours could start and we know It is something we need to work on.', 3),
(22, 'What is Bullying for you?', 'A form of oppression that makes someone feel lower than you.  It could be physical, mental, or even Social Media.', 3),
(23, 'What is your perception in terms of bullying at Hockey?', 'Girls are more respectful. Girls use more verbal aggression than men, but men are more Physical contact. I have been treated very well by the players and coaches but the audience has more pressure on me.', 3),
(24, 'What are the main challenges for women’s hockey? ', 'We are the fastest-growing sport in Canada right now. We need to create a good environment; we are working together. We want to be looked at as equals. The opportunities for women in Hockey have been growing too much; it is not closer to where the guys are. There are some new leagues. Women need to have two works (hockey - and other), and financially it is a huge gap. Being a consumer of Hockey women is the solution. It does not have the same hitting as males.', 3),
(25, 'In family terms, how important is hockey?', 'Hockey has become my life; it is something I love; I did everything about hockey. Travelling about hockey. It is mine forever. It is all my family. 5 hours away from here. Aside from the bullying, it is a nice environment. Every single day is what I think about.', 3),
(26, 'Do you think there is violence in hockey?', 'Any sport comes with safety concerns. The game’s speed makes everything riskier; you must learn to hit properly. That’s why referees are on the ice. Player safety is our priority. ', 3),
(27, 'What do you think of the participation of women in hockey?', 'I think is fine, I encourage Sabrina every day, and I coach her and share with her all my knowledge. But, sometimes, female families don\'t take the sport very seriously. They don’t want to invest or support enough girls to play. If your daughter is playing, you have to be consistent and help and support her.', 2),
(28, 'What strategies should be applied to avoid bullying in hockey?', 'It is the same bullying as in other areas of life. My best advice is to pick the right couch, which could be the difference. If the coach works well, if he or she is concerned about your daughter\'s future and her performance, nothing wrong could happen.', 2),
(29, 'Have you seen disrespectful attitudes or bullying in this sport?', 'It was worst before; now, it is not acceptable. The coach is the mentor and creates the environment. They really care about the kids if this is the case.\r\n', 2),
(30, 'Do you think there is violence in hockey?', 'It was worst before; when I started playing hockey maybe 20 years ago, the practice was more aggressive. Now the sport is designed to protect people, now is different and more controlled. Young kids are more sensitive, and the kids are protected. Even girls and women have different regulations that let them play the game without high risks.\r\n', 2),
(31, 'Is there any other mechanism to avoid bullying that you currently know? ', 'If something happens, depending on the level, if I  can talk with the other kid’s parents and solve the problem, that’s ok. But there are different levels; if parents can do nothing, they must be reported. If it affects the kid\'s mental health, it should be reported. ', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_contacts`
--
ALTER TABLE `tbl_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_interviews`
--
ALTER TABLE `tbl_interviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_qas`
--
ALTER TABLE `tbl_qas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_qas_id_interview` (`qas_id_interview`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_contacts`
--
ALTER TABLE `tbl_contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_interviews`
--
ALTER TABLE `tbl_interviews`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_qas`
--
ALTER TABLE `tbl_qas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_qas`
--
ALTER TABLE `tbl_qas`
  ADD CONSTRAINT `fk_qas_id_interview` FOREIGN KEY (`qas_id_interview`) REFERENCES `tbl_interviews` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
