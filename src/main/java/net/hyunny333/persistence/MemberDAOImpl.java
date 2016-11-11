package net.hyunny333.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import net.hyunny333.domain.MemberVO;
import net.hyunny333.dto.LoginDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "net.hyunny333.mapper.MemberMapper";

	@Override
	public MemberVO login(LoginDTO dto) throws Exception {
		return sqlSession.selectOne(namespace +".login", dto);
	}
}
