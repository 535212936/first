package common.util;

import java.util.List;

public class PageUtil<T> {
	//��ǰҳ
	private Integer  page;
	//ÿҳ����
	private Integer pageSize;
	//��ʼ����
	private Integer  start;
	//������
	private Integer  total;
	//�������
	private List<T>  rows;
	
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getStart() {
		
		start  =  (page-1)*pageSize;
		
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public List<T> getRows() {
		return rows;
	}
	public void setRows(List<T> rows) {
		this.rows = rows;
	}

	
}
