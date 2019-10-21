package iryna.bozhyk.service.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/records")
public class RecordsController {
	
	@RequestMapping("/list")
	public String listRecords(Model theModel){
		return "list-records";
	}

}
