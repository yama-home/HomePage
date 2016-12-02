package net.hyunny333.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.hyunny333.domain.PortfolioVO;
import net.hyunny333.persistence.PortfolioDAO;

@Service
public class PortfolioServiceImpl implements PortfolioService {
	@Inject
	private PortfolioDAO dao;

	@Override
	public void add(PortfolioVO vo) throws Exception {
		dao.add(vo);

		String[] files = vo.getFiles();
		if(files == null)
			return;

		for(String fileName : files) {
			dao.addAttach(fileName);
		}
	}
}
