package cart.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import cart.bean.baseballBean;
import cart.util.SqlSessionFactoryManager;


public class ListDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public ListDao(){
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	public List<baseballBean>ListBaseball(){
		return sqlSessionFactory.openSession().selectList("ListBaseball");
	}
	public baseballBean infoSel(String pname){
		return sqlSessionFactory.openSession().selectOne("infoSel", pname);
	}
	public baseballBean CartList(String pname){
		return sqlSessionFactory.openSession().selectOne("CartList", pname);
	}
	
}