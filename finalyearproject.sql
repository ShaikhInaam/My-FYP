-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2017 at 06:04 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalyearproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE `api` (
  `id` int(11) NOT NULL,
  `api_key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `companyaccount`
--

CREATE TABLE `companyaccount` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `qualification` text NOT NULL,
  `purpose` text NOT NULL,
  `email` text NOT NULL,
  `mobile_number` text NOT NULL,
  `address` text NOT NULL,
  `hackingexperience` text NOT NULL,
  `cnic` text NOT NULL,
  `current_position` text NOT NULL,
  `company_address` text NOT NULL,
  `company_number` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companyaccount`
--

INSERT INTO `companyaccount` (`id`, `fname`, `qualification`, `purpose`, `email`, `mobile_number`, `address`, `hackingexperience`, `cnic`, `current_position`, `company_address`, `company_number`, `password`) VALUES
(1, 'NIO1sHX4Xu0HPQmyg2iEcg==', '3l+K4hnJhY3G55z53p4giAOKzMKO00c+DNGa+qQAC/g=', 'pJXkJl4+8etFARPol1ac2g==', '3kxCFT/Tuu0gz7XgCHmdjEBQp8DYprps923DT0e+caY=', '03441802057', 'uvahn2XdqClG+pBMwVLj2Ng1HIuDCLHD0emhcjZdgEE=', 'TXcx89FUVpeCmUXukDUTJg==', '4330417751225', 'QAkpG4Q07XN95QwGWuzimA==', 'nd9TAwq8pdWGrwU6lQ5V+g==', 'fNgHed8ws7n8abCXmbPv1w==', 'oSnPLO1Wbu5/tckbCowHJQ==');

-- --------------------------------------------------------

--
-- Table structure for table `com_api`
--

CREATE TABLE `com_api` (
  `id` int(11) NOT NULL,
  `api_key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_api`
--

INSERT INTO `com_api` (`id`, `api_key`) VALUES
(1, '3kxCFT/Tuu0gz7XgCHmdjEBQp8DYprps923DT0e+caY=');

-- --------------------------------------------------------

--
-- Table structure for table `defence`
--

CREATE TABLE `defence` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `java` text NOT NULL,
  `php` text NOT NULL,
  `python` text NOT NULL,
  `dotnet` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `defence`
--

INSERT INTO `defence` (`id`, `name`, `java`, `php`, `python`, `dotnet`) VALUES
(1, 'sqlinjection', 'Use of Prepared Statements (Parameterized Queries)%22Use of Stored Procedures%22Escaping all User Supplied Input%22Least Privilege%22White List Input Validation%22https://www.owasp.org/index.php/SQL_Injection_Prevention_Cheat_Sheet', 'Never connect to the database as a superuser or as the database owner. Use always customized users with very limited privileges%22Use prepared statements with bound variables. They are provided by PDO, by MySQLi and by other libraries%22Check if the given input has the expected data type. PHP has a wide range of input validating functions, from the simplest ones found in Variable Functions and in Character Type Functions (e.g. is_numeric(), ctype_digit() respectively) and onwards to the Perl compatible Regular Expressions support%22If the application waits for numerical input, consider verifying data with ctype_digit(), or silently change its type using settype(), or use its numeric representation by sprintf().%22If the database layer doesn''t support binding variables then quote each non numeric user supplied value that is passed to the database with the database-specific string escape function (e.g. mysql_real_escape_string(), sqlite_escape_string(), etc.). Generic functions like addslashes() are useful only in a very specific environment (e.g. MySQL in a single-byte character set with disabled NO_BACKSLASH_ESCAPES) so it is better to avoid them%22Do not print out any database specific information, especially about the schema, by fair means or foul. See also Error Reporting and Error Handling and Logging Functions%22You may use stored procedures and previously defined cursors to abstract data access so that users do not directly access tables or views, but this solution has another impacts%22http://php.net/manual/en/security.database.sql-injection.php', 'Escape User Input%22White Lists%22Stored Procs%22Parameterized Quries%22http://www.slideshare.net/openpbs/sql-injection-defense-in-python', 'Constrain input%22Use parameters with stored procedures%22Use parameters with dynamic SQL%22https://msdn.microsoft.com/en-us/library/ff648339.aspx'),
(2, 'xss', '', 'Use Content-Security-Policy headers and HTTPS-only cookies.%22Your first line of defense against XSS attacks should be filtering any tainted information before inserting them in the DOM not before storing it in a database.%22If you can avoid accepting actual HTML by opting for Markdown, etc. then don''t accept HTML.%22If you''re using a templating engine such as Twig, use {% autoescape %} directives and |e filters where appropriate. {% autoescape %} should be prioritized over escaping every variable.%22If you''re not using a templating engine and need to safely render user-provided HTML, use HTML Purifier. Feel free to leverage caching for optimization, but keep an intact copy on-hand.%22Otherwise, use noHTML() and leave nothing to chance.%22https://paragonie.com/blog/2015/06/preventing-xss-vulnerabilities-in-php-everything-you-need-know', 'Allow HTML within Markdown content (this is how Markdown originally/officially works, but if treated naïvely, this can invite XSS attacks).%22Just treat any HTML as plain text, essentially letting your Markdown processor escape the user’s input. Thus <small>…</small> in input will not create small text but rather the literal text “<small>…</small>”.%22Throw out all HTML tags within Markdown. This is pretty user-hostile and may choke on text like <3 depending on implementation.%22http://stackoverflow.com/questions/5266134/best-practice-for-allowing-markdown-in-python-while-preventing-xss-attacks', 'Validating all external input to your application before displaying on a webpage.%22Use Request Validation everywhere that your application doesn''t specifically need to turn it off, such as a form allowing rich HTML input. If you must allow unvalidated information, leave validation on everywhere else in your application.%22Encode HTML before displaying external data on a webpage%22Use the AntiXSS based methods included in ASP.NET 4.5 and use the AntiXSS library for older versions of ASP.NET.%22https://code.tutsplus.com/tutorials/preventing-xss-in-aspnet--cms-21801'),
(3, 'bufferoverflow', 'Since Java Strings are based on char arrays and Java automatically checks array bounds, buffer overflows are only possible in unusual scenarios:%22If you call native code via JNI%22In the JVM itself (usually written in C++)%22The interpreter or JIT compiler does not work correctly (Java bytecode mandated bounds checks)%22http://stackoverflow.com/questions/479701/does-java-have-buffer-overflows', 'Verify that we’re running the latest stable version of the operating system, PHP,\r\nand database.%22Add length checks to all data coming into the application.\r\nOn average, this should take a couple of hours of time—not a bad investment to\r\nprevent one of the most vicious types of attacks.%22Buffer overflows do not exist in interpreted languages, but they may exist in the language parser itself (i.e. PHP). PHP is written in C, your PHP applications are written in PHP. Thus, your PHP applications are safe from buffer overflows, but PHP is not.%22https://www.sitepoint.com/community/t/is-php-vulnerable-to-buffer-oveflow/66692', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `individualaccount`
--

CREATE TABLE `individualaccount` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `cnic` text NOT NULL,
  `qualification` text NOT NULL,
  `purpose` text NOT NULL,
  `email` text NOT NULL,
  `mobile` text NOT NULL,
  `address` text NOT NULL,
  `hackingexperience` text NOT NULL,
  `current_edu` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `URL` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`URL`) VALUES
('http://www.hamariweb.com'),
('http://www.xnxx.com'),
('http://mitsoftsolution.net/'),
('http://mitsoftsolution.net/admission_form.php'),
('http://dynamicsolutions.edu.pk/home.html'),
('http://dynamicsolutions.edu.pk/faculties.html'),
('http://dynamicsolutions.edu.pk/stories.html'),
('http://dynamicsolutions.edu.pk/eventsgallery.html'),
('http://dynamicsolutions.edu.pk/aboutus.html'),
('http://dynamicsolutions.edu.pk/contact.html'),
('http://dynamicsolutions.edu.pk/course.html'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=51'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=51'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=51'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=52'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=52'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=52'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=53'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=53'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=53'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=54'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=54'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=54'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=55'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=55'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=55'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=35'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=35'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=35'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=71'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=71'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=71'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=43'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=43'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=43'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=44'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=44'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=44'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=56'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=56'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=56'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=57'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=57'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=57'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=69'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=69'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=69'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=70'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=70'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=70'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=72'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=72'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=72'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=73'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=73'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=73'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=37'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=37'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=37'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=61'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=61'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=61'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=62'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=62'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=62'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=63'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=63'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=63'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=64'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=64'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=64'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=65'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=65'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=65'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=66'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=66'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=66'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=67'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=67'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=67'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=58'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=58'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=58'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=59'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=59'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=59'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=60'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=60'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=60'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=74'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=74'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=74'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=75'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=75'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=75'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=76'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=76'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=76'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=77'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=77'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=77'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=78'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=78'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=78'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=45'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=45'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=45'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=46'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=46'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=46'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=47'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=47'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=47'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=48'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=48'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=48'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=49'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=49'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=49'),
('http://dynamicsolutions.edu.pk/course/outline.html?id=50'),
('http://dynamicsolutions.edu.pk/course/fees.html?id=50'),
('http://dynamicsolutions.edu.pk/contact/enroll.html?id=50'),
('http://dynamicsolutions.edu.pk/course/viewcourses.html?id=1'),
('http://dynamicsolutions.edu.pk/course/viewcourses.html?id=2'),
('http://dynamicsolutions.edu.pk/course/viewcourses.html?id=3'),
('http://dynamicsolutions.edu.pk/course/viewcourses.html?id=4'),
('http://dynamicsolutions.edu.pk/course/viewcourses.html?id=5'),
('http://dynamicsolutions.edu.pk/course/viewcourses.html?id=6'),
('http://dynamicsolutions.edu.pk/course/viewcourses.html?id=7'),
('http://dynamicsolutions.edu.pk/course/viewcourses.html?id=8'),
('http://www.yahoo.com'),
('https://www.yahoo.com/'),
('https://mail.yahoo.com/'),
('https://m.yahoo.com/w/global?.intl=us&.lang=en-US'),
('https://answers.yahoo.com/'),
('https://mlogin.yahoo.com/?.src=knowsrch&.done=https%3A%2F%2Fanswers.yahoo.com%2F'),
('https://m.yahoo.com/w/global?.intl=pk&.lang=en-PK'),
('http://www.world4ufree.cc'),
('http://www.rozee.pk'),
('http://www.jamali4u.com'),
('http://www.google.com'),
('http://www.gexton.com'),
('http://gexton.com/get-quote-now'),
('https://www.fiverr.com/'),
('https://www.fiverr.com/join'),
('https://www.fiverr.com/login'),
('https://www.fiverr.com/join?ref=start_selling');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companyaccount`
--
ALTER TABLE `companyaccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `com_api`
--
ALTER TABLE `com_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `defence`
--
ALTER TABLE `defence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `individualaccount`
--
ALTER TABLE `individualaccount`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api`
--
ALTER TABLE `api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `companyaccount`
--
ALTER TABLE `companyaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `com_api`
--
ALTER TABLE `com_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `defence`
--
ALTER TABLE `defence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `individualaccount`
--
ALTER TABLE `individualaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
