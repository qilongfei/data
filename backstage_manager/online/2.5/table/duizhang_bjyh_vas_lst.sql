CREATE TABLE `duizhang_bjyh_vas_lst` (
  `id` varchar(100) NOT NULL,
  `orderId` varchar(50) DEFAULT NULL,
  `reqSysStance` varchar(50) DEFAULT NULL,
  `reqTime` varchar(20) DEFAULT NULL,
  `tradeAmount` varchar(50) DEFAULT NULL,
  `tradeFee` varchar(20) DEFAULT '0.00',
  `bk_chk` int(11) DEFAULT '0',
  `deduct_stlm_date` varchar(20) DEFAULT NULL,
  `whetherTk` tinyint(1) DEFAULT NULL,
  `outAccount` varchar(50) DEFAULT NULL,
  `payType` varchar(20) DEFAULT NULL,
  `dz_file_name` varchar(100) DEFAULT NULL,
  `inst_name` varchar(20) DEFAULT NULL,
  `deductSysReference` varchar(20) DEFAULT NULL,
  `termId` varchar(20) DEFAULT NULL,
  `merCode` varchar(20) DEFAULT NULL,
  `process` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deduct_stlm_date_bk_chk_index` (`deduct_stlm_date`,`bk_chk`),
  KEY `reqSysStance_index` (`reqSysStance`),
  KEY `orderId_index` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

