--
-- Database: `newsblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `EintragsID` int(11) NOT NULL,
  `Autor` varchar(50) NOT NULL,
  `Ueberschrift` varchar(100) NOT NULL,
  `Datum` varchar(10) NOT NULL,
  `Inhalt` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`EintragsID`, `Autor`, `Ueberschrift`, `Datum`, `Inhalt`) VALUES
(1, 'sdvx', 'fcnbv ', '45', 'xdfcb vfxcgvb '),
(2, 'test', 'Tilte33', '21.3.2016', 'dies ist mein erter Titel, die BenutzerfÃ¼hrung muss noch verbessert werden!!');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Vorname` varchar(50) NOT NULL,
  `Nachname` varchar(50) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Passwort` varchar(255) NOT NULL,
  `Status` int(2) NOT NULL,
  `session_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Vorname`, `Nachname`, `Email`, `Passwort`, `Status`, `session_ID`) VALUES
(2, 'Fabian', 'Schick', 'info@fabian-schick.de', '7c222fb2927d828af22f592134e8932480637c0d', 1, ''),
(3, 'Jan', 'Tank', 'info@Jan-Tank.de', '12345678', 1, ''),
(4, 'Maurice', 'Beck', 'info@Maurice-Beck.de', '12345678', 1, ''),
(5, 'Jan', 'Meier', 'info@Jan-Meier.de', '12345678', 1, ''),
(6, 'Jens', 'Meier', 'info@Jens-Meier.de', '12345678', 1, ''),
(7, 'Thorsten', 'Groß', 'info@Thorsten-Groß.de', '12345678', 1, ''),
(8, 'Thomas', 'Groß', 'info@Thomas-Groß.de', '12345678', 1, ''),
(9, 'Jan', 'Groß', 'info@Jan-Groß.de', '12345678', 1, ''),
(10, 'Maurice', 'Meier', 'info@Maurice-Meier.de', '12345678', 1, ''),
(11, 'Maurice', 'Beck', 'info@Maurice-Beck.de', '12345678', 1, ''),
(12, 'Thorsten', 'Beck', 'info@Thorsten-Beck.de', '12345678', 1, ''),
(13, 'Thorsten', 'Schmidt', 'info@Thorsten-Schmidt.de', '12345678', 1, ''),
(14, 'Thorsten', 'Groß', 'info@Thorsten-Groß.de', '12345678', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`EintragsID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `EintragsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
