package com.dao;

import com.entity.DiscusstesemeishiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusstesemeishiVO;
import com.entity.view.DiscusstesemeishiView;


/**
 * 特色美食评论表
 * 
 * @author 
 * @email 
 * @date 2021-01-29 20:04:02
 */
public interface DiscusstesemeishiDao extends BaseMapper<DiscusstesemeishiEntity> {
	
	List<DiscusstesemeishiVO> selectListVO(@Param("ew") Wrapper<DiscusstesemeishiEntity> wrapper);
	
	DiscusstesemeishiVO selectVO(@Param("ew") Wrapper<DiscusstesemeishiEntity> wrapper);
	
	List<DiscusstesemeishiView> selectListView(@Param("ew") Wrapper<DiscusstesemeishiEntity> wrapper);

	List<DiscusstesemeishiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusstesemeishiEntity> wrapper);
	
	DiscusstesemeishiView selectView(@Param("ew") Wrapper<DiscusstesemeishiEntity> wrapper);
	
}
