CREATE TABLE `duizhang_szgh_lst` (
  `id` varchar(32) NOT NULL,
  `acqInstIdCode` varchar(11) DEFAULT NULL,
  `fwdInstIdCode` varchar(11) DEFAULT NULL,
  `reqSysStance` varchar(40) NOT NULL,
  `reqTime` varchar(20) NOT NULL,
  `outAccount` char(19) DEFAULT NULL,
  `tradeAmount` char(12) NOT NULL,
  `tradeFee` varchar(12) DEFAULT '0',
  `msgType` char(4) DEFAULT NULL,
  `process` varchar(6) DEFAULT NULL,
  `termId` varchar(8) DEFAULT NULL,
  `merCode` varchar(16) NOT NULL,
  `deductSysReference` varchar(12) DEFAULT NULL,
  `reqType` char(2) DEFAULT NULL,
  `authorizationCode` varchar(6) DEFAULT NULL,
  `deductSysResponse` char(2) DEFAULT NULL,
  `acceptorReceiveFee` varchar(12) DEFAULT NULL,
  `acceptorPayFee` varchar(12) DEFAULT NULL,
  `tradeAdress` varchar(40) DEFAULT NULL,
  `terminalType` char(2) DEFAULT NULL,
  `coopNo` char(5) DEFAULT NULL,
  `zoneNo` char(5) DEFAULT NULL,
  `brNo` char(5) DEFAULT NULL,
  `saccType` char(3) DEFAULT NULL,
  `setAccNo` varchar(34) DEFAULT NULL,
  `accName` varchar(128) DEFAULT NULL,
  `coopName` varchar(128) DEFAULT NULL,
  `incAmt` char(18) DEFAULT NULL,
  `gcFeeAmt` char(18) DEFAULT NULL,
  `szFeeAmt` char(18) DEFAULT NULL,
  `fwFeeAmt` char(18) DEFAULT NULL,
  `feeRate` char(5) DEFAULT NULL,
  `fwFeeRate` char(5) DEFAULT NULL,
  `drcRf` char(1) DEFAULT NULL,
  `timeStmp` char(26) DEFAULT NULL,
  `streamNo` char(9) DEFAULT NULL,
  `alternateCount1` varchar(17) DEFAULT NULL,
  `alternateCount2` varchar(17) DEFAULT NULL,
  `reserveAmountField1` varchar(32) DEFAULT NULL,
  `reserveAmountField2` varchar(32) DEFAULT NULL,
  `reserveAmountField3` varchar(32) DEFAULT NULL,
  `reserveAmountField4` varchar(32) DEFAULT NULL,
  `reserveAmountField5` varchar(32) DEFAULT NULL,
  `reserveAmountField6` varchar(32) DEFAULT NULL,
  `reserveAmountField7` varchar(32) DEFAULT NULL,
  `reserveAmountField8` varchar(32) DEFAULT NULL,
  `reserveAmountField9` varchar(32) DEFAULT NULL,
  `reserveCharacter1` varchar(200) DEFAULT NULL,
  `whetherErroeHandle` tinyint(1) DEFAULT '0',
  `dz_file_name` varchar(100) NOT NULL,
  `inst_name` varchar(64) NOT NULL,
  `bk_chk` int(11) NOT NULL DEFAULT '0',
  `deduct_stlm_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

