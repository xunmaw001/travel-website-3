package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.LvyouzhoubianEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.LvyouzhoubianVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.LvyouzhoubianView;


/**
 * 旅游周边
 *
 * @author 
 * @email 
 * @date 2021-01-29 20:04:02
 */
public interface LvyouzhoubianService extends IService<LvyouzhoubianEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<LvyouzhoubianVO> selectListVO(Wrapper<LvyouzhoubianEntity> wrapper);
   	
   	LvyouzhoubianVO selectVO(@Param("ew") Wrapper<LvyouzhoubianEntity> wrapper);
   	
   	List<LvyouzhoubianView> selectListView(Wrapper<LvyouzhoubianEntity> wrapper);
   	
   	LvyouzhoubianView selectView(@Param("ew") Wrapper<LvyouzhoubianEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<LvyouzhoubianEntity> wrapper);
   	
}

