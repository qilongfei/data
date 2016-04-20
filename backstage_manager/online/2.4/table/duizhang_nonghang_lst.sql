CREATE TABLE `duizhang_nonghang_lst` (
  `id` varchar(32) NOT NULL,
  `merCode` varchar(20) DEFAULT NULL,
  `tradingType` varchar(20) DEFAULT NULL,
  `orderId` varchar(20) DEFAULT NULL,
  `reqTime` varchar(20) DEFAULT NULL,
  `tradeAmount` varchar(20) DEFAULT NULL,
  `merAccount` varchar(20) DEFAULT NULL,
  `accountChangeAmount` varchar(20) DEFAULT NULL,
  `outAccount` varchar(20) DEFAULT NULL,
  `accountType` varchar(5) DEFAULT NULL,
  `mer_fee` varchar(20) DEFAULT NULL,
  `mer_batch_fee` varchar(20) DEFAULT NULL,
  `accounting_date` varchar(20) DEFAULT NULL,
  `hostStance` char(10) DEFAULT NULL,
  `reqSysStance` varchar(20) DEFAULT NULL,
  `oriOrderId` varchar(20) DEFAULT NULL,
  `deductSysReference` varchar(20) DEFAULT NULL,
  `dz_file_name` varchar(50) DEFAULT NULL,
  `inst_name` varchar(50) DEFAULT NULL,
  `bk_chk` int(11) DEFAULT NULL,
  `deduct_stlm_date` varchar(20) DEFAULT NULL,
  `termId` varchar(20) DEFAULT NULL,
  `process` varchar(20) DEFAULT NULL,
  `whetherTk` tinyint(1) DEFAULT NULL,
  `tradeFee` varchar(32) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


