package com.sowell.o2o.dao.impl;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.sowell.o2o.dao.IStoreUserDao;
import com.sowell.o2o.model.StoreUser;
import com.sowell.o2o.utils.DBHelper;

public class StoreUserDaoImpl implements IStoreUserDao {

	public void insert(StoreUser user){
		//查询ykat_store_user表的id编号到了多少
		String sqlQueryId = "select max(id) maxId from ykat_store_user";
		DBHelper helper = new DBHelper();
		List list = helper.query(sqlQueryId, null);
		String maxId = "";
		if(null!=list){
			Map<String, Object> map = (Map<String, Object>)list.get(0);
			maxId = map.get("maxId").toString();
		}
		
		//将StoreUser的createTime字段转换为数据规定的yyyy-MM-dd的格式
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date createTime = new Date(user.getCreateTime());
		String createTime_ = format.format(createTime);
		
		//插入注册的新用户
		String sqlInsert = "insert into ykat_store_user(ID,USER_NAME,PHONE,PASSWORD,IS_DEL,CREATE_TIME,SPARE_PHONE) values("+(Integer.parseInt(maxId)+1)+","+user.getUserName()+","+user.getPhone()+","+user.getPassword()+",1,'"+createTime_+"',"+user.getSparePhone()+")";
		DBHelper helper2 = new DBHelper();
		helper2.insert(sqlInsert);		
	}
	
	@Override
	public List queryByPhoneAndPwd(String phone, String pwd) {
		String sql = "SELECT * FROM ykat_store_user WHERE PHONE=? AND PASSWORD=?";
		
		DBHelper helper = new DBHelper();
		List<String> params = new ArrayList<String>();
		params.add(phone);
		params.add(pwd);
		List<Object> list = helper.query(sql, params);
		List<StoreUser> resultList = new ArrayList<StoreUser>();
		// 数据库数据向Java对象转换
		
		System.out.println("####从表中查询得数据共计条数："+list.size());
		
		for (Object o : list) {
			Map data = (Map) o;
			StoreUser user = new StoreUser();
			System.out.println("####表的ID字段是："+data.get("id"));
			user.setId(Long.parseLong(data.get("id").toString()));
			user.setUserName((String) data.get("user_name"));
			user.setPhone((String) data.get("phone"));
			
			if(null!=data.get("password")){
				user.setPassword((String) data.get("password"));
			}
			if(null!=data.get("sex")){
				user.setSex(Integer.parseInt(data.get("sex").toString()));
			}
			if(null!=data.get("head_url")){
				user.setHeadUrl((String) data.get("head_url"));
			}
			if(null!=data.get("is_del")){
				user.setIsDel(Integer.parseInt(data.get("is_del").toString()));
			}
			if(null!=data.get("create_time")){
				user.setCreateTime(((Date) data.get("create_time")).getTime());
			}
			if(null!=data.get("updata_time")){
			user.setUpdateTime(((Date) data.get("update_time")).getTime());
			}
			resultList.add(user);
		}
		return resultList;
		
	}

}
