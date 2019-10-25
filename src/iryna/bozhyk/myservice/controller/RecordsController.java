package iryna.bozhyk.myservice.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import iryna.bozhyk.myservice.dao.MyServiceDAO;
import iryna.bozhyk.myservice.entity.MyService;

@Controller
@RequestMapping("/records")
public class RecordsController {
	
	@Autowired
	@Qualifier("myServiceDAOImpl")
	private MyServiceDAO myServiceDAO;
	
	@GetMapping("/list")
	public String listRecords(Model theModel){
		List <MyService> theServices = myServiceDAO.getMyServices();
	    theModel.addAttribute("records", theServices);
		return "list-records";
	}

}
