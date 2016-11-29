package net.hyunny333.controller;

import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.hyunny333.domain.MemberVO;
import net.hyunny333.dto.LoginDTO;
import net.hyunny333.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	@Inject
	private MemberService service;
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	protected JavaMailSender mailSender;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") LoginDTO dto) throws Exception {

	}

	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public void loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {
		MemberVO vo = service.login(dto);
		if (vo == null)
			return;

		model.addAttribute("memberVO", vo);
	}

	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session, Model model) throws Exception {
		logger.info(((MemberVO) session.getAttribute("login")).getUserid() +" 님이 logout 해씀다.");
		session.removeAttribute("login");

		return "redirect:/";
	}

	@RequestMapping(value="/join", method=RequestMethod.GET)
	public void joinGET(Model model) throws Exception {
		
	}

	@RequestMapping(value="/joinPost", method=RequestMethod.POST)
	public String joinPOST(MemberVO vo, RedirectAttributes rttr) throws Exception {
		UUID randomCode = UUID.randomUUID();
		String emailCertifiedCode = randomCode +"_"+ vo.getUserid();
		vo.setEmailCertifiedCode(emailCertifiedCode);
		service.join(vo);

		SimpleMailMessage msg = new SimpleMailMessage();
		msg.setFrom("hyunny333@gmail.com");
		msg.setTo(vo.getEmail());
		msg.setSubject("[홈페이지] 회원가입을 축하드립니다.");
		msg.setText("회원가입을 축하드립니다.\\n아래 URL을 클릭하시면 계정이 활성화됩니다.\\nURL : "+ emailCertifiedCode);
		mailSender.send(msg);
		rttr.addFlashAttribute("msg", "정상적으로 회원가입 되셨습니다.\\n메일로 발송된 링크를 클릭하시면 계정이 활성화됩니다.");

		return "redirect:/member/login";
	}

	@RequestMapping(value="/checkID", method=RequestMethod.POST)
	@ResponseBody
	public String checkID(@RequestParam("userid") String userid) throws Exception {
		int checkCount = service.checkID(userid);

		if(checkCount > 0)
			return "fail";
		else
			return "success";
	}
}
