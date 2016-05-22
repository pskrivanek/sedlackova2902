package com.sedlackova2902.svj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


@Controller
public class CommitteeController {
	//private static final org.slf4j.Logger logger = org.slf4j.LoggerFactory.getLogger(CommitteeController.class);
	protected final Log logger = LogFactory.getLog(CommitteeController.class);
	
	private String posibleValue = ",c,cc,i,";

	@RequestMapping("/committee")
	public ModelAndView showCommittee(@RequestParam( value="t", required=false) String type, ModelMap model) {
		logger.debug("showCommittee type="+ type);
		
		if (StringUtils.isEmpty(type)) {
			type = "c";
		} else {
			String x = "," + type + ",";
			if (posibleValue.indexOf(x) == -1) {
				type = "c";
			}
		}
		
		return new ModelAndView("committee", "type", type);
	}

}
