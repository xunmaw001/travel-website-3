package com.dao;

import com.entity.LvyouzhoubianEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.LvyouzhoubianVO;
import com.entity.view.LvyouzhoubianView;


/**
 * 旅游周边
 * 
 * @author 
 * @email 
 * @date 2021-01-29 20:04:02
 */
public interface LvyouzhoubianDao extends BaseMapper<LvyouzhoubianEntity> {
	
	List<LvyouzhoubianVO> selectListVO(@Param("ew") Wrapper<LvyouzhoubianEntity> wrapper);
	
	LvyouzhoubianVO selectVO(@Param("ew") Wrapper<LvyouzhoubianEntity> wrapper);
	
	List<LvyouzhoubianView> selectListView(@Param("ew") Wrapper<LvyouzhoubianEntity> wrapper);

	List<LvyouzhoubianView> selectListView(Pagination page,@Param("ew") Wrapper<LvyouzhoubianEntity> wrapper);
	
	LvyouzhoubianView selectView(@Param("ew") Wrapper<LvyouzhoubianEntity> wrapper);
	
}
