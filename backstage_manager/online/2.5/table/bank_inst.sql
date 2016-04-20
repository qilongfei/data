INSERT INTO `bank_inst` (`bank_id`, `bank_name`, `parse_dz_file_class`, `trade_dz_impl_class`, `dz_data_tableName`, `ftp_dz_file_path`, `dz_file_name_pattern`, `dz_file_path`, `original_data_tableName`, `riqie_original_tableName`, `tk_tableName`, `inst_entity_name`, `bank_entity_name`, `start_row`, `isTk`, `tk_type`, `tk_context`, `tk_column`, `bank_type`, `whether_outer_dz`) VALUES (26, '北京银行vas', 'cn.com.chinaebi.dz.file.parsing.Ryf_BjyhParsing', 'cn.com.chinaebi.ryt.beijing.dz.deal.RytBeiJingBankTradeDz', 'duizhang_bjyh_vas_lst', '/bjyh', '*.xml', '/var/www/apps/java/data/bjyh_vas', 'ryt_bjyh', NULL, 'refund_log', 'cn.com.chinaebi.dz.object.RytBjyh', 'cn.com.chinaebi.dz.object.DuizhangBjyhVasLst', 0, 0, 0, '', 0, 1, 1);
INSERT INTO `bank_inst` (`bank_id`, `bank_name`, `parse_dz_file_class`, `trade_dz_impl_class`, `dz_data_tableName`, `ftp_dz_file_path`, `dz_file_name_pattern`, `dz_file_path`, `original_data_tableName`, `riqie_original_tableName`, `tk_tableName`, `inst_entity_name`, `bank_entity_name`, `start_row`, `isTk`, `tk_type`, `tk_context`, `tk_column`, `bank_type`, `whether_outer_dz`) VALUES (27, '广发银行', 'cn.com.chinaebi.dz.file.parsing.Ryf_GfyhParsing', 'cn.com.chinaebi.ryt.gfyh.dz.deal.RytGfyhBankTradeDz', 'duizhang_gfyh_lst', '/gfyh', '*.txt', '/var/www/apps/java/data/gfyh', 'ryt_gfyh', NULL, 'refund_log', 'cn.com.chinaebi.dz.object.RytGfyh', 'cn.com.chinaebi.dz.object.DuizhangGfyhLst', 2, 1, 1, '', 4, 1, 1);
INSERT INTO `bank_inst` (`bank_id`, `bank_name`, `parse_dz_file_class`, `trade_dz_impl_class`, `dz_data_tableName`, `ftp_dz_file_path`, `dz_file_name_pattern`, `dz_file_path`, `original_data_tableName`, `riqie_original_tableName`, `tk_tableName`, `inst_entity_name`, `bank_entity_name`, `start_row`, `isTk`, `tk_type`, `tk_context`, `tk_column`, `bank_type`, `whether_outer_dz`) VALUES (28, '光大银行', 'cn.com.chinaebi.dz.file.parsing.Ryf_GdyhParsing', 'cn.com.chinaebi.ryt.gdyh.dz.deal.RytGdyhBankTradeDz', 'duizhang_gdyh_lst', '/gdyh', '*.txt', '/var/www/apps/java/data/gdyh', 'ryt_gdyh', NULL, 'refund_log', 'cn.com.chinaebi.dz.object.RytGdyh', 'cn.com.chinaebi.dz.object.DuizhangGdyhLst', 1, 1, 2, 'ZF02', 0, 1, 1);
INSERT INTO `bank_inst` (`bank_id`, `bank_name`, `parse_dz_file_class`, `trade_dz_impl_class`, `dz_data_tableName`, `ftp_dz_file_path`, `dz_file_name_pattern`, `dz_file_path`, `original_data_tableName`, `riqie_original_tableName`, `tk_tableName`, `inst_entity_name`, `bank_entity_name`, `start_row`, `isTk`, `tk_type`, `tk_context`, `tk_column`, `bank_type`, `whether_outer_dz`) VALUES (29, '河北银行', 'cn.com.chinaebi.dz.file.parsing.Ryf_HbyhParsing', 'cn.com.chinaebi.ryt.hebei.dz.deal.RytHeiBeiyhBankTradeDz', 'duizhang_hbyh_lst', '/hbyh', '*.csv', '/var/www/apps/java/data/hbyh', 'ryt_hebei_yh', NULL, 'refund_log', 'cn.com.chinaebi.dz.object.RytHebeiYh', 'cn.com.chinaebi.dz.object.DuizhangHbyhLst', 2, 0, 0, '', 0, 1, 1);
INSERT INTO `bank_inst` (`bank_id`, `bank_name`, `parse_dz_file_class`, `trade_dz_impl_class`, `dz_data_tableName`, `ftp_dz_file_path`, `dz_file_name_pattern`, `dz_file_path`, `original_data_tableName`, `riqie_original_tableName`, `tk_tableName`, `inst_entity_name`, `bank_entity_name`, `start_row`, `isTk`, `tk_type`, `tk_context`, `tk_column`, `bank_type`, `whether_outer_dz`) VALUES (30, '恒丰银行', 'cn.com.chinaebi.dz.file.parsing.Ryf_HfyhParsing', 'cn.com.chinaebi.ryt.hengfeng.dz.deal.RytHengFngyhBankTradeDz', 'duizhang_hfyh_lst', '/hfyh', '*恒丰.xls', '/var/www/apps/java/data/hfyh', 'ryt_hengfeng_yh', NULL, 'refund_log', 'cn.com.chinaebi.dz.object.RytHengfengYh', 'cn.com.chinaebi.dz.object.DuizhangHfyhLst', 2, 1, 1, '', 7, 1, 1);
INSERT INTO `bank_inst` (`bank_id`, `bank_name`, `parse_dz_file_class`, `trade_dz_impl_class`, `dz_data_tableName`, `ftp_dz_file_path`, `dz_file_name_pattern`, `dz_file_path`, `original_data_tableName`, `riqie_original_tableName`, `tk_tableName`, `inst_entity_name`, `bank_entity_name`, `start_row`, `isTk`, `tk_type`, `tk_context`, `tk_column`, `bank_type`, `whether_outer_dz`) VALUES (31, '江苏银行', 'cn.com.chinaebi.dz.file.parsing.Ryf_JiangSuyhParsing', 'cn.com.chinaebi.ryt.jiangsu.dz.deal.RytJiangSuBankTradeDz', 'duizhang_jiangSuyh_lst', '/jiangsuyh', '*.txt', '/var/www/apps/java/data/jiangSuyh', 'ryt_jiangsu_yh', NULL, 'refund_log', 'cn.com.chinaebi.dz.object.RytJiangsuYh', 'cn.com.chinaebi.dz.object.DuizhangJiangsuyhLst', 3, 1, 2, '退款', 1, 1, 1);
INSERT INTO `bank_inst` (`bank_id`, `bank_name`, `parse_dz_file_class`, `trade_dz_impl_class`, `dz_data_tableName`, `ftp_dz_file_path`, `dz_file_name_pattern`, `dz_file_path`, `original_data_tableName`, `riqie_original_tableName`, `tk_tableName`, `inst_entity_name`, `bank_entity_name`, `start_row`, `isTk`, `tk_type`, `tk_context`, `tk_column`, `bank_type`, `whether_outer_dz`) VALUES (32, '民生银行', 'cn.com.chinaebi.dz.file.parsing.Ryf_MsyhParsing', 'cn.com.chinaebi.ryt.msyh.dz.deal.RytMsBankTradeDz', 'duizhang_msyh_lst', '/msyh', '*.csv', '/var/www/apps/java/data/msyh', 'ryt_msyh', NULL, 'refund_log', 'cn.com.chinaebi.dz.object.RytMsyh', 'cn.com.chinaebi.dz.object.DuizhangMsyhLst', 9, 0, 0, '', 0, 1, 1);
INSERT INTO `bank_inst` (`bank_id`, `bank_name`, `parse_dz_file_class`, `trade_dz_impl_class`, `dz_data_tableName`, `ftp_dz_file_path`, `dz_file_name_pattern`, `dz_file_path`, `original_data_tableName`, `riqie_original_tableName`, `tk_tableName`, `inst_entity_name`, `bank_entity_name`, `start_row`, `isTk`, `tk_type`, `tk_context`, `tk_column`, `bank_type`, `whether_outer_dz`) VALUES (34, '青岛银行', 'cn.com.chinaebi.dz.file.parsing.Ryf_QdyhParsing', 'cn.com.chinaebi.ryt.qingdao.dz.deal.RytQingDaoBankTradeDz', 'duizhang_qdyh_lst', '/qdyh', '*.xls', '/var/www/apps/java/data/qdyh', 'ryt_qingdao_yh', NULL, 'refund_log', 'cn.com.chinaebi.dz.object.RytQingdaoYh', 'cn.com.chinaebi.dz.object.DuizhangQdyhLst', 2, 1, 2, '订单退款', 8, 1, 1);
INSERT INTO `bank_inst` (`bank_id`, `bank_name`, `parse_dz_file_class`, `trade_dz_impl_class`, `dz_data_tableName`, `ftp_dz_file_path`, `dz_file_name_pattern`, `dz_file_path`, `original_data_tableName`, `riqie_original_tableName`, `tk_tableName`, `inst_entity_name`, `bank_entity_name`, `start_row`, `isTk`, `tk_type`, `tk_context`, `tk_column`, `bank_type`, `whether_outer_dz`) VALUES (35, '浙商银行', 'cn.com.chinaebi.dz.file.parsing.Ryf_ZsyhParsing', 'cn.com.chinaebi.ryt.zheshang.dz.deal.RytZheShangBankTradeDz', 'duizhang_zsyh_lst', '/zsyh', '*.csv', '/var/www/apps/java/data/zsyh', 'ryt_zheshang_yh', NULL, 'refund_log', 'cn.com.chinaebi.dz.object.RytZheshangYh', 'cn.com.chinaebi.dz.object.DuizhangZsyhLst', 12, 1, 2, '2', 5, 1, 1);
INSERT INTO `bank_inst` (`bank_id`, `bank_name`, `parse_dz_file_class`, `trade_dz_impl_class`, `dz_data_tableName`, `ftp_dz_file_path`, `dz_file_name_pattern`, `dz_file_path`, `original_data_tableName`, `riqie_original_tableName`, `tk_tableName`, `inst_entity_name`, `bank_entity_name`, `start_row`, `isTk`, `tk_type`, `tk_context`, `tk_column`, `bank_type`, `whether_outer_dz`) VALUES (36, '齐鲁银行', 'cn.com.chinaebi.dz.file.parsing.Ryf_QlyhParsing', 'cn.com.chinaebi.ryt.qilu.dz.deal.RytQiLuyhBankTradeDz', 'duizhang_qlyh_lst', '/qlyh', '*.csv', '/var/www/apps/java/data/qlyh', 'ryt_qilu_yh', NULL, 'refund_log', 'cn.com.chinaebi.dz.object.RytQiluYh', 'cn.com.chinaebi.dz.object.DuizhangQlyhLst', 2, 1, 2, '全额退款', 7, 1, 1);
INSERT INTO `bank_inst` (`bank_id`, `bank_name`, `parse_dz_file_class`, `trade_dz_impl_class`, `dz_data_tableName`, `ftp_dz_file_path`, `dz_file_name_pattern`, `dz_file_path`, `original_data_tableName`, `riqie_original_tableName`, `tk_tableName`, `inst_entity_name`, `bank_entity_name`, `start_row`, `isTk`, `tk_type`, `tk_context`, `tk_column`, `bank_type`, `whether_outer_dz`) VALUES (37, '云南农信社', 'cn.com.chinaebi.dz.file.parsing.Ryf_YnnxsParsing', 'cn.com.chinaebi.ryt.yunnannxs.dz.deal.RytYunNanNxsTradeDz', 'duizhang_ynnxs_lst', '/yunnannxs', '*.txt', '/var/www/apps/java/data/ynnxs', 'ryt_yunnan_nxs', NULL, 'refund_log', 'cn.com.chinaebi.dz.object.RytYunnanNxs', 'cn.com.chinaebi.dz.object.DuizhangYnnxsLst', 2, 0, 0, NULL, 0, 1, 1);
INSERT INTO `bank_inst` (`bank_id`, `bank_name`, `parse_dz_file_class`, `trade_dz_impl_class`, `dz_data_tableName`, `ftp_dz_file_path`, `dz_file_name_pattern`, `dz_file_path`, `original_data_tableName`, `riqie_original_tableName`, `tk_tableName`, `inst_entity_name`, `bank_entity_name`, `start_row`, `isTk`, `tk_type`, `tk_context`, `tk_column`, `bank_type`, `whether_outer_dz`) VALUES (38, '账户系统', 'cn.com.chinaebi.dz.file.parsing.Ryf_ZhxtParsing', 'cn.com.chinaebi.ryt.zhxt.dz.deal.RytZhxtSysTradeDz', 'duizhang_zhxt_lst', '/zhxt', '*.xlsx', '/var/www/apps/java/data/zhanghuxt', 'ryt_zhxt', NULL, 'refund_log', 'cn.com.chinaebi.dz.object.RytZhxt', 'cn.com.chinaebi.dz.object.DuizhangZhxtLst', 2, 0, 0, NULL, 0, 1, 1);
