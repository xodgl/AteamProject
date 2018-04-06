package dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

public class MemberDBMybatis extends MybatisConnector{
	private final String namespace = "groupWare.mybatis";
	
	private static MemberDBMybatis instance = new MemberDBMybatis();
	private MemberDBMybatis() {
	}
	
	public static MemberDBMybatis getInstance() {
		return instance;
	}
	SqlSession sqlSession;
	
	//로그인
	public int login(String id, String pw) {
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		int x = sqlSession.selectOne(namespace+".login", map) ;	
		sqlSession.close();
		return x;
	}
	
	//이름 가져오기
	public String getname(String id) {
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		String name = sqlSession.selectOne(namespace+".getname", map) ;	
		sqlSession.close();
		return name;
	}
	

	
	
	
}
