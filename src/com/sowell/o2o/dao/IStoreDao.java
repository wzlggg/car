package com.sowell.o2o.dao;

import java.util.List;

public interface IStoreDao {
    public abstract List queryByUserId(long userId);
}
