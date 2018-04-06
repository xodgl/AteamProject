package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

public class OrgChartDBMybatis extends MybatisConnector{
	private final String namespace = "groupWare.mybatis";
	
	private static OrgChartDBMybatis instance = new OrgChartDBMybatis();
	
	private OrgChartDBMybatis() {
	}
	
	public static OrgChartDBMybatis getInstance() {
		return instance;
	}
	SqlSession sqlSession;
	
	//count 가져옴
	public int getArticleCount() {
		int x=0;
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		
		x = sqlSession.selectOne(namespace+".getArticleCount", map) ;		//selectOne (오브젝트) /오브젝트인가? 컬렉션인가?
		sqlSession.close();
		System.out.println("X======"+x);
		return x;
	}
	
	//목록 가져옴
	public List getArticles(int startRow, int endRow) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		System.out.println("startRow"+startRow);
		System.out.println("endRow"+endRow);
		
		List li = sqlSession.selectList(namespace+".getArticles", map);	
		System.out.println("li====="+li);
		return li;
		}
}	
