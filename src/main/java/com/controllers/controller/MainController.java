package com.controllers.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.controllers.dao.HospitalDao;
import com.controllers.model.Hospital;

@Controller
public class MainController {
	
	@Autowired
	private HospitalDao hospitalDao;
	
	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@RequestMapping("/addPatient")
	public String addPatient(Model m) {
		m.addAttribute("title", "Add Patient");
		return "addPatient";
	}
	
	@RequestMapping(value="/patient", method=RequestMethod.POST)
	public RedirectView Patientadded(@ModelAttribute Hospital hospital, HttpServletRequest request) {
		
		System.out.println(hospital);
		hospitalDao.createPatient(hospital);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	
	@RequestMapping(value="/patient", method=RequestMethod.GET)
	public String getPatient(Model model) {
	
		List<Hospital> patient = hospitalDao.getPatient();
		
		model.addAttribute("patient", patient);
		
		return "hospital/patient";
		
	}
	

	@RequestMapping(value="update/{id}")
	public String updatePatient(@PathVariable ("id") int id, Model model ) {
		
		Hospital patient=this.hospitalDao.getPatient(id);
		model.addAttribute("patient", patient);
		
		return "hospital/editPatient";
	}
	

	@RequestMapping(value="remove/{id}")
	public RedirectView removePatient(@PathVariable ("id") int id, HttpServletRequest request ) {
		
		this.hospitalDao.deletePatient(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/patient");
		
		return redirectView;
	}
}

