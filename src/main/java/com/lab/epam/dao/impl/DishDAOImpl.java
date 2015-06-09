package com.lab.epam.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.lab.epam.dao.DishDAO;
import com.lab.epam.entity.Dish;
import com.lab.epam.logger.MyLogger;
import com.lab.epam.persistant.ConnectionManager;
import com.lab.epam.transformer.Transformer;

public class DishDAOImpl extends BaseDAOImpl<Dish> implements DishDAO{

	public DishDAOImpl() {
		super(Dish.class);
	}
	
	public Dish findDishByName(String name) {
		List<Dish> row = null;
		Transformer<Dish> transformer = new Transformer<Dish>(Dish.class);
		try {
			Connection conn = ConnectionManager.getConnection().retrieve();
			ps = conn
					.prepareStatement("select * from dish where name=?");
			ps.setString(1, name);
			ps.execute();
			ResultSet resultSet = ps.getResultSet();
			ConnectionManager.getConnection().putback(conn);;
			row = transformer.rowToObject(resultSet);
		} catch (SQLException e) {
			e.printStackTrace();
			MyLogger.log.error(e);
		}
		if(row.isEmpty()){
			return null;
		}else{
			return row.get(0);
		}
	}

	public Dish findDishById(int id) {
		List<Dish> row = null;
		Transformer<Dish> transformer = new Transformer<Dish>(Dish.class);
		try {
			Connection conn = ConnectionManager.getConnection().retrieve();
			ps = conn
					.prepareStatement("select * from dish where id=?");
			ps.setInt(1, id);
			ps.execute();
			ResultSet resultSet = ps.getResultSet();
			ConnectionManager.getConnection().putback(conn);;
			row = transformer.rowToObject(resultSet);
		} catch (SQLException e) {
			e.printStackTrace();
			MyLogger.log.error(e);
		}
		if(row.isEmpty()){
			return null;
		}else{
			return row.get(0);
		}
	}
	
}
