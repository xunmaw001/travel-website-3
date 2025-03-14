package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JingdianpingjiaEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JingdianpingjiaVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JingdianpingjiaView;


/**
 * 景点评价
 *
 * @author 
 * @email 
 * @date 2021-01-29 20:04:02
 */
public interface JingdianpingjiaService extends IService<JingdianpingjiaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JingdianpingjiaVO> selectListVO(Wrapper<JingdianpingjiaEntity> wrapper);
   	
   	JingdianpingjiaVO selectVO(@Param("ew") Wrapper<JingdianpingjiaEntity> wrapper);
   	
   	List<JingdianpingjiaView> selectListView(Wrapper<JingdianpingjiaEntity> wrapper);
   	
   	JingdianpingjiaView selectView(@Param("ew") Wrapper<JingdianpingjiaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JingdianpingjiaEntity> wrapper);
   	
}

