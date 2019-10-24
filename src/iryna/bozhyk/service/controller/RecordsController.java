package iryna.bozhyk.service.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import iryna.bozhyk.service.dao.MyServiceDAO;
import iryna.bozhyk.service.entity.MyService;

@Controller
@RequestMapping("/records")
public class RecordsController {
	
	@Autowired
	@Qualifier("myServiceDAOImpl")
	private MyServiceDAO myServiceDAO;
	
	@RequestMapping("/list")
	public String listRecords(Model theModel){
		List <MyService> theServices = myServiceDAO.getMyServices();
		theModel.addAttribute("records", theServices);
		return "list-records";
	}

}
