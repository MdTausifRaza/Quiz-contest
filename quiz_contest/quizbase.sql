 

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;INSERT INTO `user` (`user_id`, `email`, `password`) VALUES
(1, 'user@user.com', 'admin');

 

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5e8d7c2068e70', '5e8d7c2069a0e'),
('5e8d7c206e12c', '5e8d7c206e969'),
('5e8d7c20720f7', '5e8d7c207363c'),
('5e8d7c207695b', '5e8d7c207723b'),
('5e8d7c207a49b', '5e8d7c207abaa');

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('support@enridise.in', '5e8d7ae090944', 15, 5, 4, 1, '2020-04-08 07:31:30'); CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5e8d7c2068e70', 'Rasmus Lerdorf', '5e8d7c2069a0e'),
('5e8d7c2068e70', 'Dennis Ritchie', '5e8d7c2069a14'),
('5e8d7c2068e70', 'Guido Van Rossum', '5e8d7c2069a15'),
('5e8d7c2068e70', 'David Cheriton', '5e8d7c2069a16'),
('5e8d7c206e12c', 'Internet Explorer', '5e8d7c206e95f'),
('5e8d7c206e12c', 'Mosaic', '5e8d7c206e964'),
('5e8d7c206e12c', 'Mozilla', '5e8d7c206e967'),
('5e8d7c206e12c', 'Nexus', '5e8d7c206e969'),
('5e8d7c20720f7', 'COBOL', '5e8d7c2073636'),
('5e8d7c20720f7', 'C Language', '5e8d7c207363a'),
('5e8d7c20720f7', 'Java', '5e8d7c207363c'),
('5e8d7c20720f7', 'Basic', '5e8d7c2073641'),
('5e8d7c207695b', 'Rabbit', '5e8d7c2077233'),
('5e8d7c207695b', 'Creeper Virus', '5e8d7c207723b'),
('5e8d7c207695b', 'Elk Cloner', '5e8d7c207723c'),
('5e8d7c207695b', 'SCA Virus', '5e8d7c207723d'),
('5e8d7c207a49b', '1972', '5e8d7c207aba5'),
('5e8d7c207a49b', '1975', '5e8d7c207abaa'),
('5e8d7c207a49b', '1980', '5e8d7c207abab'),
('5e8d7c207a49b', '1984', '5e8d7c207abb0');

 

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5e8d7ae090944', '5e8d7c2068e70', 'Who is known as the father of PHP?', 4, 1),
('5e8d7ae090944', '5e8d7c206e12c', 'Which one is the first web browser invented in 1990?', 4, 2),
('5e8d7ae090944', '5e8d7c20720f7', 'Which of the following programming language is used to create programs like applets?', 4, 3),
('5e8d7ae090944', '5e8d7c207695b', 'First computer virus is known as?', 4, 4),
('5e8d7ae090944', '5e8d7c207a49b', 'In which year,the Microsoft company was founded?', 4, 5); CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5e8d7ae090944', 'Php Quiz', 4, 1, 5, 10, 'PHP Quiz', '#php', '2020-04-08 07:18:56');



CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('support@user.in', 15, '2020-04-08 07:31:30');

 

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Md Tausif Raza', 'M', 'Lovely Professional University', 'ans@gmail.com', 7033034637, '827ccb0eea8a706c4c34a16891f84e7b'),
('Md Tausif Raza', 'M', 'Lovely Professional University', 'support@enridise.in', 7033034637, 'b0baee9d279d34fa1dfd71aadb908c3f');


ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

