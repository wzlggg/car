package com.sowell.o2o.service;

import com.sowell.o2o.model.Store;

public interface IStoreService {
	//�����û���Ų�ѯ��Ӧ�ŵ�
    public abstract Store queryByUserId(long userId);
}
