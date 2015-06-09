package com.lab.epam.dao;

import com.lab.epam.entity.Dish;

public interface DishDAO extends BaseDAO<Dish>{

	public Dish findDishByName(String name);
	public Dish findDishById(int id);
}
