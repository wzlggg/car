package com.sowell.o2o.dao;

import java.util.List;

import com.sowell.o2o.model.StoreUser;

public interface IStoreUserDao {
    public abstract List queryByPhoneAndPwd(String phone, String pwd);

	public abstract void insert(StoreUser user);
	

}
