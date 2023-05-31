package com.acorn.apex.Model;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
@Component
public class ApexApi {
	
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
	
	public ArrayList<ApexApiDto> matchdto(String result){
		
		ArrayList<ApexApiDto> list = new ArrayList<ApexApiDto>();
		JSONObject obj = new JSONObject(result);
		 System.out.println( obj);
		
		 JSONObject js1 = obj.getJSONObject("global");
		 System.out.println("global" + js1);
		 
		 String name = js1.getString("name");
		 String avatar = js1.getString("avatar");
		 String platform = js1.getString("platform");
		 int level = js1.getInt("level");
		 
		 JSONObject js2 = obj.getJSONObject("global")
				 			.getJSONObject("rank");
		 
		 int rankScore = js2.getInt("rankScore");
		 String rankName=js2.getString("rankName");
		 String rankImg=js2.getString("rankImg");
		 System.out.println("global" + js2);
		 
		 JSONObject js3 = obj.getJSONObject("legends")
				 			.getJSONObject("selected");
				 		
		 System.out.println("selected" + js3);
		 
		 String LegendName = js3.getString("LegendName");
		 System.out.println("LegendName" + LegendName);
		 
		 
		 JSONArray js4 = obj.getJSONObject("legends")
                 .getJSONObject("selected")
                 .getJSONArray("data");

		 List<LegendDataDTO> legendData = new ArrayList<LegendDataDTO>();

		 for (int i = 0; i < js4.length(); i++) {
		     JSONObject itemJson = js4.getJSONObject(i);
		     System.out.println(itemJson);

		     String dataname = itemJson.getString("name");
		     int datavalue = itemJson.getInt("value");
		     String datakey = itemJson.getString("key");

		     legendData.add(new LegendDataDTO(dataname, datavalue, datakey));
		 }
		 
		 JSONObject j5 = obj.getJSONObject("legends");
		 JSONObject allObject = j5.getJSONObject("all"); 
		 String alldata = allObject.toString();
		 
		 System.out.println(j5);
		 list.add(new ApexApiDto(name, avatar, platform, level, rankScore, rankName, rankImg, LegendName, legendData, alldata));
		 
		 return list;
	}

 
    
}
	


