package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.JingdianpingjiaDao;
import com.entity.JingdianpingjiaEntity;
import com.service.JingdianpingjiaService;
import com.entity.vo.JingdianpingjiaVO;
import com.entity.view.JingdianpingjiaView;

@Service("jingdianpingjiaService")
public class JingdianpingjiaServiceImpl extends ServiceImpl<JingdianpingjiaDao, JingdianpingjiaEntity> implements JingdianpingjiaService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JingdianpingjiaEntity> page = this.selectPage(
                new Query<JingdianpingjiaEntity>(params).getPage(),
                new EntityWrapper<JingdianpingjiaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JingdianpingjiaEntity> wrapper) {
		  Page<JingdianpingjiaView> page =new Query<JingdianpingjiaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JingdianpingjiaVO> selectListVO(Wrapper<JingdianpingjiaEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JingdianpingjiaVO selectVO(Wrapper<JingdianpingjiaEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JingdianpingjiaView> selectListView(Wrapper<JingdianpingjiaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JingdianpingjiaView selectView(Wrapper<JingdianpingjiaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
