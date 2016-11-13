package net.hyunny333.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
}
