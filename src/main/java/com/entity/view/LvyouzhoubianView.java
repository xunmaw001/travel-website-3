package com.entity.view;

import com.entity.LvyouzhoubianEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 旅游周边
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-29 20:04:02
 */
@TableName("lvyouzhoubian")
public class LvyouzhoubianView  extends LvyouzhoubianEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public LvyouzhoubianView(){
	}
 
 	public LvyouzhoubianView(LvyouzhoubianEntity lvyouzhoubianEntity){
 	try {
			BeanUtils.copyProperties(this, lvyouzhoubianEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
