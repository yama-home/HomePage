package net.hyunny333.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.hyunny333.domain.MemberVO;
import net.hyunny333.dto.LoginDTO;
import net.hyunny333.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {
	@Inject
	private MemberDAO dao;

	@Override
	public MemberVO login(LoginDTO dto) throws Exception {
		return dao.login(dto);
	}

	@Override
	public int checkID(String userid) throws Exception {
		return dao.checkID(userid);
	}

	@Override
	public void join(MemberVO vo) throws Exception {
		dao.join(vo);
	}
}
