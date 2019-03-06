package com.tz.online.user;

import java.util.List;

import com.tz.online.entity.Address;

public interface AddressMapper {
    /**********
	 * 保存地址
	 * @param a
	 */
	void save(Address a);
	/****
	 * 获取指定用户id的所有地址
	 * @return
	 */
	List<Address> findByUserId(Long userId);
	/****
	 * 删除某个地址
	 * @param a
	 */
	void delete(Address a);
	/*****
	 * 依ID查询
	 * @param id
	 * @return
	 */
	Address findById(Long id);
	/****
	 * 更新地址
	 * @param a
	 */
	void update(Address a);
}