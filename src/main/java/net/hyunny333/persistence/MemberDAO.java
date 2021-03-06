package net.hyunny333.persistence;

import net.hyunny333.domain.MemberVO;
import net.hyunny333.dto.LoginDTO;

public interface MemberDAO {
	public MemberVO login(LoginDTO dto) throws Exception;
	public int checkID(String userid) throws Exception;
	public void join(MemberVO vo) throws Exception;
	public int certifyEmailCheck(String emailCertifiedCode) throws Exception;
	public void certifyEmail(String emailCertifiedCode) throws Exception;
}
