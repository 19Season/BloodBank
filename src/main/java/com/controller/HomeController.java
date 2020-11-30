package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.DonarsDao;
import com.entity.Donars;

@Controller
public class HomeController {
	@Autowired
	DonarsDao dao;
	
	@RequestMapping("/home")
	public String index(Model i){
		i.addAttribute("command",new Donars());
		return "home";
	}
	
	@RequestMapping("/registerpage")
	public String registerpage(Model r){
		r.addAttribute("command",new Donars());
		return "register";
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(@ModelAttribute("donars") Donars donars){
		dao.register(donars);
		return "redirect:/";
	}
	
	@RequestMapping(value="/search", method = RequestMethod.GET)
	public String search(HttpServletRequest req,Model m){
		String bg = req.getParameter("bloodgroup");
		List<Donars> list=dao.search(bg);
		m.addAttribute("data",list);
		return "searchResult";
	}
	
	@RequestMapping("/view")    
    public String view(Model m){    
		String page="view";
		 m.addAttribute("page",page);
        List<Donars> list=dao.view();  
        m.addAttribute("data",list);
       
        return "searchResult";    
    }   
	
	
}
