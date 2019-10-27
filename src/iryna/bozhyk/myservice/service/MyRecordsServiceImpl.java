package iryna.bozhyk.myservice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import iryna.bozhyk.myservice.dao.MyServiceDAO;
import iryna.bozhyk.myservice.entity.MyService;

@Service
public class MyRecordsServiceImpl implements MyRecordsService {
	
	@Autowired
	private MyServiceDAO myServiceDAO;

	@Override
	@Transactional
	public List<MyService> getMyServices() {
		
		return myServiceDAO.getMyServices();
	}

}
