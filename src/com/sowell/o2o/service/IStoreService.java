package com.sowell.o2o.service;

import com.sowell.o2o.model.Store;

public interface IStoreService {
	//根据用户编号查询对应门店
    public abstract Store queryByUserId(long userId);
}
