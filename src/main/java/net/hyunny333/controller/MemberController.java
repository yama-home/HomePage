package net.hyunny333.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public void joinPOST(MemberVO vo, RedirectAttributes rttr) throws Exception {
		
	}
}
