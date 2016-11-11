package net.hyunny333.service;

import net.hyunny333.domain.MemberVO;
import net.hyunny333.dto.LoginDTO;

public interface MemberService {
	public MemberVO login(LoginDTO dto) throws Exception;
}
