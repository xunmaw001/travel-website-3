package com.dao;

import com.entity.DiscusslvyouzhoubianEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusslvyouzhoubianVO;
import com.entity.view.DiscusslvyouzhoubianView;


/**
 * 旅游周边评论表
 * 
 * @author 
 * @email 
 * @date 2021-01-29 20:04:02
 */
public interface DiscusslvyouzhoubianDao extends BaseMapper<DiscusslvyouzhoubianEntity> {
	
	List<DiscusslvyouzhoubianVO> selectListVO(@Param("ew") Wrapper<DiscusslvyouzhoubianEntity> wrapper);
	
	DiscusslvyouzhoubianVO selectVO(@Param("ew") Wrapper<DiscusslvyouzhoubianEntity> wrapper);
	
	List<DiscusslvyouzhoubianView> selectListView(@Param("ew") Wrapper<DiscusslvyouzhoubianEntity> wrapper);

	List<DiscusslvyouzhoubianView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusslvyouzhoubianEntity> wrapper);
	
	DiscusslvyouzhoubianView selectView(@Param("ew") Wrapper<DiscusslvyouzhoubianEntity> wrapper);
	
}
