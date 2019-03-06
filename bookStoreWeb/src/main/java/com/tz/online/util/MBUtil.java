package com.tz.online.util;

import java.io.InputStream;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MBUtil {
	private SqlSessionFactory sqlSessionFactory;
	private static MBUtil mb = null;

	private MBUtil() throws Exception {
		String resource = "SqlMapConfig.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	}

	public static MBUtil getInstance() {
		if(mb==null){
			try {
				mb=new MBUtil();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return mb;	
	}
	
	public SqlSessionFactory getSqlSessionFactory(){
		return sqlSessionFactory==null?null:sqlSessionFactory;
	}

	public static void finishSession(SqlSession session) {

		session.commit();
		session.close();

	}
}
