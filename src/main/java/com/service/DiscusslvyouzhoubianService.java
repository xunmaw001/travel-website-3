package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusslvyouzhoubianEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusslvyouzhoubianVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusslvyouzhoubianView;


/**
 * 旅游周边评论表
 *
 * @author 
 * @email 
 * @date 2021-01-29 20:04:02
 */
public interface DiscusslvyouzhoubianService extends IService<DiscusslvyouzhoubianEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusslvyouzhoubianVO> selectListVO(Wrapper<DiscusslvyouzhoubianEntity> wrapper);
   	
   	DiscusslvyouzhoubianVO selectVO(@Param("ew") Wrapper<DiscusslvyouzhoubianEntity> wrapper);
   	
   	List<DiscusslvyouzhoubianView> selectListView(Wrapper<DiscusslvyouzhoubianEntity> wrapper);
   	
   	DiscusslvyouzhoubianView selectView(@Param("ew") Wrapper<DiscusslvyouzhoubianEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusslvyouzhoubianEntity> wrapper);
   	
}

