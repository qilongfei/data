package cn.com.chinaebi.dz.file.parsing;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Session;

import cn.com.chinaebi.dz.base.DzFileParsing;
import cn.com.chinaebi.dz.object.BankInst;
import cn.com.chinaebi.dz.object.dao.HlogDAO;
import cn.com.chinaebi.dz.object.util.FileUtil;

/**
 * 民生银行对账文件解析类
 * @author sp
 *
 */
public class Ryf_MsyhParsing  implements DzFileParsing{
	private static final Log log = LogFactory.getLog(Ryf_MsyhParsing.class);
	
	private static cn.com.chinaebi.dz.object.dao.iface.HlogDAO hlogDAO = HlogDAO.getInstance();
	
	private static String deduct_stlm_date = "";
	
	 public void parseBankDzFile(String filePath,String date,BankInst bankInst)throws Exception{
			try{
				if (StringUtils.isNotBlank(date)) {
					deduct_stlm_date = date;
					File file = new File(filePath);
		            if(file.isFile() && file.exists()){
		            	parserBankFile(file,bankInst.getTkContext(),bankInst.getTkType().toString(),bankInst.getTkColumn()==null?0:bankInst.getTkColumn(),bankInst.getStartRow(),bankInst.getId(),bankInst.getBankName(),bankInst.isIsTk());
		            }else{
		    			log.info("找不到指定的文件");
		    			throw new FileNotFoundException();
			    	}
				}
			}catch(Exception e){
				log.error("读取文件内容出错"+e);
	        	throw e;
			}
		 }
		 private static void parserBankFile(File file,String tk_context,String tk_type,int tk_column,int start_row,int bankId,String bankName,boolean whetherTkFlag)throws Exception{
			String encoding="gbk";
			Connection conn = null;
			Session session = null;
			PreparedStatement stmt = null;
			try {
				String[] bankData = new String[13];
				
				int readyInsertSqlNum = 0;
				boolean insert_flag = false;
				int totalExcuteNum = 0;
				int sucessExcuteNum = 0;
				
				String baseSql = "insert ignore into duizhang_msyh_lst(id,reqSysStance,tradeAmount,tradeDate,tradeTime,payType,reqTime,orderId,dz_file_name,inst_name,bk_chk,deduct_stlm_date,whetherTk) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
				
				session = hlogDAO.getCurrentSession();
				conn = session.connection();
				conn.setAutoCommit(false);
				stmt = conn.prepareStatement(baseSql);
				
				InputStreamReader read = new InputStreamReader(new FileInputStream(file),encoding);//考虑到编码格式
		        BufferedReader bufferedReader = new BufferedReader(read);
		        String lineTxt = null;
	            String[] dataArr = null;
	            int io= 1;
	            
		        while((lineTxt = bufferedReader.readLine()) != null){
		        	io++;
		        	if(!StringUtils.isBlank(lineTxt)){
		        		if(io > start_row){
		        			dataArr = lineTxt.split(",");
		        			if(dataArr != null && dataArr.length > 4){
		        				if("消费".equals(trimMySelf(dataArr[4]))){//民生银行（仅处理交易类型为消费的数据）
		        					bankData[0] = bankId + trimMySelf(formatString(dataArr[0])) + formatString(dataArr[2]) + formatString(dataArr[3]);//主键组成元素：网关号+流水号+交易时间
			        				bankData[1] = trimMySelf(formatString(dataArr[0]));
			        				bankData[2] = trimMySelf(dataArr[1]);
			        				bankData[3] = trimMySelf(dataArr[2]);
			        				bankData[4] = trimMySelf(dataArr[3]);
			        				bankData[5] = trimMySelf(dataArr[4]);
			        				bankData[6] = formatString(dataArr[2]) + formatString(dataArr[3]);
			        				bankData[7] = trimMySelf(formatString(dataArr[0]));
			        				bankData[8] = file.getName();
			        				bankData[9] = bankName;
			        				bankData[10] = "0";
			        				bankData[11] = deduct_stlm_date;
			        				bankData[12] = FileUtil.getBankInstWhetherTk(dataArr, tk_type, tk_column, tk_context, bankName,whetherTkFlag) + "";

			        				totalExcuteNum++;
									insert_flag = hlogDAO.saveBankData(bankData,stmt);
									if(insert_flag){
										sucessExcuteNum ++;
										readyInsertSqlNum ++;
									}
									if(readyInsertSqlNum % 1000 == 0){
										stmt.executeBatch();
									}
		        				}
		        			}
		        		}
		        	}
		        }
	            bufferedReader.close();
	            read.close();
	            
	            stmt.executeBatch();
				conn.commit();
				
	 	        if(totalExcuteNum != sucessExcuteNum){
	             	log.debug(bankName+"-----"+deduct_stlm_date+"----对账单解析失败");
	             	throw new Exception();
	             }else{
	             	log.info(bankName+"-----"+deduct_stlm_date+"----对账单解析成功");
	             }
			} catch (Exception e) {
				log.error(e);
				throw e;
			}finally{
				if(conn != null){
					conn.close();
				}
				if (null != session){
					session.close();
				}
			}
		 }
		 
	    private static String trimMySelf(String str){
	    	return "".equals(str)||str==null||"".equals(str.trim()) ?null:str.trim();
	    }
	    
	    private static String formatString(String str){
	    	if(StringUtils.isNotBlank(str)){
	    		str = str.replaceAll("\'", "").replaceAll("\"", "").replaceAll("	", "").trim();
	    		return str;
	    	}
	    	return "";
	    }

}
