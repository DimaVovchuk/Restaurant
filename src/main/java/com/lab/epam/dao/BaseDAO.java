package com.lab.epam.dao;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;

public interface BaseDAO<T> {
	public List<T> getAll() throws SQLException;
	public void update(T obj,int id) throws SQLException, UnsupportedEncodingException;
	public void insert(T obj) throws SQLException;
	public void delete(int id) throws SQLException;
}
