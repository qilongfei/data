package cn.com.chinaebi.dz.object;

import cn.com.chinaebi.dz.object.base.BaseRytGonghang;



public class RytGonghang extends BaseRytGonghang {
	private static final long serialVersionUID = 1L;

/*[CONSTRUCTOR MARKER BEGIN]*/
	public RytGonghang () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public RytGonghang (java.lang.Long id) {
		super(id);
	}

	/**
	 * Constructor for required fields
	 */
	public RytGonghang (
		java.lang.Long id,
		java.lang.Integer version,
		java.lang.Integer mdate,
		java.lang.Byte type,
		java.lang.Integer gate,
		java.lang.Integer sysDate,
		java.lang.Integer initSysDate,
		java.lang.Integer sysTime,
		java.lang.Byte tstat,
		java.lang.Integer bkFlag,
		java.lang.Integer transPeriod,
		boolean whetherJs,
		boolean whetherValid,
		java.lang.Integer whetherErroeHandle,
		boolean whetherRiqie,
		java.lang.Integer bankId) {

		super (
			id,
			version,
			mdate,
			type,
			gate,
			sysDate,
			initSysDate,
			sysTime,
			tstat,
			bkFlag,
			transPeriod,
			whetherJs,
			whetherValid,
			whetherErroeHandle,
			whetherRiqie,
			bankId);
	}

/*[CONSTRUCTOR MARKER END]*/


}