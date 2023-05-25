package com.acorn.apex.Controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acorn.apex.Model.LegendsDAO;
import com.acorn.apex.Model.LegendsDTO;

@Controller
public class LegendsController {
	
	@Autowired
	LegendsDAO dao;
	
	@GetMapping("/legends")
	public void method() {
		
	}

	@GetMapping("/legends2")
	public String method2(Model model) {
		
		Map map=null;
		try {
			map = dao.select();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		model.addAttribute("map", map);
		
		return "legends2";
		
	}
//	@ResponseBody
//	@GetMapping("/legends2")
//	public Map<String,ArrayList<LegendsDTO>> method2() {
//		Map map=new HashMap<String,ArrayList<LegendsDTO>>();
//		ArrayList<LegendsDTO> assault = new ArrayList<>();
//		assault.add(new LegendsDTO("Assault","Bangalore"));
//		assault.add(new LegendsDTO("Assault","Revenant"));
//		assault.add(new LegendsDTO("Assault","Fuse"));
//		assault.add(new LegendsDTO("Assault","Ash"));
//		assault.add(new LegendsDTO("Assault","Mad Maggie"));
//		assault.add(new LegendsDTO("Assault","Ballistic"));
//		
//		ArrayList<LegendsDTO> skirmisher = new ArrayList<>();
//		skirmisher.add(new LegendsDTO("Skirmisher","Pathfinder"));
//		skirmisher.add(new LegendsDTO("Skirmisher","Wraith"));
//		skirmisher.add(new LegendsDTO("Skirmisher","Octane"));
//		skirmisher.add(new LegendsDTO("Skirmisher","Horizon"));
//		skirmisher.add(new LegendsDTO("Skirmisher","Valkyrie"));
//		
//		ArrayList<LegendsDTO> recon = new ArrayList<>();
//		recon.add(new LegendsDTO("Recon","Bloodhound"));
//		recon.add(new LegendsDTO("Recon","Crypto"));
//		recon.add(new LegendsDTO("Recon","Seer"));
//		recon.add(new LegendsDTO("Recon","Vantage"));
//		
//		ArrayList<LegendsDTO> support = new ArrayList<>();
//		support.add(new LegendsDTO("Support","Gibraltar"));
//		support.add(new LegendsDTO("Support","Lifeline"));
//		support.add(new LegendsDTO("Support","Mirage"));
//		support.add(new LegendsDTO("Support","Loba"));
//		support.add(new LegendsDTO("Support","Newcastle"));
//		
//		ArrayList<LegendsDTO> controller = new ArrayList<>();
//		controller.add(new LegendsDTO("Controller","Caustic"));
//		controller.add(new LegendsDTO("Controller","Wattson"));
//		controller.add(new LegendsDTO("Controller","Rampart"));
//		controller.add(new LegendsDTO("Controller","Catalyst"));
//		
//		map.put("assault", assault);
//		map.put("skirmisher", skirmisher);
//		map.put("recon", recon);
//		map.put("support", support);
//		map.put("controller", controller);
//		
//		return map;
//	}
	
}
