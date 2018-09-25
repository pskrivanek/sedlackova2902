package com.sedlackova2902.svj.controller;

import java.io.File;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sedlackova2902.svj.common.Utils;

@Controller
public class CctvController {
	protected final Log logger = LogFactory.getLog(CctvController.class);


	@RequestMapping("/cctv")
	public ModelAndView showDocuments() {
		logger.debug("showDocuments");

		return new ModelAndView("cctv", "type", "");
	}
}