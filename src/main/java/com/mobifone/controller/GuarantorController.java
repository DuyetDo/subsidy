package com.mobifone.controller;


import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.mobifone.model.Guarantor;
import com.mobifone.service.Guarantorservice;


@Controller
@RequestMapping("/")
public class GuarantorController {

	@Autowired
	Guarantorservice guarantorservice;
	


	@RequestMapping(value = { "/guarantorList" }, method = RequestMethod.GET)
	public String listCustomers(ModelMap model) {
		List<Guarantor> u = guarantorservice.findAllGuarantor();
//		model.addAttribute("u", u);
		
		return "guarantorList";
		
	}
	
	@RequestMapping(value = { "/newguarantor" }, method = RequestMethod.GET)
	public String newCustomer(ModelMap model) {
		Guarantor guarantor = new Guarantor();
//		model.addAttribute("guarantor", guarantor);
//		model.addAttribute("editGuarantor", false);
				return "addCustomer";
	}
		
		@RequestMapping(value = { "/newguarantor" }, method = RequestMethod.POST)
		public String saveCustomer(@Valid Guarantor guarantor, BindingResult result, ModelMap model) {
			guarantorservice.save(guarantor);
//			model.addAttribute("cus", guarantor);
//			model.addAttribute("Success", "" + guarantor.getName() + " " + "");
			return "Guarantor Success";
		}
		
		@RequestMapping(value = { "/edit-guarantor-{id}" }, method = RequestMethod.GET)
		public String editCustomer(@PathVariable int id, ModelMap model) {
			Guarantor guarantor = guarantorservice.findByPK(id);
//			model.addAttribute("guarantor", guarantor);
//			model.addAttribute("editGuarantor", true);
//			;
			return "addGuarantor";
		}
		
		@RequestMapping(value = { "/delete-guarantor-{Id}" }, method = RequestMethod.GET)
		public String deleteCustomer(@PathVariable Long Id) {
			guarantorservice.deleteByID(Id);
			return "redirect:/guarantorList";
		}
		
		
	}

