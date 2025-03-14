package com.entity.vo;

import com.entity.TesemeishiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 特色美食
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-01-29 20:04:02
 */
public class TesemeishiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 美食类型
	 */
	
	private String meishileixing;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 打卡地点
	 */
	
	private String dakadidian;
		
	/**
	 * 人均消费
	 */
	
	private String renjunxiaofei;
		
	/**
	 * 美食介绍
	 */
	
	private String meishijieshao;
				
	
	/**
	 * 设置：美食类型
	 */
	 
	public void setMeishileixing(String meishileixing) {
		this.meishileixing = meishileixing;
	}
	
	/**
	 * 获取：美食类型
	 */
	public String getMeishileixing() {
		return meishileixing;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：打卡地点
	 */
	 
	public void setDakadidian(String dakadidian) {
		this.dakadidian = dakadidian;
	}
	
	/**
	 * 获取：打卡地点
	 */
	public String getDakadidian() {
		return dakadidian;
	}
				
	
	/**
	 * 设置：人均消费
	 */
	 
	public void setRenjunxiaofei(String renjunxiaofei) {
		this.renjunxiaofei = renjunxiaofei;
	}
	
	/**
	 * 获取：人均消费
	 */
	public String getRenjunxiaofei() {
		return renjunxiaofei;
	}
				
	
	/**
	 * 设置：美食介绍
	 */
	 
	public void setMeishijieshao(String meishijieshao) {
		this.meishijieshao = meishijieshao;
	}
	
	/**
	 * 获取：美食介绍
	 */
	public String getMeishijieshao() {
		return meishijieshao;
	}
			
}
