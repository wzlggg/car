package com.sowell.o2o.service.impl;

import java.util.Iterator;
import java.util.List;

import com.sowell.o2o.dao.IStoreUserDao;
import com.sowell.o2o.dao.impl.StoreUserDaoImpl;
import com.sowell.o2o.model.StoreUser;
import com.sowell.o2o.service.IStoreUserService;

public class StoreUserServiceImpl implements IStoreUserService {
	
    public void register(StoreUser user){
    	storeUserDao.insert(user);}
	
    private IStoreUserDao storeUserDao = new StoreUserDaoImpl();
	
	public StoreUser validate(String phone, String password) {
		List<StoreUser> userList = storeUserDao.queryByPhoneAndPwd(phone, password);
		
		if(userList.size()>=1){
			Iterator it = userList.iterator();
			if(it.hasNext()){
				return (StoreUser)it.next();
			}else{
				return null;
			}
				
			//return userList.get(0);
		}else{
			return null;
		}		
	}

}
