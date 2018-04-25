package com.jk.model;

import java.io.Serializable;
import java.util.List;

public class Tree implements Serializable {
    private static final long serialVersionUID = 2506478441525330034L;

	private Integer id;

    private String text;

    private Integer pid;

    private String url;
    
    private String state;
    
    private Boolean checked=false;
    
    private List<Tree> nodes;//子节点列表
    
    
    
    
    
    
    

    public List<Tree> getNodes() {
		return nodes;
	}

	public void setNodes(List<Tree> nodes) {
		this.nodes = nodes;
	}

	public Boolean getChecked() {
		return checked;
	}

	public void setChecked(Boolean checked) {
		this.checked = checked;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text == null ? null : text.trim();
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }
    
    

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	/* (non-Javadoc)    
	 * @see java.lang.Object#toString()    
	 */
	@Override
	public String toString() {
		return "Tree [id=" + id + ", text=" + text + ", pid=" + pid + ", url=" + url + ", state=" + state + ", checked="
				+ checked + ", nodes=" + nodes + "]";
	}




}