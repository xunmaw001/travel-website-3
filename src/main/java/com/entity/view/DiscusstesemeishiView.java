package com.entity.view;

import com.entity.DiscusstesemeishiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 特色美食评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-29 20:04:02
 */
@TableName("discusstesemeishi")
public class DiscusstesemeishiView  extends DiscusstesemeishiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscusstesemeishiView(){
	}
 
 	public DiscusstesemeishiView(DiscusstesemeishiEntity discusstesemeishiEntity){
 	try {
			BeanUtils.copyProperties(this, discusstesemeishiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
