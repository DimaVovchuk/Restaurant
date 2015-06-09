package com.lab.epam.dao.impl;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import com.lab.epam.dao.BaseDAO;
import com.lab.epam.persistant.ConnectionManager;
import com.lab.epam.transformer.Transformer;

public class BaseDAOImpl<T> implements BaseDAO<T> {

	PreparedStatement ps;
	Class<T> clazz;
	Transformer<T> transformer;


	public BaseDAOImpl(Class<T> clazz) {
		this.clazz = clazz;
		transformer = new Transformer<T>(clazz);

	}

	public void update(T obj, int id) throws SQLException, UnsupportedEncodingException {
		Connection conn = ConnectionManager.getConnection().retrieve();
		Transformer<T> transformer = new Transformer<>(clazz);

		Map<String, Object> objectColumns = transformer.getObjectColumns(obj);
		String field = "";
		for (Entry<String, Object> entry : objectColumns.entrySet()) {
			if (entry.getKey().equals("id")) {
				continue;
			}
			if (entry.getKey().equals("password")) {
				entry.setValue(entry.getValue());
			}
			if (entry.getValue().getClass() == String.class) {
				field += entry.getKey() + " = '" + entry.getValue() + "',";
			} else {
				field += entry.getKey() + " = " + entry.getValue() + ",";
			}
		}
		String substring = field.substring(0, field.length() - 1);
		field = substring;
		String tableName = transformer.getTableName();
		ps = conn.prepareStatement("UPDATE `" + tableName + "` SET " + field
				+ " WHERE id = " + id);
		ps.execute();

	}

	public void insert(T obj) throws SQLException {
		Connection conn = ConnectionManager.getConnection().retrieve();
		Transformer<T> transformer = new Transformer<>(clazz);
		List<String> setRow = transformer.setRowInDB(obj);
		String tableName = transformer.getTableName();

        ps = conn.prepareStatement("INSERT INTO `" + tableName + "` ("
                + setRow.get(0) + ") VALUES (" + setRow.get(1) + ")");
		ps.execute();
		ConnectionManager.getConnection().putback(conn);
	}

	public List<T> getAll() throws SQLException {
		Connection conn = ConnectionManager.getConnection().retrieve();
		String tableName = transformer.getTableName();
		ps = conn.prepareStatement("SELECT * FROM `" + tableName + "`");
		ResultSet res = ps.executeQuery();
		List<T> list = transformer.rowToObject(res);
		ps.execute();
		ConnectionManager.getConnection().putback(conn);
		return list;
	}

	public void delete(int id) throws SQLException {
		Connection conn = ConnectionManager.getConnection().retrieve();
		String tableName = transformer.getTableName();
		ps = conn.prepareStatement("DELETE FROM `" + tableName
				+ "` WHERE id = ?;");
		ps.setInt(1, id);
		ps.execute();
		ConnectionManager.getConnection().putback(conn);
	}

}
