SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `attendance` (
  `EmpId` varchar(200) NOT NULL,
  `AttendanceDate` date NOT NULL,
  `AttendanceDay` varchar(20) NOT NULL,
  `SickDay` varchar(20) NOT NULL,
  `VacationDay` varchar(20) NOT NULL,
  `EntryTime` varchar(50) NOT NULL,
  `ExitTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `employees` (
`serialNo` int(100) NOT NULL,
`fname` varchar(500) NOT NULL,
`lname` varchar(500) NOT NULL,
`EmployeeID` varchar(500) NOT NULL,
`accountType` varchar(110) NOT NULL,
`managerContact` varchar(500) NOT NULL
);

CREATE TABLE `login` (
  `loginId` varchar(500) NOT NULL,
  `loginPassword` varchar(500) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `EmpId` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `register` (
  `loginId` varchar(500) NOT NULL,
  `loginPassword` varchar(500) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `EmpId` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `employees`
ADD PRIMARY KEY (`EmployeeID`),
ADD KEY `index` (`serialNo`);

ALTER TABLE `login`
ADD PRIMARY KEY (`loginId`);

ALTER TABLE `employees`
  MODIFY `serialNo` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` EVENT `StatusUpdate` ON SCHEDULE EVERY 5 SECOND STARTS '2017-06-22 00:00:00' ENDS '2020-07-23 00:00:00' ON COMPLETION PRESERVE ENABLE DO UPDATE checklist SET `checklistStatus` = 1 where `hpcs_email_ID`= 1 and `prepare_laptop`= 1 and `email_social`=1 and `email_instructions`=1 and `email_mlq4`=1 and `email_teamsID`=1 and `email_joiningProcess`=1 and `GoogleDriveAccount`=1 and `FillDetailsSheet`=1 and `collectDocs`=1 and `initialVerification`=1 and `handOriginals`=1 and `giveLaptop`=1 and `giveNotebookPen`=1 and `greetingCard`=1 and `trainingSchedule`=1 and `welcomeMeeting`=1 and `welcomeEmail`=1 and `skypeID`=1 and `pingID`=1 and `addInSkypeGroup`=1 and `giveJoiningDocs`=1 and `signOnDocs`=1 and `performaSheet`=1 and `verifyPersonalContact`=1 and `createEmpFile`=1 and `placeSignedDocs`=1 and `addBankKotak`=1 and `attendanceSheet`=1 and `fillEmpDetailSheet`=1 and `fillEmpSalarySheet`=1 and `addBirthday`=1 and `addMarriage`=1 and `addOneYearCompletion`=1 and `addOnePointFiveYear`=1 and `probationCompletion`=1 and `addInWhatsappGroup`=1 and `verifyOriginals`=1 and `returnDocsToEmp`=1 and `EmpAddressInGMap`=1 and `WordpressAccount`=1 and `OCLsheet`=1 and `salaryReview`=1$$

DELIMITER ;