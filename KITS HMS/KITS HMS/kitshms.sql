-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2023 at 05:56 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iiitdmkhms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `admission_id` int(10) NOT NULL,
  `hostellerid` int(10) NOT NULL,
  `room_id` int(10) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `food_type` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`admission_id`, `hostellerid`, `room_id`, `start_date`, `end_date`, `food_type`, `status`) VALUES
(1, 3, 1, '2022-12-01', '2023-12-01', 'Veg', 'Pending'),
(2, 3, 1, '2022-12-01', '2023-12-01', 'Nonveg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendanceid` int(10) NOT NULL,
  `admission_id` int(10) NOT NULL,
  `attdate` date NOT NULL,
  `attendancestatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billid` int(10) NOT NULL,
  `admission_id` int(10) NOT NULL,
  `guestid` int(10) NOT NULL,
  `bill_type` varchar(50) NOT NULL COMMENT 'Hostel Fees, Mess Bill, Water Electricity bill(Generates on blockwise), Mess Bill Penalty, Hostel Fees Payment, Mess Bill Payment, Water Electricity bill Payment, Mess Bill Penalty Payment, Guest Payment, Maintanance Charge, Maintanance Charge payment,',
  `paid_amt` double(10,2) NOT NULL,
  `paid_date` date NOT NULL,
  `payment_type` varchar(25) NOT NULL,
  `particulars` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billid`, `admission_id`, `guestid`, `bill_type`, `paid_amt`, `paid_date`, `payment_type`, `particulars`, `status`) VALUES
(1, 0, 2, 'Guest Payment', 0.00, '0000-00-00', '', 'a:5:{i:0;s:10:"2022-12-01";i:1;s:10:"2022-12-03";i:2;d:3;i:3;s:8:"workshop";i:4;s:4:"good";}', 'Pending'),
(2, 2, 0, 'Hostel Fees Payment', 1000.00, '2022-12-01', 'Debit card', 'Card Holder: obul <br> Card number: 3241576321112345 <br> CVV Number: 123 <br> Expiry Date: ', 'Active'),
(3, 0, 1, 'Guest Payment', 0.00, '0000-00-00', '', 'a:5:{i:0;s:10:"2022-12-01";i:1;s:10:"2022-12-30";i:2;d:30;i:3;s:3:"xyz";i:4;s:3:"xyz";}', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `block_id` int(10) NOT NULL,
  `block_name` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`block_id`, `block_name`, `description`, `status`) VALUES
(1, 'KALAM HALL OF RESIDENCE', 'KALAM HALL OF RESIDENCE', 'Active'),
(2, 'KALPANA CHAWLA HALL OF RE', 'KALPANA CHAWLA HALL OF RESIDENCE', 'Active'),
(3, 'SRH HALL OF RESIDENCE', 'SRH HALL OF RESIDENCE', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `complaint_id` int(10) NOT NULL,
  `hostellerid` int(10) NOT NULL,
  `complaintdttime` datetime NOT NULL,
  `complaintsubject` varchar(150) NOT NULL,
  `complaintmessage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`complaint_id`, `hostellerid`, `complaintdttime`, `complaintsubject`, `complaintmessage`) VALUES
(1, 3, '2022-12-01 14:24:21', 'Internet', ''),
(2, 3, '2022-12-01 14:24:39', 'Internet', ''),
(3, 3, '2022-12-01 14:24:49', 'Internet', ''),
(4, 3, '2022-12-01 14:25:24', 'Internet', ''),
(8, 3, '2022-12-01 14:35:14', 'Internet', ''),
(9, 3, '2022-12-01 14:40:23', 'Internet', ''),
(10, 3, '2022-12-01 15:39:52', 'water ', 'water problem');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(10) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `login_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `emp_type` varchar(20) NOT NULL COMMENT 'Admin, Accountant, Warden',
  `gender` varchar(10) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `login_id`, `password`, `emp_type`, `gender`, `designation`, `status`) VALUES
(12, 'Admin', 'admin', 'admin', 'Admin', 'Male', 'Administrator', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventid` int(10) NOT NULL,
  `event_title` varchar(250) NOT NULL,
  `event_banner` text NOT NULL,
  `event_description` text NOT NULL,
  `event_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventid`, `event_title`, `event_banner`, `event_description`, `event_date`, `status`) VALUES
(1048, 'IIITK Sports, Cultural and Technical fests', 'a:1:{i:0;s:11:"32209f2.png";}', ' IIITDMK participated with full enthusiasm and put up a phenomenal performance during the Kanchipuram  Zonal and States Sports Fests and bagged many awards.', '2022-11-13', 'Published'),
(1052, 'Cultural', 'a:1:{i:0;s:11:"17519f3.png";}', 'Cultural Team', '2022-11-13', 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `fee_id` int(10) NOT NULL,
  `admission_id` int(10) NOT NULL,
  `fee_str_id` int(10) NOT NULL,
  `total_fees` double(10,2) NOT NULL,
  `invoice_date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`fee_id`, `admission_id`, `fee_str_id`, `total_fees`, `invoice_date`, `status`) VALUES
(1, 1, 29, 1000.00, '2022-12-01', 'Pending'),
(2, 2, 29, 1000.00, '2022-12-01', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `fees_structure`
--

CREATE TABLE `fees_structure` (
  `fee_str_id` int(10) NOT NULL,
  `block_id` int(10) NOT NULL,
  `hostellertype` varchar(15) NOT NULL COMMENT 'Employee and Student',
  `room_type` varchar(25) NOT NULL COMMENT 'Single, Double, Thriple',
  `cost` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees_structure`
--

INSERT INTO `fees_structure` (`fee_str_id`, `block_id`, `hostellertype`, `room_type`, `cost`, `status`) VALUES
(28, 0, 'Guest', '', 1000.00, 'Active'),
(29, 1, 'Student', 'Single Occupancy', 1000.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_type`
--

CREATE TABLE `gallery_type` (
  `gallery_type_id` int(11) NOT NULL,
  `gallery_type` varchar(200) NOT NULL,
  `gallery_type_description` text NOT NULL,
  `gallery_type_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery_type`
--

INSERT INTO `gallery_type` (`gallery_type_id`, `gallery_type`, `gallery_type_description`, `gallery_type_status`) VALUES
(1, 'Mens Hostel', 'Mens Hostel Images rec', 'Active'),
(3, 'Womens hostel', 'Womens hostel', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guestid` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `visitreason` varchar(100) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guestid`, `name`, `visitreason`, `emailid`, `password`, `contactno`, `comment`, `fromdate`, `todate`, `status`) VALUES
(1, 'vijay', 'xyz', 'vijay123@gmail.com', 'vijay@123', '9922334455', 'xyz', '2022-12-01', '2022-12-30', 'Active'),
(2, 'king', 'workshop', 'king@gmail.com', 'king@123', '9944156541', 'good', '2022-12-01', '2022-12-03', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `hosteller`
--

CREATE TABLE `hosteller` (
  `hostellerid` int(10) NOT NULL,
  `hostellertype` varchar(15) NOT NULL COMMENT 'Student, Employee, Others',
  `name` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `mother_name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hosteller`
--

INSERT INTO `hosteller` (`hostellerid`, `hostellertype`, `name`, `emailid`, `password`, `dob`, `father_name`, `mother_name`, `address`, `contact_no`, `status`) VALUES
(1, 'Student', 'obul', 'kumardilk9@gmail.com', 'Dilk@143', '2000-01-02', 'Obulesu', 'Sukanaya', 'kadapa', '9014547711', 'Active'),
(2, 'Student', 'santi', 'santi9@gmail.com', 'santi@123', '2001-01-01', 'sangeeti rao', 'malliesware', 'vijayawada', '9492404096', 'Active'),
(3, 'Student', 'student', 'student@gmail.com', 'student', '2022-12-01', 'student', 'student', 'student address', '7659827159', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `leave_application`
--

CREATE TABLE `leave_application` (
  `leave_application_id` bigint(20) NOT NULL,
  `hostellerid` bigint(20) NOT NULL,
  `application_dt` date NOT NULL,
  `from_dt` date NOT NULL,
  `to_dt` date NOT NULL,
  `leave_reason` text NOT NULL,
  `person_visiting` text NOT NULL,
  `guardian` text NOT NULL,
  `warden_remark` text NOT NULL,
  `cheif_warden_remark` text NOT NULL,
  `leave_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_application`
--

INSERT INTO `leave_application` (`leave_application_id`, `hostellerid`, `application_dt`, `from_dt`, `to_dt`, `leave_reason`, `person_visiting`, `guardian`, `warden_remark`, `cheif_warden_remark`, `leave_status`) VALUES
(1, 3265, '2021-04-08', '2021-04-14', '2021-04-23', 'This is new application', 'raj', 'kiran', '', '', 'Pending'),
(2, 3266, '2021-04-10', '2021-04-10', '2021-04-11', 'For Sisters marriage', 'Dad comes to pick', 'Rajendra', 'This is test record', 'This is remark records', 'Approved'),
(3, 3269, '2022-11-13', '2022-11-14', '2022-11-14', 'workshop', 'Obul', 'ashok ', '', '', 'Pending'),
(4, 1, '2022-11-30', '2022-11-30', '2022-11-30', 'Workshop', 'Dilk', 'ashok ', '', '', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `mess_bill`
--

CREATE TABLE `mess_bill` (
  `mess_bill_id` int(10) NOT NULL,
  `admission_id` int(10) NOT NULL,
  `charge_type` varchar(20) NOT NULL COMMENT 'Monthly mess bill , Penalty 25 per day, Milk Charge',
  `date` date NOT NULL,
  `mess_bill` double(10,2) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mess_bill`
--

INSERT INTO `mess_bill` (`mess_bill_id`, `admission_id`, `charge_type`, `date`, `mess_bill`, `note`, `status`) VALUES
(1, 0, 'Room rent', '2022-11-01', 1500.00, '', 'Charges'),
(2, 0, 'Mess Bill', '2022-11-01', 3000.00, '', 'Charges'),
(3, 0, 'Water Electricity', '2022-11-01', 500.00, '', 'Charges'),
(4, 0, 'Maintenance', '2022-11-01', 200.00, '', 'Charges'),
(5, 0, 'Total Charges', '2022-11-01', 5200.00, '', 'Charges'),
(6, 0, 'Room rent', '2022-11-01', 1500.00, '', 'Charges'),
(7, 0, 'Mess Bill', '2022-11-01', 1000.00, '', 'Charges'),
(8, 0, 'Water Electricity', '2022-11-01', 500.00, '', 'Charges'),
(9, 0, 'Maintenance', '2022-11-01', 300.00, '', 'Charges'),
(10, 0, 'Total Charges', '2022-11-01', 3300.00, '', 'Charges'),
(11, 0, 'Room rent', '2022-12-01', 6000.00, '', 'Charges'),
(12, 0, 'Mess Bill', '2022-12-01', 10000.00, '', 'Charges'),
(13, 0, 'Water Electricity', '2022-12-01', 1000.00, '', 'Charges'),
(14, 0, 'Maintenance', '2022-12-01', 500.00, '', 'Charges'),
(15, 0, 'Total Charges', '2022-12-01', 17500.00, '', 'Charges'),
(16, 2, 'Room Rent', '2022-12-01', 6000.00, 'good', 'Active'),
(17, 2, 'Mess Bill', '2022-12-01', 0.00, 'good', 'Active'),
(18, 2, 'Water Electricity', '2022-12-01', 1000.00, 'good', 'Active'),
(19, 2, 'Maintenance', '2022-12-01', 500.00, 'good', 'Active'),
(20, 2, 'Total Charges', '2022-12-01', 7500.00, 'good', 'Active'),
(21, 2, 'Penalty', '0000-00-00', 482175.00, '', 'Active'),
(22, 2, 'Penalty', '2022-12-01', 0.00, '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `photo_id` int(11) NOT NULL,
  `gallery_type_id` int(11) NOT NULL,
  `photo_title` varchar(100) NOT NULL,
  `photo_img` varchar(300) NOT NULL,
  `photo_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`photo_id`, `gallery_type_id`, `photo_title`, `photo_img`, `photo_status`) VALUES
(7, 1, 'obul', '80351656182071882.jpg', 'Published'),
(8, 3, 'women', '292771666603107117.jpg', 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) NOT NULL,
  `block_id` int(10) NOT NULL,
  `fee_str_id` int(10) NOT NULL,
  `room_no` int(10) NOT NULL,
  `no_of_beds` int(5) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `block_id`, `fee_str_id`, `room_no`, `no_of_beds`, `description`, `status`) VALUES
(1, 1, 29, 1, 1, 'hello', 'Active'),
(2, 2, 29, 13, 2, 'nice', 'Active'),
(3, 3, 29, 14, 1, 'cool', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`admission_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendanceid`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`billid`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`block_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `fees_structure`
--
ALTER TABLE `fees_structure`
  ADD PRIMARY KEY (`fee_str_id`);

--
-- Indexes for table `gallery_type`
--
ALTER TABLE `gallery_type`
  ADD PRIMARY KEY (`gallery_type_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guestid`);

--
-- Indexes for table `hosteller`
--
ALTER TABLE `hosteller`
  ADD PRIMARY KEY (`hostellerid`);

--
-- Indexes for table `leave_application`
--
ALTER TABLE `leave_application`
  ADD PRIMARY KEY (`leave_application_id`);

--
-- Indexes for table `mess_bill`
--
ALTER TABLE `mess_bill`
  ADD PRIMARY KEY (`mess_bill_id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `admission_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendanceid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `billid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `block_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `complaint_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eventid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1053;
--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `fee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fees_structure`
--
ALTER TABLE `fees_structure`
  MODIFY `fee_str_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `gallery_type`
--
ALTER TABLE `gallery_type`
  MODIFY `gallery_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guestid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hosteller`
--
ALTER TABLE `hosteller`
  MODIFY `hostellerid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `leave_application`
--
ALTER TABLE `leave_application`
  MODIFY `leave_application_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mess_bill`
--
ALTER TABLE `mess_bill`
  MODIFY `mess_bill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
