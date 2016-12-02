package net.hyunny333.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.hyunny333.domain.PortfolioVO;
import net.hyunny333.service.PortfolioService;

@Controller
@RequestMapping("/portfolio/*")
public class PortfolioController {
	@Inject
	private PortfolioService service;
	private static final Logger logger = LoggerFactory.getLogger(PortfolioController.class);

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(Model model) throws Exception {
		logger.info("portfolio list colled..........");
	}

	@RequestMapping(value="/add", method=RequestMethod.GET)
	public void addGET() throws Exception {
		logger.info("portfolio add form colled..........");
	}

	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String addPOST(PortfolioVO vo, RedirectAttributes rttr) throws Exception {
		service.add(vo);

		rttr.addFlashAttribute("msg", "포트폴리오가 정상적으로 등록되었습니다.");

		return "redirect:/portfolio/list";
	}
}
