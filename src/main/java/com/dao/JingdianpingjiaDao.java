package com.dao;

import com.entity.JingdianpingjiaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JingdianpingjiaVO;
import com.entity.view.JingdianpingjiaView;


/**
 * 景点评价
 * 
 * @author 
 * @email 
 * @date 2021-01-29 20:04:02
 */
public interface JingdianpingjiaDao extends BaseMapper<JingdianpingjiaEntity> {
	
	List<JingdianpingjiaVO> selectListVO(@Param("ew") Wrapper<JingdianpingjiaEntity> wrapper);
	
	JingdianpingjiaVO selectVO(@Param("ew") Wrapper<JingdianpingjiaEntity> wrapper);
	
	List<JingdianpingjiaView> selectListView(@Param("ew") Wrapper<JingdianpingjiaEntity> wrapper);

	List<JingdianpingjiaView> selectListView(Pagination page,@Param("ew") Wrapper<JingdianpingjiaEntity> wrapper);
	
	JingdianpingjiaView selectView(@Param("ew") Wrapper<JingdianpingjiaEntity> wrapper);
	
}
