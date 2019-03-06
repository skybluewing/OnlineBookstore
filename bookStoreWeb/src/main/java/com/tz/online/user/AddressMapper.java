package com.tz.online.user;

import java.util.List;

import com.tz.online.entity.Address;

public interface AddressMapper {
    /**********
	 * �����ַ
	 * @param a
	 */
	void save(Address a);
	/****
	 * ��ȡָ���û�id�����е�ַ
	 * @return
	 */
	List<Address> findByUserId(Long userId);
	/****
	 * ɾ��ĳ����ַ
	 * @param a
	 */
	void delete(Address a);
	/*****
	 * ��ID��ѯ
	 * @param id
	 * @return
	 */
	Address findById(Long id);
	/****
	 * ���µ�ַ
	 * @param a
	 */
	void update(Address a);
}