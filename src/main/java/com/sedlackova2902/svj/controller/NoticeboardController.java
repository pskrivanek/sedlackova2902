package com.sedlackova2902.svj.controller;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NoticeboardController {
	protected final Log logger = LogFactory.getLog(ContractorsController.class);

	private String posibleValue = ",2017,2016,2015,2014,2013,2012,2011,2010,";//",h,e,c,";
	
	@RequestMapping("/noticeboard")
	public ModelAndView showNoticeboard(@RequestParam( value="a", required=false) String archive) {
		logger.debug("showNoticeboard archive="+ archive);
		
		if (StringUtils.isEmpty(archive)) {
			return new ModelAndView("noticeboard");

		} else {
			String x = "," + archive + ",";
			if (posibleValue.indexOf(x) == -1) {
				return new ModelAndView("noticeboard");
			}
		}		
		return new ModelAndView("noticeboard", "a", archive);
	}
	
}
