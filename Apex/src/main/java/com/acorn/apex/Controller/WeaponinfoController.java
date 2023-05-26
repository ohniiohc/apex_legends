package com.acorn.apex.Controller;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.apex.Model.WeaponsDAO;
import com.acorn.apex.Model.WeaponsInfoDto;

@Controller
public class WeaponinfoController {

	@Autowired
    WeaponsDAO dao;
    @Autowired
    DataSource ds;
	 @GetMapping("/infoWeapon")
	    public ModelAndView infoWeapon(@RequestParam("name") String name) {
	        ModelAndView modelAndView = new ModelAndView("infoWeapon");
	        
	        List<WeaponsInfoDto> infoWeapon = dao.findinfo(name);
	        modelAndView.addObject("infoWeapon", infoWeapon);
	        
	        return modelAndView;
	    }
	    
	
	 @GetMapping("/BarrelAttachment")
	    public String Barrel() {
	    	
	    	return "BarrelAttachment";
	    }
	  
	    
	    @GetMapping("/MagAttachment")
	    public String MagAttachment() {
	    	
	    	return "MagAttachment";
	    }
	    
	    @GetMapping("/OpticsAttachment")
	    public String OpticsAttachment() {
	    	
	    	return "OpticsAttachment";
	    }
	    
	    @GetMapping("/StockAttachmentStandard")
	    public String Stock() {
	    	
	    	return "StockAttachmentStandard";
	    }
	    
	    @GetMapping("/Hop-Up")
	    public String HopUp(){
	    	return "Hop-Up";
	    }
}
