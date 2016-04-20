CREATE TABLE `ryt_pufa` (
  `tseq` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `ip` int(10) unsigned DEFAULT NULL,
  `mdate` int(11) NOT NULL,
  `mid` varchar(20) DEFAULT NULL,
  `bid` varchar(20) DEFAULT NULL,
  `oid` varchar(30) DEFAULT NULL,
  `amount` bigint(20) DEFAULT '0',
  `pay_amt` bigint(20) DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `gate` int(11) NOT NULL,
  `sys_date` int(11) NOT NULL,
  `init_sys_date` int(11) NOT NULL,
  `sys_time` int(11) NOT NULL,
  `batch` varchar(30) DEFAULT '0',
  `fee_amt` int(11) DEFAULT '0',
  `bank_fee` int(11) DEFAULT '0',
  `tstat` tinyint(4) NOT NULL DEFAULT '0',
  `bk_flag` int(11) NOT NULL DEFAULT '0',
  `org_seq` bigint(20) DEFAULT '0',
  `ref_seq` bigint(20) DEFAULT '0',
  `refund_amt` bigint(20) DEFAULT '0',
  `mer_priv` varchar(120) DEFAULT NULL,
  `bk_send` int(11) DEFAULT '0',
  `bk_recv` int(11) DEFAULT '0',
  `bk_url` varchar(120) DEFAULT NULL,
  `fg_url` varchar(120) DEFAULT NULL,
  `bk_chk` tinyint(4) DEFAULT '0',
  `bk_date` int(11) DEFAULT '0',
  `bk_seq1` varchar(24) DEFAULT NULL,
  `bk_seq2` varchar(24) DEFAULT NULL,
  `bk_resp` varchar(6) DEFAULT NULL,
  `mobile_no` varchar(12) DEFAULT NULL,
  `trans_period` int(11) NOT NULL DEFAULT '0',
  `card_no` varchar(100) DEFAULT NULL,
  `error_code` varchar(10) DEFAULT '000000',
  `author_type` int(4) DEFAULT NULL,
  `phone_no` varchar(12) DEFAULT '',
  `oper_id` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT '0',
  `pre_amt` int(11) DEFAULT '0',
  `bk_fee_model` varchar(120) DEFAULT '',
  `pre_amt1` int(11) DEFAULT '0',
  `error_msg` varchar(120) DEFAULT '',
  `p1` varchar(30) DEFAULT '',
  `p2` varchar(30) DEFAULT '',
  `p3` varchar(30) DEFAULT '',
  `p4` varchar(30) DEFAULT '',
  `p5` varchar(30) DEFAULT '',
  `p6` varchar(30) DEFAULT '',
  `p7` varchar(30) DEFAULT '',
  `p8` varchar(30) DEFAULT '',
  `p9` varchar(30) DEFAULT '',
  `p10` varchar(30) DEFAULT '',
  `p11` varchar(30) DEFAULT '',
  `p12` varchar(30) DEFAULT '',
  `p13` varchar(30) DEFAULT '',
  `p14` varchar(30) DEFAULT '',
  `p15` varchar(30) DEFAULT '',
  `is_liq` tinyint(4) DEFAULT '0',
  `is_notice` tinyint(4) DEFAULT '0',
  `data_source` tinyint(4) DEFAULT '0',
  `currency` varchar(2) DEFAULT '01',
  `exchange_rate` decimal(10,4) DEFAULT '1.0000',
  `againPay_date` int(10) DEFAULT NULL,
  `againPay_status` int(10) DEFAULT '0',
  `whetherJs` tinyint(1) NOT NULL DEFAULT '0',
  `whetherValid` tinyint(1) NOT NULL DEFAULT '0',
  `whetherErroeHandle` int(11) NOT NULL DEFAULT '0',
  `whetherRiqie` tinyint(1) NOT NULL DEFAULT '0',
  `whetherQs` tinyint(1) DEFAULT '0',
  `mer_fee` double(8,2) DEFAULT '0.00',
  `zf_fee` double(8,2) DEFAULT '0.00',
  `zf_file_fee` varchar(12) DEFAULT '0',
  `zf_fee_bj` int(1) DEFAULT '0',
  `deduct_stlm_date` int(11) DEFAULT '0',
  `whetherAccessStance` tinyint(1) DEFAULT '0',
  `bank_id` int(11) NOT NULL,
  PRIMARY KEY (`tseq`),
  UNIQUE KEY `mdate` (`mid`,`oid`,`mdate`),
  KEY `sys_date` (`sys_date`),
  KEY `bk_chk` (`bk_chk`),
  KEY `whetherQs` (`whetherQs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;