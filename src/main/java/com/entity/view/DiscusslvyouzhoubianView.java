package com.entity.view;

import com.entity.DiscusslvyouzhoubianEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 旅游周边评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-29 20:04:02
 */
@TableName("discusslvyouzhoubian")
public class DiscusslvyouzhoubianView  extends DiscusslvyouzhoubianEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscusslvyouzhoubianView(){
	}
 
 	public DiscusslvyouzhoubianView(DiscusslvyouzhoubianEntity discusslvyouzhoubianEntity){
 	try {
			BeanUtils.copyProperties(this, discusslvyouzhoubianEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
