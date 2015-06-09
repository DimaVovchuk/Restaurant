package com.lab.epam.entity;

import com.lab.epam.transformer.Column;
import com.lab.epam.transformer.Table;

@Table("order")
public class Order {
	@Column("id")
	private Integer id;
	@Column("dish_id")
	private Integer dishId;
	@Column("user_id")
	private Integer userId;
	@Column("count")
	private Integer count;
	@Column("sum")
	private Double sum;
	@Column("status")
	private String status;

	public Order() {
	}

	public Order(Integer id, Integer dishId, Integer userId, Integer count,
			Double sum) {
		super();
		this.id = id;
		this.dishId = dishId;
		this.userId = userId;
		this.count = count;
		this.sum = sum;
	}

	public Order(Integer dishId, Integer userId, Integer count, Double sum) {
		super();
		this.dishId = dishId;
		this.userId = userId;
		this.count = count;
		this.sum = sum;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Order [dishId=" + dishId + ", userId=" + userId + ", count="
				+ count + ", sum=" + sum + "]";
	}

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the dishId
	 */
	public Integer getDishId() {
		return dishId;
	}

	/**
	 * @param dishId
	 *            the dishId to set
	 */
	public void setDishId(Integer dishId) {
		this.dishId = dishId;
	}

	/**
	 * @return the userId
	 */
	public Integer getUserId() {
		return userId;
	}

	/**
	 * @param userId
	 *            the userId to set
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	/**
	 * @return the count
	 */
	public Integer getCount() {
		return count;
	}

	/**
	 * @param count
	 *            the count to set
	 */
	public void setCount(Integer count) {
		this.count = count;
	}

	/**
	 * @return the sum
	 */
	public Double getSum() {
		return sum;
	}

	/**
	 * @param sum
	 *            the sum to set
	 */
	public void setSum(Double sum) {
		this.sum = sum;
	}


	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}