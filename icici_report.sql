-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2020 at 06:48 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icici_report`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aadharpay`
--

CREATE TABLE `tbl_aadharpay` (
  `id` int(11) NOT NULL,
  `aID` int(11) DEFAULT NULL,
  `Branch_Name` varchar(250) DEFAULT NULL,
  `Branch_Login_Id` varchar(100) DEFAULT NULL,
  `Employee_Name` varchar(200) DEFAULT NULL,
  `Customer_Aadhaar_Number` varchar(50) DEFAULT NULL,
  `Customer_Phone_Number` varchar(50) DEFAULT NULL,
  `Customer_bank_Name` varchar(250) DEFAULT NULL,
  `Remarks` varchar(250) DEFAULT NULL,
  `Response_Remarks` text,
  `Requested_Timestamp` datetime DEFAULT NULL,
  `Fingpay_Transaction_Id` varchar(250) DEFAULT NULL,
  `Stan` varchar(200) DEFAULT NULL,
  `Response_RRN` text,
  `Latitude` varchar(50) DEFAULT NULL,
  `Logitude` varchar(50) DEFAULT NULL,
  `Device_IMEI` text,
  `Employee_Id` varchar(50) DEFAULT NULL,
  `Response_Time` int(11) DEFAULT NULL,
  `Response_Date` int(11) DEFAULT NULL,
  `Aggregator_Name` varchar(200) DEFAULT NULL,
  `Corporate_Name` varchar(200) DEFAULT NULL,
  `aStatus` varchar(50) DEFAULT NULL,
  `Terminal_Id` varchar(100) DEFAULT NULL,
  `Transaction_Identifier` varchar(100) DEFAULT NULL,
  `Response_Timestamp` datetime DEFAULT NULL,
  `Web_Status` varchar(100) DEFAULT NULL,
  `Response_Terminal_Id` varchar(100) DEFAULT NULL,
  `Employee_Transaction_Id` int(11) DEFAULT NULL,
  `Transaction_Amount` int(11) DEFAULT NULL,
  `Response_Account_Id` varchar(50) DEFAULT NULL,
  `Beneficiary_Identification_Code` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` text NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `created` datetime NOT NULL,
  `modify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `mobile_no`, `created`, `modify`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9999110680', '2020-06-29 04:12:08', '2020-07-22 15:15:13'),
(2, 'r.suresh@rnfiservices.com', 'e10adc3949ba59abbe56e057f20f883e', '9384098861', '2020-06-29 04:12:08', '2020-07-22 15:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_otp`
--

CREATE TABLE `tbl_admin_otp` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `otp` int(11) NOT NULL,
  `api_response` text NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1' COMMENT '1->Active,0->NOt Active',
  `is_admin` int(11) NOT NULL DEFAULT '1' COMMENT '1->Admin,0->User',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aeps`
--

CREATE TABLE `tbl_aeps` (
  `id` int(11) NOT NULL,
  `aId` int(11) NOT NULL,
  `Branch_Name` varchar(250) DEFAULT NULL,
  `Branch_Login_Id` varchar(250) DEFAULT NULL,
  `Employee_Login_Id` varchar(100) DEFAULT NULL,
  `Employee_Name` varchar(200) DEFAULT NULL,
  `Aadhaar_Number` varchar(30) DEFAULT NULL,
  `Phone_Number` varchar(20) DEFAULT NULL,
  `IIN` int(11) DEFAULT NULL,
  `Bank_Name` text,
  `Transaction_Amount` int(11) DEFAULT NULL,
  `Remarks` text,
  `Response_Remarks` text,
  `Requested_Timestamp` datetime DEFAULT NULL,
  `Fingpay_Transaction_Id` varchar(250) DEFAULT NULL,
  `Stan` int(11) DEFAULT NULL,
  `Response_RRN` varchar(50) DEFAULT NULL,
  `Latitude` varchar(100) DEFAULT NULL,
  `Logitude` varchar(100) DEFAULT NULL,
  `Device_IMEI` text,
  `Response_Time` datetime DEFAULT NULL,
  `Response_Date` int(11) DEFAULT NULL,
  `Aggregator_Name` varchar(250) DEFAULT NULL,
  `Corporate_Name` varchar(250) DEFAULT NULL,
  `Status_Code` varchar(100) DEFAULT NULL,
  `Terminal_Id` varchar(150) DEFAULT NULL,
  `Transaction_Identifier` varchar(150) DEFAULT NULL,
  `Web_Status` varchar(200) DEFAULT NULL,
  `Employee_Id` int(11) DEFAULT NULL,
  `Response_Terminal_Id` varchar(50) DEFAULT NULL,
  `Response_Timestamp` datetime DEFAULT NULL,
  `Response_Auth_Id` int(11) DEFAULT NULL,
  `Response_Auth_Code` varchar(200) DEFAULT NULL,
  `Merchant_Transaction_Id` varchar(30) DEFAULT NULL,
  `Error_Message` text,
  `ThreeWayRecon_Status` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aepscms`
--

CREATE TABLE `tbl_aepscms` (
  `id` int(11) NOT NULL,
  `aId` int(11) NOT NULL,
  `Branch_Name` varchar(250) DEFAULT NULL,
  `Branch_Login_Id` varchar(250) DEFAULT NULL,
  `Employee_Login_Id` varchar(100) DEFAULT NULL,
  `Employee_Name` varchar(200) DEFAULT NULL,
  `Aadhaar_Number` varchar(30) DEFAULT NULL,
  `Phone_Number` varchar(20) DEFAULT NULL,
  `IIN` int(11) DEFAULT NULL,
  `Bank_Name` text,
  `Transaction_Amount` int(11) DEFAULT NULL,
  `Remarks` text,
  `Response_Remarks` text,
  `Requested_Timestamp` datetime DEFAULT NULL,
  `Fingpay_Transaction_Id` varchar(250) DEFAULT NULL,
  `Stan` int(11) DEFAULT NULL,
  `Response_RRN` varchar(50) DEFAULT NULL,
  `Latitude` varchar(100) DEFAULT NULL,
  `Logitude` varchar(100) DEFAULT NULL,
  `Device_IMEI` text,
  `Response_Time` datetime DEFAULT NULL,
  `Response_Date` int(11) DEFAULT NULL,
  `Aggregator_Name` varchar(250) DEFAULT NULL,
  `Corporate_Name` varchar(250) DEFAULT NULL,
  `Status_Code` varchar(100) DEFAULT NULL,
  `Terminal_Id` varchar(150) DEFAULT NULL,
  `Transaction_Identifier` varchar(150) DEFAULT NULL,
  `Web_Status` varchar(200) DEFAULT NULL,
  `Employee_Id` int(11) DEFAULT NULL,
  `Response_Terminal_Id` varchar(50) DEFAULT NULL,
  `Response_Timestamp` datetime DEFAULT NULL,
  `Response_Auth_Id` int(11) DEFAULT NULL,
  `Response_Auth_Code` varchar(200) DEFAULT NULL,
  `Merchant_Transaction_Id` varchar(30) DEFAULT NULL,
  `Error_Message` text,
  `ThreeWayRecon_Status` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aepsrbl`
--

CREATE TABLE `tbl_aepsrbl` (
  `id` int(11) NOT NULL,
  `Participant_ID` varchar(200) DEFAULT NULL,
  `Trxn_Type` int(11) DEFAULT NULL,
  `From_Account_Type` int(11) DEFAULT NULL,
  `To_Account_Type` int(11) DEFAULT NULL,
  `Seq_No` varchar(30) DEFAULT NULL,
  `Resp_Code` varchar(20) DEFAULT NULL,
  `PAN_Number` varchar(30) DEFAULT NULL,
  `Member_Number` varchar(50) DEFAULT NULL,
  `Approval_Number` int(11) DEFAULT NULL,
  `System_Trace_Audit_Number` varchar(30) DEFAULT NULL,
  `Trxn_Date` int(11) DEFAULT NULL,
  `Transaction_Time` int(11) DEFAULT NULL,
  `Merchant_Category_Code` int(11) DEFAULT NULL,
  `Card_Acceptor_Settlement_Date` int(11) NOT NULL,
  `Card_Acceptor_ID` varchar(50) DEFAULT NULL,
  `Terminal_ID` int(11) NOT NULL,
  `Card_Acceptor_Terminal_Location` varchar(250) DEFAULT NULL,
  `Acquirer_ID` int(11) DEFAULT NULL,
  `Acquirer_Settlement_Date` int(11) DEFAULT NULL,
  `Transaction_Currency_code` int(11) DEFAULT NULL,
  `Transaction_Amount` varchar(50) DEFAULT NULL,
  `Actual_Transaction_Amount` varchar(50) DEFAULT NULL,
  `Transaction_Acitivity_fee` varchar(100) DEFAULT NULL,
  `Acquirer_settlement_Currency_Code` varchar(50) DEFAULT NULL,
  `Acquirer_settlement_Amount` varchar(50) DEFAULT NULL,
  `Acquirer_Settlement_Fee` varchar(50) DEFAULT NULL,
  `Acquirer_settlement_processing_fee` varchar(50) DEFAULT NULL,
  `Acquirer_Settlement_Conversion_Rate` varchar(50) DEFAULT NULL,
  `Unique_Reference_Number` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_airtel`
--

CREATE TABLE `tbl_airtel` (
  `id` int(11) NOT NULL,
  `DAT_POST` datetime DEFAULT NULL,
  `Transaction_Number` varchar(200) DEFAULT NULL,
  `Transaction_Date` datetime DEFAULT NULL,
  `DR_CR` varchar(50) DEFAULT NULL,
  `Transaction_Description` text,
  `REF_USR_NO` varchar(200) DEFAULT NULL,
  `Transaction_Amount` varchar(100) DEFAULT NULL,
  `Charges` varchar(20) DEFAULT NULL,
  `Closing_Balance` varchar(200) DEFAULT NULL,
  `Account_Number` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_airtelswiggy`
--

CREATE TABLE `tbl_airtelswiggy` (
  `id` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `APB_TXN_id` varchar(50) DEFAULT NULL,
  `Partner_txn_id` varchar(50) DEFAULT NULL,
  `RRN` varchar(100) DEFAULT NULL,
  `Transaction_Amount` varchar(50) DEFAULT NULL,
  `Original_Amount` varchar(50) DEFAULT NULL,
  `Charges` varchar(50) DEFAULT NULL,
  `GST` varchar(50) DEFAULT NULL,
  `TDS` varchar(50) DEFAULT NULL,
  `Description` text,
  `Transaction_Type` varchar(50) DEFAULT NULL,
  `Opening_Balance` varchar(50) DEFAULT NULL,
  `Closing_Balance` varchar(50) DEFAULT NULL,
  `REVERSAL_CHARGES` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cashdeposit`
--

CREATE TABLE `tbl_cashdeposit` (
  `id` int(11) NOT NULL,
  `Employee_Login_Id` varchar(30) DEFAULT NULL,
  `Aadhaar_Number` varchar(30) DEFAULT NULL,
  `Transaction_Amount` varchar(50) DEFAULT NULL,
  `Bank_Name` varchar(250) DEFAULT NULL,
  `Status_Message` varchar(50) DEFAULT NULL,
  `Requested_Timestamp` datetime DEFAULT NULL,
  `Fingpay_Transaction_Id` varchar(200) DEFAULT NULL,
  `Response_RRN` varchar(250) DEFAULT NULL,
  `Latitude` varchar(20) DEFAULT NULL,
  `Logitude` varchar(20) DEFAULT NULL,
  `Device_IMEI` text,
  `Corporate_Name` varchar(200) DEFAULT NULL,
  `Branch_Name` varchar(200) DEFAULT NULL,
  `Branch_Login_Id` varchar(200) DEFAULT NULL,
  `Aggregator_Name` varchar(200) DEFAULT NULL,
  `Employee_Name` varchar(150) DEFAULT NULL,
  `Phone_Number` varchar(30) DEFAULT NULL,
  `IIN` varchar(50) DEFAULT NULL,
  `Remarks` varchar(250) DEFAULT NULL,
  `Stan` varchar(100) DEFAULT NULL,
  `Response_Time` time DEFAULT NULL,
  `Response_Date` varchar(50) DEFAULT NULL,
  `Status_Code` varchar(50) DEFAULT NULL,
  `Terminal_Id` varchar(100) DEFAULT NULL,
  `Transaction_Identifier` varchar(100) DEFAULT NULL,
  `Web_Status` varchar(100) DEFAULT NULL,
  `Employee_Id` varchar(100) DEFAULT NULL,
  `Response_Terminal_Id` varchar(100) DEFAULT NULL,
  `Response_Timestamp` varchar(50) DEFAULT NULL,
  `Response_Auth_Id` varchar(100) DEFAULT NULL,
  `Response_Auth_Code` varchar(100) DEFAULT NULL,
  `Merchant_Transaction_Id` varchar(100) DEFAULT NULL,
  `Branch_code` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cashdeposit_otp`
--

CREATE TABLE `tbl_cashdeposit_otp` (
  `id` int(11) NOT NULL,
  `Mobile_Number` varchar(50) DEFAULT NULL,
  `IIN` varchar(50) DEFAULT NULL,
  `Stan` varchar(200) DEFAULT NULL,
  `RRN` varchar(200) DEFAULT NULL,
  `TerminalId` varchar(200) DEFAULT NULL,
  `Amount` varchar(50) DEFAULT NULL,
  `Response_Code` varchar(200) DEFAULT NULL,
  `Response_Message` varchar(200) DEFAULT NULL,
  `Requested_Timestamp` timestamp NULL DEFAULT NULL,
  `Response_Timestamp` timestamp NULL DEFAULT NULL,
  `Fingpay_TransactionId` varchar(200) DEFAULT NULL,
  `Employee_Login_Id` varchar(200) DEFAULT NULL,
  `Employee_name` varchar(200) DEFAULT NULL,
  `Corporate_Name` varchar(200) DEFAULT NULL,
  `Corporate_LoginId` varchar(200) DEFAULT NULL,
  `Merchant_TransactionId` varchar(200) DEFAULT NULL,
  `OTP` varchar(50) DEFAULT NULL,
  `Bene_account_NUmber` varchar(100) DEFAULT NULL,
  `bene_Name` varchar(200) DEFAULT NULL,
  `Response_Rrn` varchar(200) DEFAULT NULL,
  `Requested_Remarks` varchar(200) DEFAULT NULL,
  `Aggregator_LoginId` varchar(200) DEFAULT NULL,
  `Aggregator_Name` varchar(200) DEFAULT NULL,
  `Branch_loginId` varchar(200) DEFAULT NULL,
  `BranchName` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cpos_mpos`
--

CREATE TABLE `tbl_cpos_mpos` (
  `id` int(11) NOT NULL,
  `Sr_No` int(11) DEFAULT NULL,
  `Merchant_Id` int(11) DEFAULT NULL,
  `Merchant_Name` varchar(200) DEFAULT NULL,
  `Merchant_MobileNo` varchar(100) DEFAULT NULL,
  `Device_Serial_No` varchar(200) DEFAULT NULL,
  `CardHolder_Name` varchar(200) DEFAULT NULL,
  `Card_Number` varchar(250) DEFAULT NULL,
  `Mobile_Number` varchar(30) DEFAULT NULL,
  `Payment_ID` varchar(50) DEFAULT NULL,
  `Merchant_Reference_Number` varchar(250) DEFAULT NULL,
  `Transaction_ID` varchar(200) DEFAULT NULL,
  `RRN` varchar(200) DEFAULT NULL,
  `Transaction_Date` datetime DEFAULT NULL,
  `Transaction_Type` varchar(200) DEFAULT NULL,
  `Payment_Mode` varchar(200) DEFAULT NULL,
  `Payment_Brand` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `Sale_Amount` varchar(100) DEFAULT NULL,
  `Void_Amount` varchar(100) DEFAULT NULL,
  `PreAuth_Amount` varchar(100) DEFAULT NULL,
  `PreAuth_Completion_Amount` varchar(100) DEFAULT NULL,
  `Refund_Amount` varchar(100) DEFAULT NULL,
  `ChargeBack_Amount` varchar(100) DEFAULT NULL,
  `Tip_Amount` varchar(100) DEFAULT NULL,
  `User` varchar(100) DEFAULT NULL,
  `Store_ID` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_euronet`
--

CREATE TABLE `tbl_euronet` (
  `id` int(11) NOT NULL,
  `EntransID` int(11) DEFAULT NULL,
  `SpTransID` varchar(50) NOT NULL DEFAULT '',
  `MTransID` int(11) DEFAULT NULL,
  `ConsumerNum` varchar(50) DEFAULT NULL,
  `BeneficiaryConsumerNumber` text,
  `Amount` varchar(50) DEFAULT NULL,
  `Transaction_Date` datetime NOT NULL,
  `Service_Type` varchar(50) DEFAULT NULL,
  `Service_Provider` varchar(200) DEFAULT NULL,
  `Circle` varchar(200) DEFAULT NULL,
  `MerchantName` varchar(200) DEFAULT NULL,
  `MerchantResponseMessage` varchar(200) DEFAULT NULL,
  `SPVASRefID` varchar(200) DEFAULT NULL,
  `NetworkMode` varchar(50) DEFAULT NULL,
  `BillerId` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fino`
--

CREATE TABLE `tbl_fino` (
  `id` int(11) NOT NULL,
  `Txn_Date` varchar(50) DEFAULT NULL,
  `Txn_Time` time DEFAULT NULL,
  `Client_Txn_Id` varchar(100) DEFAULT NULL,
  `User_Track_Name` varchar(200) DEFAULT NULL,
  `User_Track_Mobile` varchar(20) DEFAULT NULL,
  `User_Track_Account` varchar(50) DEFAULT NULL,
  `User_Track_Bankno` varchar(100) DEFAULT NULL,
  `User_Track_Bank_Name` varchar(250) DEFAULT NULL,
  `Txn_Amount` varchar(20) DEFAULT NULL,
  `Fino_Txn_Id` varchar(200) DEFAULT NULL,
  `Txn_Message` varchar(250) DEFAULT NULL,
  `User_Track_Id` varchar(150) DEFAULT NULL,
  `User_Banking_Type` varchar(50) DEFAULT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_finoaeps`
--

CREATE TABLE `tbl_finoaeps` (
  `id` int(11) NOT NULL,
  `appId` varchar(50) DEFAULT NULL,
  `Client_Txn_Id` int(11) DEFAULT NULL,
  `RRN` varchar(30) DEFAULT NULL,
  `Client_Merchant_Id` varchar(30) DEFAULT NULL,
  `Bank_Name` varchar(250) DEFAULT NULL,
  `Txn_Amount` varchar(50) DEFAULT NULL,
  `TxnMode` varchar(200) DEFAULT NULL,
  `User_Track_id` varchar(100) DEFAULT NULL,
  `Txn_Date` date DEFAULT NULL,
  `Txn_Time` datetime DEFAULT NULL,
  `Txn_Status` varchar(20) DEFAULT NULL,
  `Txn_Message` varchar(250) DEFAULT NULL,
  `Reference_No` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_finomatm`
--

CREATE TABLE `tbl_finomatm` (
  `id` int(11) NOT NULL,
  `appId` varchar(50) DEFAULT NULL,
  `Client_Txn_Id` int(11) DEFAULT NULL,
  `RRN` varchar(30) DEFAULT NULL,
  `Client_Merchant_Id` varchar(30) DEFAULT NULL,
  `Bank_Name` varchar(250) DEFAULT NULL,
  `Txn_Amount` varchar(50) DEFAULT NULL,
  `TxnMode` varchar(200) DEFAULT NULL,
  `User_Track_id` varchar(100) DEFAULT NULL,
  `Txn_Date` date DEFAULT NULL,
  `Txn_Time` datetime DEFAULT NULL,
  `Txn_Status` varchar(20) DEFAULT NULL,
  `Txn_Message` varchar(250) DEFAULT NULL,
  `Reference_No` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_indicore`
--

CREATE TABLE `tbl_indicore` (
  `id` int(11) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `CustTransID` int(11) DEFAULT NULL,
  `localTxnId` varchar(100) DEFAULT NULL,
  `OPTxnId` varchar(50) DEFAULT NULL,
  `optr` varchar(100) DEFAULT NULL,
  `Moile` varchar(50) DEFAULT NULL,
  `APIAmt` varchar(50) DEFAULT NULL,
  `DtdAmt` varchar(50) DEFAULT NULL,
  `Balance` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_irctcbooking`
--

CREATE TABLE `tbl_irctcbooking` (
  `id` int(11) NOT NULL,
  `SlNo` int(11) NOT NULL,
  `TRANSACTION_ID` text,
  `Rnfi` varchar(100) DEFAULT NULL,
  `PNR_NO` varchar(100) DEFAULT NULL,
  `CLIENT_TRANSACTION_ID` text,
  `BOOKING_AMOUNT` varchar(50) DEFAULT NULL,
  `PG_NAME` varchar(100) DEFAULT NULL,
  `CLASS` varchar(50) DEFAULT NULL,
  `TRANSACTION_DATE` text,
  `USER_ID` varchar(20) NOT NULL,
  `PRINCIPAL_USER_ID` varchar(50) DEFAULT NULL,
  `AMC_Charge` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_irctc_cancelrefundreport`
--

CREATE TABLE `tbl_irctc_cancelrefundreport` (
  `id` int(11) NOT NULL,
  `SlNo` int(11) DEFAULT NULL,
  `TRANSACTION_ID` varchar(200) DEFAULT NULL,
  `PNR_NO` varchar(200) DEFAULT NULL,
  `OPERATOR_ID` varchar(200) DEFAULT NULL,
  `PG_NAME` varchar(200) DEFAULT NULL,
  `CLASS` varchar(150) NOT NULL,
  `REFUND_AMOUNT` varchar(30) DEFAULT NULL,
  `WAITING_AUTO_CANCELLED` varchar(100) DEFAULT NULL,
  `TRANSACTION_DATE` varchar(150) DEFAULT NULL,
  `ACTUAL_REFUND_DATE` varchar(150) DEFAULT NULL,
  `TDR_CAN` varchar(30) DEFAULT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `PRINCIPAL_USER_ID` varchar(100) DEFAULT NULL,
  `CANCELLATION_ID` varchar(150) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jri`
--

CREATE TABLE `tbl_jri` (
  `id` int(11) NOT NULL,
  `Order_No` varchar(50) DEFAULT NULL,
  `Order_Date` varchar(200) DEFAULT NULL,
  `Order_Time` varchar(30) DEFAULT NULL,
  `Mobile_DTH_No` varchar(30) DEFAULT NULL,
  `Nick_Name` varchar(100) DEFAULT NULL,
  `Amount` varchar(30) DEFAULT NULL,
  `Service_Name` varchar(100) DEFAULT NULL,
  `Service_Provider` varchar(100) DEFAULT NULL,
  `Transaction_Type` varchar(50) DEFAULT NULL,
  `Order_Status` varchar(50) DEFAULT NULL,
  `Reason` varchar(250) DEFAULT NULL,
  `System_Reference_No` varchar(100) DEFAULT NULL,
  `Operator_Trans_Id` varchar(200) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mobikwikwallet`
--

CREATE TABLE `tbl_mobikwikwallet` (
  `id` int(11) NOT NULL,
  `OrderID` varchar(50) DEFAULT NULL,
  `UserPhone` varchar(20) DEFAULT NULL,
  `UserEmail` varchar(30) DEFAULT NULL,
  `TxnDate` datetime NOT NULL,
  `TxnAmount` int(11) DEFAULT NULL,
  `PayoutDate` datetime DEFAULT NULL,
  `PayoutBatch` varchar(100) DEFAULT NULL,
  `RefundDate` datetime DEFAULT NULL,
  `RefundBatch` varchar(200) DEFAULT NULL,
  `RefundAmount` varchar(200) DEFAULT NULL,
  `Fee` varchar(200) DEFAULT NULL,
  `ServiceTax` varchar(150) DEFAULT NULL,
  `Statusmessage` varchar(200) DEFAULT NULL,
  `PayoutAmount` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_moduleinnerpage`
--

CREATE TABLE `tbl_moduleinnerpage` (
  `id` int(10) NOT NULL,
  `Module` int(11) NOT NULL,
  `Inner_page` varchar(50) NOT NULL,
  `Inner_page_url` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_moduleinnerpage`
--

INSERT INTO `tbl_moduleinnerpage` (`id`, `Module`, `Inner_page`, `Inner_page_url`, `created_at`) VALUES
(1, 1, 'Upload PgGatWay', 'pggatway/add', '2020-07-31 09:10:11'),
(2, 1, 'List PgGatWay', 'pggatway/index', '2020-07-31 09:10:11'),
(3, 2, 'Upload AEPS', 'aeps/add', '2020-07-31 10:11:14'),
(4, 2, 'List AEPS', 'aeps/index', '2020-07-31 10:11:14'),
(5, 2, 'Upload Aeps Cms', 'aeps/addcms', '2020-07-31 10:14:38'),
(6, 2, 'LIst Aeps Cms', 'aeps/indexcms', '2020-07-31 10:14:38'),
(7, 2, 'Upload Aeps RBL', 'aeps/addrbl', '2020-07-31 10:16:09'),
(8, 2, 'LIst Aeps RBL', 'aeps/indexrbl', '2020-07-31 10:16:09'),
(9, 5, 'Upload RazorPay', 'razorpay/add', '2020-07-31 10:19:01'),
(10, 5, 'List RazorPay', 'razorpay/index', '2020-07-31 10:19:01'),
(11, 6, 'Upload Indicore', 'indicore/add', '2020-07-31 10:19:49'),
(12, 6, 'List Indicore', 'indicore/index', '2020-07-31 10:19:49'),
(13, 7, 'Upload Aadharpay', 'aadharpay/add', '2020-07-31 10:33:05'),
(14, 7, 'List Aadharpay', 'aadharpay/index', '2020-07-31 10:33:05'),
(15, 8, 'Upload Euronet', 'euronet/add', '2020-07-31 10:33:05'),
(16, 8, 'List Euronet', 'euronet/index', '2020-07-31 10:33:05'),
(17, 9, 'Upload Mobikwik Wallet', 'mobikwikwallet/add', '2020-07-31 10:33:05'),
(18, 9, 'List Mobikwik Wallet', 'mobikwikwallet/index', '2020-07-31 10:33:05'),
(19, 10, 'Upload JRI', 'jri/add', '2020-07-31 10:33:05'),
(20, 11, 'Upload FINO', 'fino/addfino', '2020-07-31 10:33:05'),
(21, 11, 'List FINO', 'fino/indexfino', '2020-07-31 10:33:05'),
(22, 11, 'Upload FINO Matm', 'fino/addmatm', '2020-07-31 10:33:05'),
(23, 11, 'List FINO Matm', 'fino/indexmatm', '2020-07-31 10:33:05'),
(26, 3, 'Upload Irctc Booking', 'irctcbooking/addbooking', '2020-07-31 10:48:06'),
(27, 3, 'List Irctc Booking', 'irctcbooking/indexbooking', '2020-07-31 10:48:06'),
(28, 3, 'Upload Irctc CancelRf', 'irctcbooking/addrefund', '2020-07-31 10:48:06'),
(29, 3, 'List Irctc CancelRefund', 'irctcbooking/indexrefund', '2020-07-31 10:48:06'),
(30, 4, 'Upload Cash Deposit', 'cashdeposit/add', '2020-07-31 12:16:54'),
(31, 4, 'ListCash Deposit', 'cashdeposit/index', '2020-07-31 12:16:54'),
(32, 4, 'Upload Cash Depositotp', 'cashdeposit/addcashotp', '2020-07-31 12:16:54'),
(33, 4, 'ListCash Depositotp', 'cashdeposit/indexcashotp', '2020-07-31 12:16:54'),
(34, 12, 'Upload Air(Tbo)', 'tbo/add', '2020-08-04 06:11:12'),
(35, 12, 'List Air(Tbo)', 'tbo/index', '2020-08-04 06:11:12'),
(36, 13, 'Upload AirtelSwiggy Cms', 'airtel/add', '2020-08-04 08:38:52'),
(37, 13, 'List Airtel Swiggy', 'airtel/index', '2020-08-04 08:38:52'),
(38, 13, 'Upload Airtel', 'airtel/addairtel', '2020-08-04 09:15:42'),
(39, 13, 'List Airtel', 'airtel/indexairtel', '2020-08-04 09:15:42'),
(40, 14, 'Upload Cpos-Mpos Cms', 'cpos/add', '2020-08-04 11:40:30'),
(41, 14, 'List Cpos-Mpos Cms', 'cpos/index', '2020-08-04 11:40:30'),
(42, 10, 'List Jri', 'jri/index', '2020-08-04 12:32:17'),
(43, 15, 'Upload PanCard', 'pancard/add', '2020-08-06 04:43:58'),
(44, 15, 'List PanCard', 'pancard/index', '2020-08-06 04:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modulemaster`
--

CREATE TABLE `tbl_modulemaster` (
  `id` int(10) NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `ModuleUrl` varchar(100) NOT NULL,
  `module_icon` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_modulemaster`
--

INSERT INTO `tbl_modulemaster` (`id`, `module_name`, `ModuleUrl`, `module_icon`, `created_at`) VALUES
(1, 'PgGatWay', '', '<i class=\"menu-icon fa fa-list\"></i>', '2020-07-31 09:05:52'),
(2, 'AEPS', '', '<i class=\"menu-icon fa fa-list\"></i>', '2020-07-31 10:09:28'),
(3, 'Irctc Booking', '', '<i class=\"menu-icon fa fa-list\"></i>', '2020-07-31 10:09:28'),
(4, 'Cash Deposit', '', '<i class=\"menu-icon fa fa-list\"></i>', '2020-07-31 10:15:25'),
(5, 'RazorPay', '', '<i class=\"menu-icon fa fa-list\"></i>', '2020-07-31 10:18:17'),
(6, 'Indicore', '', '<i class=\"menu-icon fa fa-list\"></i>', '2020-07-31 10:18:17'),
(7, 'Aadharpay', '', '<i class=\"menu-icon fa fa-list\"></i>', '2020-07-31 10:21:33'),
(8, 'Euronet', '', '<i class=\"menu-icon fa fa-list\"></i>', '2020-07-31 10:21:33'),
(9, 'Mobikwik Wallet', '', '<i class=\"menu-icon fa fa-list\"></i>', '2020-07-31 10:21:33'),
(10, 'JRI', '', '<i class=\"menu-icon fa fa-list\"></i>', '2020-07-31 10:21:33'),
(11, 'FINO', '', '<i class=\"menu-icon fa fa-list\"></i>', '2020-07-31 10:21:33'),
(12, 'AIR(Tbo)', '', '<i class=\"menu-icon fa fa-list\"></i>', '2020-07-31 10:21:33'),
(13, 'Airtel', '', '<i class=\"menu-icon fa fa-list\"></i>', '2020-07-31 10:21:33'),
(14, 'Cpos-Mpos', '', '<i class=\"menu-icon fa fa-list\"></i>', '2020-08-04 11:38:28'),
(15, 'Pan Card', '', '<i class=\"menu-icon fa fa-list\"></i>', '2020-08-06 04:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pancard`
--

CREATE TABLE `tbl_pancard` (
  `id` int(11) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Transaction_Id` int(11) DEFAULT NULL,
  `API_Type` varchar(100) DEFAULT NULL,
  `Pancard_Amount` varchar(100) DEFAULT NULL,
  `Trans_Status` varchar(100) DEFAULT NULL,
  `Vleid` varchar(100) DEFAULT NULL,
  `Tokens` varchar(200) DEFAULT NULL,
  `Tokens_no` varchar(200) DEFAULT NULL,
  `Service` varchar(250) DEFAULT NULL,
  `Service_provider` varchar(250) DEFAULT NULL,
  `Panno` varchar(200) DEFAULT NULL,
  `Location` varchar(150) DEFAULT NULL,
  `Pancode` varchar(200) DEFAULT NULL,
  `Panprice` varchar(50) DEFAULT NULL,
  `Pancardprice` varchar(50) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pggatway`
--

CREATE TABLE `tbl_pggatway` (
  `id` int(11) NOT NULL,
  `Transaction_ID` text NOT NULL,
  `Order_ID` text NOT NULL,
  `Merchant_Unique_Ref` varchar(250) DEFAULT NULL,
  `Transaction_Date` datetime NOT NULL,
  `Updated_Date` datetime NOT NULL,
  `Transaction_Type` varchar(200) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `MID` varchar(250) NOT NULL,
  `Merchant_Name` varchar(150) NOT NULL,
  `Customer_ID` varchar(150) NOT NULL,
  `Customer_Nickname` varchar(250) NOT NULL,
  `Payment_Mobile_Number` varchar(30) NOT NULL,
  `Payment_Email_Id` varchar(50) NOT NULL,
  `Amount` varchar(50) NOT NULL,
  `Commission` varchar(50) NOT NULL,
  `GST` varchar(20) NOT NULL,
  `Merchant_Order_ID` varchar(200) NOT NULL,
  `Payout_ID` varchar(200) NOT NULL,
  `Channel` varchar(100) NOT NULL,
  `UTR_No` varchar(250) DEFAULT NULL,
  `Payout_Date` datetime NOT NULL,
  `Settled_Date` datetime DEFAULT NULL,
  `Payment_Mode` varchar(100) NOT NULL,
  `Issuing_Bank` varchar(250) NOT NULL,
  `Reference_Transaction_ID` varchar(250) DEFAULT NULL,
  `POS_ID` varchar(200) DEFAULT NULL,
  `Merchant_Ref_ID` varchar(250) DEFAULT NULL,
  `External_Serial_No` varchar(200) NOT NULL,
  `Commission_Rate` varchar(20) DEFAULT NULL,
  `Product_Code` varchar(250) NOT NULL,
  `GMV_Tier` varchar(200) DEFAULT NULL,
  `Transaction_Slab` varchar(200) DEFAULT NULL,
  `Request_Type` varchar(100) DEFAULT NULL,
  `Refund_Type` varchar(100) DEFAULT NULL,
  `Refund_Actor` varchar(100) DEFAULT NULL,
  `Split_Flag` varchar(100) DEFAULT NULL,
  `Split_MID` varchar(200) DEFAULT NULL,
  `Split_Id` varchar(150) DEFAULT NULL,
  `Link_Description` varchar(250) DEFAULT NULL,
  `Payment_Reference_Number` varchar(200) DEFAULT NULL,
  `Is_PRN_Validated` varchar(120) DEFAULT NULL,
  `PRN_Validate_Time` varchar(200) DEFAULT NULL,
  `Card_Last_4_Digits` varchar(200) DEFAULT NULL,
  `Bank_Transaction_ID` varchar(200) DEFAULT NULL,
  `Promo_Code` varchar(50) DEFAULT NULL,
  `Promo_Response` varchar(250) DEFAULT NULL,
  `Settled_Amount` varchar(50) DEFAULT NULL,
  `PCF` varchar(100) DEFAULT NULL,
  `PCF_GST` varchar(200) DEFAULT NULL,
  `Response_code` text NOT NULL,
  `Customer_VPA` varchar(200) DEFAULT NULL,
  `Card_BIN` varchar(150) DEFAULT NULL,
  `Customer_Details` text,
  `Link_Name` varchar(200) DEFAULT NULL,
  `Link_Notes` varchar(250) DEFAULT NULL,
  `Response_message` varchar(250) NOT NULL,
  `Promo_discount_type` varchar(150) DEFAULT NULL,
  `Promo_Amount` varchar(50) DEFAULT NULL,
  `Original_txn_value_before_promo` varchar(50) DEFAULT NULL,
  `Total_Bill_Amount` varchar(50) DEFAULT NULL,
  `Instant_Discount` varchar(50) DEFAULT NULL,
  `MLV_Amount` varchar(50) DEFAULT NULL,
  `Auth_Code` varchar(100) DEFAULT NULL,
  `RRN` varchar(200) DEFAULT NULL,
  `Prepaid_Card` varchar(200) DEFAULT NULL,
  `AdditionalComments` text,
  `Charge_Target` varchar(200) DEFAULT NULL,
  `Fee_Factor` varchar(200) DEFAULT NULL,
  `Bank_Gateway` varchar(150) DEFAULT NULL,
  `Card_Scheme` varchar(200) DEFAULT NULL,
  `ACQUIRING_SERVICE_FEE` varchar(200) DEFAULT NULL,
  `ACQUIRING_SERVICE_TAX` varchar(200) DEFAULT NULL,
  `PLATFORM_SERVICE_FEE` varchar(100) DEFAULT NULL,
  `PLATFORM_SERVICE_TAX` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_razorpay`
--

CREATE TABLE `tbl_razorpay` (
  `id` int(11) NOT NULL,
  `rid` varchar(250) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `order_id` varchar(200) DEFAULT NULL,
  `invoice_id` varchar(200) DEFAULT NULL,
  `international` varchar(20) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `amount_refunded` varchar(20) DEFAULT NULL,
  `amount_transferred` varchar(20) DEFAULT NULL,
  `refund_status` varchar(50) DEFAULT NULL,
  `captured` int(11) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `card_id` varchar(250) DEFAULT NULL,
  `card` text,
  `bank` text,
  `wallet` varchar(200) DEFAULT NULL,
  `vpa` varchar(200) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `notes` text,
  `fee` varchar(50) DEFAULT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `error_code` varchar(100) DEFAULT NULL,
  `error_description` text,
  `created_at` datetime NOT NULL,
  `card_type` varchar(50) DEFAULT NULL,
  `card_network` varchar(50) DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tbo`
--

CREATE TABLE `tbl_tbo` (
  `id` int(11) NOT NULL,
  `DATE` varchar(100) DEFAULT NULL,
  `BILL` varchar(50) DEFAULT NULL,
  `INVOICENO` varchar(50) DEFAULT NULL,
  `INVOICEDATE` varchar(50) DEFAULT NULL,
  `TRAVEL_DATE_TIME` varchar(100) DEFAULT NULL,
  `BOOKING_MODE` varchar(100) DEFAULT NULL,
  `PAX_NAME` varchar(200) DEFAULT NULL,
  `LeadPAXPan` varchar(200) DEFAULT NULL,
  `LeadPAXPassport` varchar(200) DEFAULT NULL,
  `OtherPAXPAN` varchar(100) DEFAULT NULL,
  `OtherPAXPassport` varchar(100) DEFAULT NULL,
  `CorporateGSTNumber` varchar(100) DEFAULT NULL,
  `Staff_Name` varchar(100) DEFAULT NULL,
  `Air_Line` varchar(100) DEFAULT NULL,
  `TICKET_NO` varchar(100) DEFAULT NULL,
  `SECTOR` varchar(100) DEFAULT NULL,
  `FARE` varchar(100) DEFAULT NULL,
  `TAX` varchar(100) DEFAULT NULL,
  `Special_Ser_Chrgs` varchar(100) DEFAULT NULL,
  `GROSS` varchar(100) DEFAULT NULL,
  `H_Charges` varchar(100) DEFAULT NULL,
  `H_CHRG` varchar(100) DEFAULT NULL,
  `PLBRate` varchar(100) DEFAULT NULL,
  `PLBAmount` varchar(100) DEFAULT NULL,
  `IncentiveRate` varchar(100) DEFAULT NULL,
  `IncentiveAmount` varchar(100) DEFAULT NULL,
  `Service_Charges` varchar(100) DEFAULT NULL,
  `Cancellation_Amount` varchar(100) DEFAULT NULL,
  `Cancellation_Service_Charges` varchar(100) DEFAULT NULL,
  `TDS` varchar(100) DEFAULT NULL,
  `S_TAX` varchar(100) DEFAULT NULL,
  `SGST_Rate` varchar(100) DEFAULT NULL,
  `SGST_Amt` varchar(100) DEFAULT NULL,
  `CGST_Rate` varchar(100) DEFAULT NULL,
  `CGST_Amt` varchar(100) DEFAULT NULL,
  `IGST_Rate` varchar(100) DEFAULT NULL,
  `IGST_Amt` varchar(100) DEFAULT NULL,
  `Total_GST` varchar(100) DEFAULT NULL,
  `NET` varchar(100) DEFAULT NULL,
  `Preferred_currency` varchar(100) DEFAULT NULL,
  `ROE` varchar(100) DEFAULT NULL,
  `TotalAmount` varchar(100) DEFAULT NULL,
  `Carrier` varchar(200) NOT NULL,
  `PaxType` varchar(100) DEFAULT NULL,
  `Flight_Details` text,
  `TicketStatus` varchar(200) DEFAULT NULL,
  `PaymentId` varchar(100) DEFAULT NULL,
  `TourCode` varchar(100) DEFAULT NULL,
  `Endorsement` varchar(100) DEFAULT NULL,
  `Remarks` varchar(200) DEFAULT NULL,
  `Agent_Booking_Remarks` varchar(200) DEFAULT NULL,
  `CorporateCode` varchar(200) DEFAULT NULL,
  `YQ_TAX` varchar(100) DEFAULT NULL,
  `YR_TAX` varchar(200) DEFAULT NULL,
  `K3_GST` varchar(200) DEFAULT NULL,
  `TRA_Fee` varchar(100) DEFAULT NULL,
  `ServiceTaxRAF` varchar(100) DEFAULT NULL,
  `SwachhBharatCessAmount` varchar(200) DEFAULT NULL,
  `KrishiKalyanCessAmount` varchar(200) DEFAULT NULL,
  `isByAgentCreditCard` varchar(200) DEFAULT NULL,
  `AgentCreditCardAmount` varchar(100) DEFAULT NULL,
  `TicketSaleAmount` varchar(100) DEFAULT NULL,
  `OXITRXID` varchar(100) DEFAULT NULL,
  `PNR` varchar(100) DEFAULT NULL,
  `Credit_Shell_PNR` varchar(100) DEFAULT NULL,
  `Credit_Shell_Amount` varchar(100) DEFAULT NULL,
  `IsAmendment` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `mobileno` varchar(20) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A' COMMENT 'A->active,D->Deactive',
  `created` datetime NOT NULL,
  `modify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_aadharpay`
--
ALTER TABLE `tbl_aadharpay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_otp`
--
ALTER TABLE `tbl_admin_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_aeps`
--
ALTER TABLE `tbl_aeps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_aepscms`
--
ALTER TABLE `tbl_aepscms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_aepsrbl`
--
ALTER TABLE `tbl_aepsrbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_airtel`
--
ALTER TABLE `tbl_airtel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_airtelswiggy`
--
ALTER TABLE `tbl_airtelswiggy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cashdeposit`
--
ALTER TABLE `tbl_cashdeposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cashdeposit_otp`
--
ALTER TABLE `tbl_cashdeposit_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cpos_mpos`
--
ALTER TABLE `tbl_cpos_mpos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_euronet`
--
ALTER TABLE `tbl_euronet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fino`
--
ALTER TABLE `tbl_fino`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_finoaeps`
--
ALTER TABLE `tbl_finoaeps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_finomatm`
--
ALTER TABLE `tbl_finomatm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_indicore`
--
ALTER TABLE `tbl_indicore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_irctcbooking`
--
ALTER TABLE `tbl_irctcbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_irctc_cancelrefundreport`
--
ALTER TABLE `tbl_irctc_cancelrefundreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jri`
--
ALTER TABLE `tbl_jri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mobikwikwallet`
--
ALTER TABLE `tbl_mobikwikwallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_moduleinnerpage`
--
ALTER TABLE `tbl_moduleinnerpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modulemaster`
--
ALTER TABLE `tbl_modulemaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pancard`
--
ALTER TABLE `tbl_pancard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pggatway`
--
ALTER TABLE `tbl_pggatway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_razorpay`
--
ALTER TABLE `tbl_razorpay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tbo`
--
ALTER TABLE `tbl_tbo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_aadharpay`
--
ALTER TABLE `tbl_aadharpay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_admin_otp`
--
ALTER TABLE `tbl_admin_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_aeps`
--
ALTER TABLE `tbl_aeps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_aepscms`
--
ALTER TABLE `tbl_aepscms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_aepsrbl`
--
ALTER TABLE `tbl_aepsrbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_airtel`
--
ALTER TABLE `tbl_airtel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_airtelswiggy`
--
ALTER TABLE `tbl_airtelswiggy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cashdeposit`
--
ALTER TABLE `tbl_cashdeposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cashdeposit_otp`
--
ALTER TABLE `tbl_cashdeposit_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cpos_mpos`
--
ALTER TABLE `tbl_cpos_mpos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_euronet`
--
ALTER TABLE `tbl_euronet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_fino`
--
ALTER TABLE `tbl_fino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_finoaeps`
--
ALTER TABLE `tbl_finoaeps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_finomatm`
--
ALTER TABLE `tbl_finomatm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_indicore`
--
ALTER TABLE `tbl_indicore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_irctcbooking`
--
ALTER TABLE `tbl_irctcbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_irctc_cancelrefundreport`
--
ALTER TABLE `tbl_irctc_cancelrefundreport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_jri`
--
ALTER TABLE `tbl_jri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_mobikwikwallet`
--
ALTER TABLE `tbl_mobikwikwallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_moduleinnerpage`
--
ALTER TABLE `tbl_moduleinnerpage`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_modulemaster`
--
ALTER TABLE `tbl_modulemaster`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_pancard`
--
ALTER TABLE `tbl_pancard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pggatway`
--
ALTER TABLE `tbl_pggatway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_razorpay`
--
ALTER TABLE `tbl_razorpay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tbo`
--
ALTER TABLE `tbl_tbo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
