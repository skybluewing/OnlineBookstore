package com.tz.online.user;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.tz.online.book.BookMapper;
import com.tz.online.entity.Address;
import com.tz.online.entity.User;
import com.tz.online.exception.LoginException;
import com.tz.online.util.MBUtil;

public class UserServiceImpl implements UserService {
	
	SqlSession session = MBUtil.getInstance().getSqlSessionFactory().openSession();
	BookMapper ibd = session.getMapper(BookMapper.class);

	@Override
	public User login(String name, String pwd) throws LoginException {
//		User user = ibd.login()
		return null;
	}

	@Override
	public void register(User user) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean validate(String name) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void addAddress(Address a) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delAddress(Address a) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updAddress(Address a) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Address> getAddressByUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Address getAddrById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

}
