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


import com.dao.LvyouzhoubianDao;
import com.entity.LvyouzhoubianEntity;
import com.service.LvyouzhoubianService;
import com.entity.vo.LvyouzhoubianVO;
import com.entity.view.LvyouzhoubianView;

@Service("lvyouzhoubianService")
public class LvyouzhoubianServiceImpl extends ServiceImpl<LvyouzhoubianDao, LvyouzhoubianEntity> implements LvyouzhoubianService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<LvyouzhoubianEntity> page = this.selectPage(
                new Query<LvyouzhoubianEntity>(params).getPage(),
                new EntityWrapper<LvyouzhoubianEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<LvyouzhoubianEntity> wrapper) {
		  Page<LvyouzhoubianView> page =new Query<LvyouzhoubianView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<LvyouzhoubianVO> selectListVO(Wrapper<LvyouzhoubianEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public LvyouzhoubianVO selectVO(Wrapper<LvyouzhoubianEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<LvyouzhoubianView> selectListView(Wrapper<LvyouzhoubianEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public LvyouzhoubianView selectView(Wrapper<LvyouzhoubianEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
