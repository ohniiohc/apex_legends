package com.acorn.apex.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.apex.Model.WeaponsDAO;
import com.acorn.apex.Model.WeaponsInfoDto;
import com.acorn.apex.Model.WeaponsSearchDto;

@Controller
public class Weaponcontroller {
    @Autowired
    WeaponsDAO dao;
    @Autowired
    DataSource ds;

    @GetMapping("/WeaponsHome")
    public String home() {
        return "WeaponsHome";
    }

   /* @GetMapping("/infoWeapon")
    public ModelAndView infoWeapon(@RequestParam("name") String name) {
        ModelAndView modelAndView = new ModelAndView("infoWeapon");
        
        List<WeaponsInfoDto> infoWeapon = dao.findinfo(name);
        modelAndView.addObject("infoWeapon", infoWeapon);
        
        return modelAndView;
    }*/
    
    

    @PostMapping("/WeaponsHome")
    @ResponseBody
    public List<WeaponsSearchDto> getWeaponsByType(@RequestParam("aaa") String type) {
        List<WeaponsSearchDto> weaponsList = dao.findType(type); // 총기 유형에 해당하는 데이터 조회
        return weaponsList; // 조회된 데이터를 JSON 형식으로 응답
    }
    
   /* @GetMapping("/BarrelAttachment")
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
    
    
*/
}
