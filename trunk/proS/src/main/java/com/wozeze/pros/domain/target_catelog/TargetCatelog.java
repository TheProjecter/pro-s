package com.wozeze.pros.domain.target_catelog;

import com.wozeze.pros.domain.BaseDomain;

public class TargetCatelog extends BaseDomain{
	
	private String cateLogId;
	private String catelogName;
	private String catelogDetail;
	
	public String getCateLogId() {
		return cateLogId;
	}
	public void setCateLogId(String cateLogId) {
		this.cateLogId = cateLogId;
	}
	public String getCatelogName() {
		return catelogName;
	}
	public void setCatelogName(String catelogName) {
		this.catelogName = catelogName;
	}
	public String getCatelogDetail() {
		return catelogDetail;
	}
	public void setCatelogDetail(String catelogDetail) {
		this.catelogDetail = catelogDetail;
	} 
}
