package com.jk.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk.dao.ResumeMapper;
import com.jk.dao.ResumebMapper;
import com.jk.dao.ResumecMapper;
import com.jk.dao.ResumedMapper;
import com.jk.dao.resumecompanyMapper;
import com.jk.model.Resume;
import com.jk.model.Resumeb;
import com.jk.model.Resumec;
import com.jk.model.Resumed;
import com.jk.model.resumecompany;
import com.jk.service.resumeservice;

@Service("resumeservice")
public class resumeImpl implements resumeservice {
	
	@Autowired
	private resumecompanyMapper resumecompanyMapper;
	@Autowired
	private ResumeMapper resumedao;
	@Autowired
	private ResumebMapper resumedaob;
	@Autowired
	private ResumecMapper resumedaoc;
	@Autowired
	private ResumedMapper resumedaod;
	@Autowired
	private resumecompanyMapper recomdao;

	@Override
	public void addresume(Resume resume, Resumeb resumeb, Resumec resumec, Resumed resumed) {
		
		int count=resumedao.addresume(resume);
		
		int id=resume.getResumeid();
		
		resumeb.setResumeid(id);
		resumec.setResumeid(id);
		resumed.setResumeid(id);
		
		resumedaob.addresume(resumeb);
		resumedaoc.addresume(resumec);
		resumedaod.addresume(resumed);
		
		
	}

	@Override
	public List<Object> selectresume(Integer userid) {
		
		List<Object> list=resumedao.selectresume(userid);
		
		return list;
	}

	@Override
	public List selectresumeall(Integer resumeid) {
		List list=resumedao.selectresumeall(resumeid);
		return list;
	}

	@Override
	public void updateresume(Resume resume, Resumeb resumeb, Resumec resumec, Resumed resumed) {
		resumedao.updateresume(resume);
		resumedaob.updateresume(resumeb);
		resumedaoc.updateresume(resumec);
		resumedaod.updateresume(resumed);
		
		
	}
/**
 * 热度排行
 * @throws Exception 
 */
	@Override
	public List selectRedu() throws Exception {
		return resumedao.selectRedu();
	}

@Override
public void addrecom(resumecompany rescom) {
	
	recomdao.addrecom(rescom);
}
/* (non-Javadoc)    查用户邮箱
 * @see com.jk.service.resumeservice#selectMailName(java.lang.Integer)    
 */
@Override
public Resumeb selectMailName(Integer id) {
	
	Resumeb Resumeb = resumedao.selectMailName(id);
	Integer resumeid = Resumeb.getResumeid();
	resumecompanyMapper.updatezhuangtai(resumeid);
	
	return Resumeb;
	
}

}
