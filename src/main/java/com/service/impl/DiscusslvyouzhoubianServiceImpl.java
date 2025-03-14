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


import com.dao.DiscusslvyouzhoubianDao;
import com.entity.DiscusslvyouzhoubianEntity;
import com.service.DiscusslvyouzhoubianService;
import com.entity.vo.DiscusslvyouzhoubianVO;
import com.entity.view.DiscusslvyouzhoubianView;

@Service("discusslvyouzhoubianService")
public class DiscusslvyouzhoubianServiceImpl extends ServiceImpl<DiscusslvyouzhoubianDao, DiscusslvyouzhoubianEntity> implements DiscusslvyouzhoubianService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusslvyouzhoubianEntity> page = this.selectPage(
                new Query<DiscusslvyouzhoubianEntity>(params).getPage(),
                new EntityWrapper<DiscusslvyouzhoubianEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusslvyouzhoubianEntity> wrapper) {
		  Page<DiscusslvyouzhoubianView> page =new Query<DiscusslvyouzhoubianView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusslvyouzhoubianVO> selectListVO(Wrapper<DiscusslvyouzhoubianEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusslvyouzhoubianVO selectVO(Wrapper<DiscusslvyouzhoubianEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusslvyouzhoubianView> selectListView(Wrapper<DiscusslvyouzhoubianEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusslvyouzhoubianView selectView(Wrapper<DiscusslvyouzhoubianEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
