<%@page contentType="text/html" pageEncoding="UTF-8"
	import="java.util.*,util.CommonUtil"%>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>TranSession_b2</title>
  
        <%
			/*
        	String Id = request.getParameter("id");
	        session.setAttribute("ID", Id);
			System.out.println(Id);
        	
	        String Quantity = request.getParameter("quantity");
	        session.setAttribute("QUANTITY", Quantity);
			System.out.println(Quantity);
			
			response.sendRedirect("cart.jsp");
			*/
        %>
        
        <%
        	CommonUtil comm = new CommonUtil();
        	String Id = request.getParameter("id");
        	Integer oldQuantity = comm.StringToInt(request.getParameter("quantity"));
        	String action = comm.getString(request.getParameter("action"));
        	Integer BuyCount = comm.StringToInt(session.getAttribute("BuyCount"));
        	Integer newQuantity = oldQuantity;

        	ArrayList<Map<String,String>> oldBuylist;
        	if((session.getAttribute("Buylist"))==null){
        		oldBuylist = new ArrayList<Map<String,String>>();
        	} else {
        		oldBuylist=(ArrayList<Map<String,String>>)session.getAttribute("Buylist");
        	}
        	
           	ArrayList<Map<String,String>> newBuylist = new ArrayList<Map<String,String>>();
           	Map<String,String> newMap = null;
           	int hasMatch = 0;
           	for (Map<String, String> oldMap : oldBuylist) {
           		newMap = new HashMap<String,String>();
   				System.out.println(oldMap.get("wineId"));
   				System.out.println(Integer.parseInt(oldMap.get("quantity")));
   				if(Id.equals(oldMap.get("wineId"))){
   					hasMatch ++;
   					if(!action.equals("delItems")){
	   					newMap.put("wineId", Id);
	   		        	if(action.equals("addItems")){
		   					newQuantity = Integer.parseInt(oldMap.get("quantity")) + oldQuantity;
	   		        	}else if(action.equals("minusItems") || action.equals("plusItems")){
		   					newQuantity = oldQuantity;
	  		        	}
	   		        	newMap.put("quantity", String.valueOf(newQuantity));
	   	   	           	newBuylist.add(newMap);
   		        	}
   				}else{
   					newMap = oldMap;
   	   	           	newBuylist.add(newMap);
   				}
   			}
           	if(hasMatch == 0){
           		newMap = new HashMap<String,String>();
           		newMap.put("wineId", Id);
           		newMap.put("quantity", String.valueOf(newQuantity));
               	newBuylist.add(newMap);
           	}
   	        
   	        session.setAttribute("Buylist", newBuylist);

        	if(action.equals("addItems")){
       	        BuyCount += oldQuantity;
        	}else if(action.equals("minusItems")){
       	        BuyCount -= 1;
        	}else if(action.equals("plusItems")){
       	        BuyCount += 1;
        	}else if(action.equals("delItems")){
       	        BuyCount -= oldQuantity;
        	}
   	        session.setAttribute("BuyCount", BuyCount);
        %>         