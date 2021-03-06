package cn.com.chinaebi.dz.object.dao.iface;

import java.io.Serializable;

public interface MccTypeDAO {

	public java.util.List<cn.com.chinaebi.dz.object.MccType> findAll ();


	/**
	 * Either save() or update() the given instance, depending upon the value of its identifier property. By default
	 * the instance is always saved. This behaviour may be adjusted by specifying an unsaved-value attribute of the
	 * identifier property mapping. 
	 * @param mccType a transient instance containing new or updated state 
	 */
	public void saveOrUpdate(cn.com.chinaebi.dz.object.MccType mccType);

	/**
	 * Update the persistent state associated with the given identifier. An exception is thrown if there is a persistent
	 * instance with the same identifier in the current session.
	 * @param mccType a transient instance containing updated state
	 */
	public void update(cn.com.chinaebi.dz.object.MccType mccType);

	/**
	 * Remove a persistent instance from the datastore. The argument may be an instance associated with the receiving
	 * Session or a transient instance with an identifier associated with existing persistent state. 
	 * @param mccType the instance to be removed
	 */
	public void delete(cn.com.chinaebi.dz.object.MccType mccType);


}