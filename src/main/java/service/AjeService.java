package service;

import vo.Ajegag;

public interface AjeService {
	int register(Ajegag ajegag);
	Ajegag findBy(Integer ajno);
	Ajegag findRand();
}
