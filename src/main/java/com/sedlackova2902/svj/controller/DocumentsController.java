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
public class DocumentsController {
	protected final Log logger = LogFactory.getLog(ContractorsController.class);

	private static final String docPath = "/opt/webfiles/downfiles"; //"/opt/webfiles/downfiles";//"/home/pskrivanek/downfiles/";

    private String defaultValue = "k";

    private String posibleValue = ",k,v,r,e,c,h,a,s,z,r,x,p,t,f,j,";//",h,e,c,";


	@RequestMapping("/documents")
	public ModelAndView showDocuments(@RequestParam( value="t", required=false) String type) {
		logger.debug("showDocuments type="+ type);

		if (StringUtils.isEmpty(type)) {
			type = defaultValue;
		} else {
			String x = "," + type + ",";
			if (posibleValue.indexOf(x) == -1) {
				type = defaultValue;
			}
		}
		return new ModelAndView("documents", "type", type);
	}

	@RequestMapping( value="/documents", params={"f"})
	public void downloadFile(@RequestParam("f") int fileId, HttpServletResponse response) {
		DownFile downFile = DownFile.getDownFile(fileId);
		if (downFile == null) {
			return;
		}
		try {
			File file = new File(docPath, downFile.getFileName());
			Utils.downloadFile(response, file, downFile.getFileName());
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error download file "+downFile);
		}
	}
}
