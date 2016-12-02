package net.hyunny333.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import net.hyunny333.domain.PortfolioVO;

@Repository
public class PortfolioDAOImpl implements PortfolioDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "net.hyunny333.mapper.PortfolioMapper";

	@Override
	public void add(PortfolioVO vo) throws Exception {
		sqlSession.insert(namespace +".add", vo);
	}

	@Override
	public void addAttach(String fullName) throws Exception {
		sqlSession.insert(namespace +".addAttach", fullName);
	}
}
