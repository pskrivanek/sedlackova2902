package com.sedlackova2902.svj.controller;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContractorsController {
	protected final Log logger = LogFactory.getLog(ContractorsController.class);

	private String posibleValue = ",c,l,s,p,";
	
	
	@RequestMapping("/contractors")
	public ModelAndView showContractor(@RequestParam( value="t", required=false) String type) {
		logger.debug("showContractor type="+ type);
		
		if (StringUtils.isEmpty(type)) {
			type = "c";
		} else {
			String x = "," + type + ",";
			if (posibleValue.indexOf(x) == -1) {
				type = "c";
			}
		}
		
		return new ModelAndView("contractors", "type", type);
	}
	
}
