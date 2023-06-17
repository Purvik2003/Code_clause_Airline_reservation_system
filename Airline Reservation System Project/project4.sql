create database project4;

use project4;
-------------------------------------------------

Table structure for table `cancellation`
--

CREATE TABLE `cancellation` (
  `pnr_no` varchar(30) NOT NULL,
  `cancellation_no` varchar(30) NOT NULL,
  `cancellation_date` varchar(30) NOT NULL,
  `fli_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `cancellation` (`pnr_no`, `cancellation_no`, `cancellation_date`, `fli_code`) VALUES
('2', '1005', '22-05-05', 'f1005');

select * from cancellation;
-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `f_code` varchar(30) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `src` varchar(30) NOT NULL,
  `dst` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--
INSERT INTO `flight` (`f_code`, `f_name`, `src`, `dst`) VALUES
('f1003', 'flight 1001', 'Australia', 'United States');
select * from flight;
-- --------------------------------------------------------
delete f_code from flight where f_code=f1005;
update flight set 
--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--
select * from passenger;
CREATE TABLE `passenger` (
  `pnr_no` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `ph_no` varchar(30) NOT NULL,
  `passport_no` varchar(30) NOT NULL,
  `fl_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`pnr_no`, `address`, `nationality`, `name`, `gender`, `ph_no`, `passport_no`, `fl_code`) VALUES
('2000', 'Negros Occidental, Philippines', 'Filipino', '', 'male', '09272777334', 'SAR081119', 'f1005');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pnr_no` varchar(30) NOT NULL,
  `ph_no` varchar(30) NOT NULL,
  `cheque_no` varchar(30) NOT NULL,
  `card_no` varchar(30) NOT NULL,
  `paid_amt` varchar(30) NOT NULL,
  `pay_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pnr_no`, `ph_no`, `cheque_no`, `card_no`, `paid_amt`, `pay_date`) VALUES
('9', '7654606488', '1002', '162-401', '1070', '2023-1-22');
select * from payment;
-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `pnr_no` varchar(30) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `f_code` varchar(30) NOT NULL,
  `jny_date` varchar(30) NOT NULL,
  `jny_time` varchar(30) NOT NULL,
  `src` varchar(30) NOT NULL,
  `dst` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--
select * from reservation;
INSERT INTO `reservation` (`pnr_no`, `ticket_id`, `f_code`, `jny_date`, `jny_time`, `src`, `dst`) VALUES
('12', '101', 'f1004', '2022-05-05', '3:00 PM', 'Australia', 'Russia');
select * from reservation;
-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `flight_code` varchar(30) NOT NULL,
  `capacity` varchar(30) NOT NULL,
  `class_code` varchar(30) NOT NULL,
  `class_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`flight_code`, `capacity`, `class_code`, `class_name`) VALUES
('f1004', '1000', 'A', 'FIRST CLASS'),
('f1004', '700', 'B', 'BUSINESS CLASS'),
('f1004', '500', 'C', 'ECONOMY');

select * from sector;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
select * from pasenger;
select * from project4;
select * from sector;