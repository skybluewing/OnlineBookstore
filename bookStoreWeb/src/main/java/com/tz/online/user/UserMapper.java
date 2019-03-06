package com.tz.online.user;

import java.util.List;

import com.tz.online.entity.Address;
import com.tz.online.entity.User;
import com.tz.online.exception.LoginException;

public interface UserMapper {

	/**
	 * 验证用户是否合法
	 * @param name 用户名
 	 * @param pwd  密码
	 * @return
	 */
	User login(String name, String pwd) throws LoginException;
	/**
	 * 完成用户的注册功能
	 * @param user
	 */
	void register(User user);
	/*****
	 * 验证某个用户名是否可用， 如果可用，则返回true, 否则，返回false
	 * @param name
	 * @return
	 */
	boolean validate(String name);
	/*****
	 * 添加地址
	 * @param a
	 */
	void addAddress(Address a);
	/******
	 * 删除地址
	 * @param a
	 */
	void delAddress(Address a);
	
	/*****
	 * 更新指定的地址信息
	 * @param a
	 */
	void updAddress(Address a);
	
	/****
	 * 根据用户查询此用户的所有地址
	 * @param user
	 * @return
	 */
	List<Address> getAddressByUser(User user);
	
	/*****
	 * 按主键查询地址
	 * @param id
	 * @return
	 */
	Address getAddrById(Long id);

}
