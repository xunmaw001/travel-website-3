package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.MenpiaoyudingEntity;
import com.entity.view.MenpiaoyudingView;

import com.service.MenpiaoyudingService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 门票预订
 * 后端接口
 * @author 
 * @email 
 * @date 2021-01-29 20:04:02
 */
@RestController
@RequestMapping("/menpiaoyuding")
public class MenpiaoyudingController {
    @Autowired
    private MenpiaoyudingService menpiaoyudingService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,MenpiaoyudingEntity menpiaoyuding, HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			menpiaoyuding.setYonghuming((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<MenpiaoyudingEntity> ew = new EntityWrapper<MenpiaoyudingEntity>();
		PageUtils page = menpiaoyudingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, menpiaoyuding), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,MenpiaoyudingEntity menpiaoyuding, HttpServletRequest request){
        EntityWrapper<MenpiaoyudingEntity> ew = new EntityWrapper<MenpiaoyudingEntity>();
		PageUtils page = menpiaoyudingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, menpiaoyuding), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( MenpiaoyudingEntity menpiaoyuding){
       	EntityWrapper<MenpiaoyudingEntity> ew = new EntityWrapper<MenpiaoyudingEntity>();
      	ew.allEq(MPUtil.allEQMapPre( menpiaoyuding, "menpiaoyuding")); 
        return R.ok().put("data", menpiaoyudingService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(MenpiaoyudingEntity menpiaoyuding){
        EntityWrapper< MenpiaoyudingEntity> ew = new EntityWrapper< MenpiaoyudingEntity>();
 		ew.allEq(MPUtil.allEQMapPre( menpiaoyuding, "menpiaoyuding")); 
		MenpiaoyudingView menpiaoyudingView =  menpiaoyudingService.selectView(ew);
		return R.ok("查询门票预订成功").put("data", menpiaoyudingView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        MenpiaoyudingEntity menpiaoyuding = menpiaoyudingService.selectById(id);
        return R.ok().put("data", menpiaoyuding);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        MenpiaoyudingEntity menpiaoyuding = menpiaoyudingService.selectById(id);
        return R.ok().put("data", menpiaoyuding);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody MenpiaoyudingEntity menpiaoyuding, HttpServletRequest request){
    	menpiaoyuding.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(menpiaoyuding);

        menpiaoyudingService.insert(menpiaoyuding);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody MenpiaoyudingEntity menpiaoyuding, HttpServletRequest request){
    	menpiaoyuding.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(menpiaoyuding);

        menpiaoyudingService.insert(menpiaoyuding);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody MenpiaoyudingEntity menpiaoyuding, HttpServletRequest request){
        //ValidatorUtils.validateEntity(menpiaoyuding);
        menpiaoyudingService.updateById(menpiaoyuding);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        menpiaoyudingService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<MenpiaoyudingEntity> wrapper = new EntityWrapper<MenpiaoyudingEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			wrapper.eq("yonghuming", (String)request.getSession().getAttribute("username"));
		}

		int count = menpiaoyudingService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
