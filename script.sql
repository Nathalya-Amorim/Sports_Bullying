CREATE TABLE `tbl_interviews` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `int_name` varchar(100) NOT NULL,
  `int_description` varchar(400) NOT NULL,
  `int_date` varchar(100) NOT NULL,
  `int_image` varchar(250) NOT NULL,
  `int_hero` varchar(250) NOT NULL,
  `int_quote` varchar(400) NOT NULL,
  `int_enabled` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tbl_qas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `qas_question` varchar(50) NOT NULL,
  `qas_answer` varchar(250) NOT NULL,
  `qas_id_interview` int(10) NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_qas_id_interview
    FOREIGN KEY (qas_id_interview)
    REFERENCES tbl_interviews (id)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tbl_contacts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `con_name` varchar(150) NOT NULL,
  `con_email` varchar(150) NOT NULL,
  `con_message` varchar(1000) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tbl_interviews`(`id`,`int_name`, `int_description`, `int_date`, `int_image`, `int_enabled`) 
VALUES (1,
    'Camila Massaguer',
    '(This interview was conducted with Camila and her parents) Camila started to play Hockey because she knows this sport after a visit to a Canadian friend''s house.',
    'Jan 1st, 2023',
    'camila-profile-710x837.jpg',
    'camila-hero-image-1440x890.jpg',
    '',
    1);

INSERT INTO `tbl_qas`(`qas_question`, `qas_answer`, `qas_id_interview`) 
VALUES (
    'Have you experienced bullying, violence, or disrespect at Hockey?',
    'No, the sport in Dubai is too healthy',
    1);

INSERT INTO `tbl_qas`(`qas_question`, `qas_answer`, `qas_id_interview`) 
VALUES (
    'What do you think of the participation of women in hockey?',
    'Women''s hockey is guaranteed up to a certain age and we have observed progress in the professionalization of women''s sport. However, women''s hockey in children must be strengthened and more media presence must be called for. Dubai has a good social climate for ice hockey but everything changes after the age of 14 due to the maturity of the sport in the country.',
    1);

INSERT INTO `tbl_interviews`(`id`,`int_name`, `int_description`, `int_date`, `int_image`, `int_enabled`) 
VALUES (2,
    'Sabrina Triantafollou',
    'This interview was conducted with Sabrina and her Father, an ex-Hockey Player.',
    'Jan 1st, 2023',
    'sabrina-profile-710x837.jpg',
    'sabrina-hero-image-1440-890.png',
    '',
    1);

INSERT INTO `tbl_qas`(`qas_question`, `qas_answer`, `qas_id_interview`) 
VALUES (
    'What is your perception of bullying in Hockey?',
    'It is important to understand how it starts. This is a sport that request a high level for some people if there is not the same commitment from players, problems could start.',
    2);

INSERT INTO `tbl_qas`(`qas_question`, `qas_answer`, `qas_id_interview`) 
VALUES (
    'What is your perception of women in Hockey?',
    'Female is most accepted now but Female Hockey doesn`t earn too much in comparison with males. it makes the Career shorter for women. I encourage my daughter every day. However, sometimes female players'' families don''t take it very seriously because males have a better future in Hockey in terms of the economy. The sport for women needs to continue improving.',
    2);    

INSERT INTO `tbl_interviews`(`id`,`int_name`, `int_description`, `int_date`, `int_image`, `int_enabled`) 
VALUES (3,
    'Hillary Brennan',
    'She is 23 years old and she is working in the AHL and Ontario Hockey League (OHL) this season.',
    'Jan 1st, 2023',
    'hillary-profile-710x837.jpg',
    'hillary-hero-image-1440x890.jpg',
    '',
    1);

INSERT INTO `tbl_qas`(`qas_question`, `qas_answer`, `qas_id_interview`) 
VALUES (
    'What are the main challenges for women''s hockey?',
    'We are the fastest-growing sport in Canada right now but we need to create a good environment for being looked at as equals. The opportunities for women in Hockey have been growing, but it is not closer to where the guys are. Unfortunately, women need to have two works (hockey - and other), which is a considerable gap financially. but finding new consumers of Hockey women is the solution.',
    3);

INSERT INTO `tbl_qas`(`qas_question`, `qas_answer`, `qas_id_interview`) 
VALUES (
    'How do you feel bullying appears in Hockey?',
    'Hockey is a great environment to be part of it, the engagement is fantastic, however, it is important to know how you want to manage emotions at the rink. After covid feelings grow, and sometimes people go to the rink and leverage their emotions out there. However, it is where bad behaviors could start and we know It is something we need to work on.',
    3);