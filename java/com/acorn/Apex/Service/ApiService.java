package com.acorn.Apex.Service;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Component;

import com.acorn.Apex.Dto.ApexApiDto;
import com.acorn.Apex.Dto.ImgAssetsDTO;
import com.acorn.Apex.Dto.LegendDataDTO;
import com.acorn.Apex.Dto.LegendInfoDTO;
import com.acorn.Apex.Dto.SelectDto;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
@Component
public class ApiService {
	
	public String getPlayerInfo(String name) {
	    try {
	        String encodedName = URLEncoder.encode(name, "UTF-8");
	        String apiUrl = "https://api.mozambiquehe.re/bridge?auth=6b24a704629048aaf4029f7561e833e8&player=" + encodedName + "&platform=PC";

	        URL url = new URL(apiUrl);
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());

	        BufferedReader rd;
	        if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }

	        StringBuilder sb = new StringBuilder();
	        String line;
	        while ((line = rd.readLine()) != null) {
	            sb.append(line);
	        }
	        rd.close();

	        conn.disconnect();
	        String result = sb.toString();
	        System.out.println( "result" +result);

	        return result.toString();
	    } catch (UnsupportedEncodingException e) {
	        e.printStackTrace();
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	    return null;
	}
	
	public ArrayList<ApexApiDto> matchdto(String result) {
	    ArrayList<ApexApiDto> list = new ArrayList<ApexApiDto>();
	    JSONObject obj = new JSONObject(result);
	    System.out.println(obj);

	    JSONObject js1 = obj.getJSONObject("global");
	    System.out.println("global" + js1);

	    String name = js1.getString("name");
	    String avatar = js1.getString("avatar");
	    String platform = js1.getString("platform");
	    int level = js1.getInt("level");

	    JSONObject js2 = obj.getJSONObject("global").getJSONObject("rank");

	    int rankScore = js2.getInt("rankScore");
	    String rankName = js2.getString("rankName");
	    String rankImg = js2.getString("rankImg");
	    System.out.println("global" + js2);

	    JSONObject js3 = obj.getJSONObject("legends").getJSONObject("selected");
	    System.out.println("selected" + js3);

	    String LegendName = js3.getString("LegendName");
	    System.out.println("LegendName" + LegendName);

	    JSONArray js4 = obj.getJSONObject("legends")
	            .getJSONObject("selected")
	            .getJSONArray("data");

	    List<SelectDto> selectDtoList = new ArrayList<>();

	    for (int i = 0; i < js4.length(); i++) {
	        JSONObject itemJson = js4.getJSONObject(i);
	        System.out.println(itemJson);

	        String dataname = itemJson.getString("name");
	        int datavalue = itemJson.getInt("value");
	        String datakey = itemJson.getString("key");

	        SelectDto selectDto = new SelectDto(dataname, datavalue, datakey);
	        selectDtoList.add(selectDto);
	        
	       System.out.println("js4"+js4);
	    }

	    JSONObject j5 = obj.getJSONObject("legends");
	    JSONObject allObject = j5.getJSONObject("all");

	    Iterator<String> keyList = allObject.keys();

	    List<LegendInfoDTO> LegendInfo = new ArrayList<LegendInfoDTO>();
	    
	    

	    while (keyList.hasNext()) {
	        String keyName = keyList.next();
	        List<LegendDataDTO> LegendData = new ArrayList<LegendDataDTO>(); // 초기화
	        JSONObject j6 = obj.getJSONObject("legends").getJSONObject("all")
	                .getJSONObject(keyName).getJSONObject("ImgAssets");
	        String icon = j6.getString("icon");
	        String banner = j6.getString("banner");
	        
	        ImgAssetsDTO imgAssetsDto = new ImgAssetsDTO(icon, banner);
	        System.out.println(imgAssetsDto);

	        JSONObject j8 = obj.getJSONObject("legends").getJSONObject("all")
	                .getJSONObject(keyName);

	        if (existence(j8)) {
	            JSONArray j7 = obj.getJSONObject("legends")
	                    .getJSONObject("all")
	                    .getJSONObject(keyName)
	                    .getJSONArray("data");

	            
	            for (int i = 0; i < j7.length(); i++) {
	                JSONObject itemJson2 = j7.getJSONObject(i);
	                System.out.println(itemJson2);

	                String dataname2 = itemJson2.getString("name");
	                System.out.println("dataname2=>>>>>>"+dataname2);
	                int datavalue2 = itemJson2.getInt("value");
	                System.out.println("datavalue2=>>>>>>"+datavalue2);
	                String datakey2 = itemJson2.getString("key");
	                System.out.println("datakey2=>>>>>>"+datakey2);
	                LegendData.add(new LegendDataDTO(dataname2, datavalue2, datakey2));
	                
	                
	            }
	            
	            LegendInfo.add(new LegendInfoDTO(keyName, imgAssetsDto, LegendData));
	        }else {
	        	  LegendInfo.add(new LegendInfoDTO(keyName, imgAssetsDto));
	        	
	        }

	        
	    }

	    list.add(new ApexApiDto(name, avatar, platform, level, rankScore, rankName, rankImg, LegendName, selectDtoList, LegendInfo));

	    return list;
	}

		 
		 
	boolean existence( JSONObject  obj) {
		
		Iterator<String>  ir  = obj.keys();
		
		boolean result= false;
		while(ir.hasNext()) {
			String keyName  = ir.next();
			if("data".equals(keyName)) {
				result=true;
				break;
			}
		}
		
		return result;
	}
	 
}

 
    

	


