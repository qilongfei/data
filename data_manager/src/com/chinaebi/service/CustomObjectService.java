package com.chinaebi.service;

import java.util.List;
import java.util.Map;

import com.chinaebi.entity.CustomObject;
import com.chinaebi.utils.mybaits.Page;

public interface CustomObjectService {
	
	public Page<CustomObject> queryPageCustomObject(Page<CustomObject> page,Map<String,Object> map);
	
	public int insertCustomObject(CustomObject customObject);
	
	public int updateCustomObject(CustomObject customObject);
	
	public int deleteCustomObject(int object_id);
	
	public CustomObject queryCustomObjectById(int object_id);
	
	public List<CustomObject> queryCustomObjectList();
	
	public boolean unionCheckobjectName(CustomObject customObject);
	
	public boolean unionCheckfileAddress(CustomObject customObject);
	
	public List<CustomObject> queryCustomObjectListOfInterfaceTypeNotAll();
	/**
	 * 根据是否生成结算文件来查询系统接口配置信息
	 * @param whether_create_settle_file
	 * @return
	 */
	public List<CustomObject> queryCustomObjectByFileType(int file_type);
	/**
	 * 通过系统接口名称查询接口相关信息
	 * @param object_name
	 * @return
	 */
	public CustomObject queryCustomObjectByName(String object_name);
}
