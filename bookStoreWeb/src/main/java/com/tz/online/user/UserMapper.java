package com.tz.online.user;

import java.util.List;

import com.tz.online.entity.Address;
import com.tz.online.entity.User;
import com.tz.online.exception.LoginException;

public interface UserMapper {

	/**
	 * ��֤�û��Ƿ�Ϸ�
	 * @param name �û���
 	 * @param pwd  ����
	 * @return
	 */
	User login(String name, String pwd) throws LoginException;
	/**
	 * ����û���ע�Ṧ��
	 * @param user
	 */
	void register(User user);
	/*****
	 * ��֤ĳ���û����Ƿ���ã� ������ã��򷵻�true, ���򣬷���false
	 * @param name
	 * @return
	 */
	boolean validate(String name);
	/*****
	 * ��ӵ�ַ
	 * @param a
	 */
	void addAddress(Address a);
	/******
	 * ɾ����ַ
	 * @param a
	 */
	void delAddress(Address a);
	
	/*****
	 * ����ָ���ĵ�ַ��Ϣ
	 * @param a
	 */
	void updAddress(Address a);
	
	/****
	 * �����û���ѯ���û������е�ַ
	 * @param user
	 * @return
	 */
	List<Address> getAddressByUser(User user);
	
	/*****
	 * ��������ѯ��ַ
	 * @param id
	 * @return
	 */
	Address getAddrById(Long id);

}
