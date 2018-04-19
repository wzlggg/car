package com.sowell.o2o.service;

import com.sowell.o2o.model.StoreUser;

public interface IStoreUserService {
    public abstract StoreUser validate(String phone, String password);
    public abstract void register(StoreUser user);
   
    }
    
    

