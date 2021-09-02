package com.oxygen.OxygenProject.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class ViewController 
{
	@Autowired
	private ApplicationContext context;
	
	@Autowired
	private ObjectMapper mapper;
	
	@RequestMapping("/home")
	public String homePage()
	{
		return "homePage";
	}
	
	@RequestMapping("/addorg")
	public String addOrgPage()
	{
		return "AddOrgPage";
	}
	
	@RequestMapping("/orgacc")
	public String OrgAccPage()
	{
		return "OrgPage";
	}
	
	@RequestMapping("/publicvisit")
	public String publicPage()
	{
		return "PublicPage";
	}
	
	@RequestMapping("/showorg/{orgid}")
	public ModelAndView showOrg(@PathVariable("orgid")int orgid)
	{
		ModelAndView mv = new ModelAndView("OrgPage");
		mv.addObject("orgid",orgid);
		return mv;
	}

}
