<%@page contentType="text/html" pageEncoding="UTF-8"
	import="java.util.*"%>
    
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
        	String Id = request.getParameter("id");
        	String Quantity = request.getParameter("quantity");
        	ArrayList<Map<String,String>> buylist;
        	if((session.getAttribute("Buylist"))==null){
        		buylist = new ArrayList<Map<String,String>>();
        	} else {
        		buylist=(ArrayList<Map<String,String>>)session.getAttribute("Buylist");
        	}
        	
        	Map<String,String> map = new HashMap<String,String>();
	        map.put("wineId", Id);
	        map.put("quantity", Quantity);	        
	        
	        buylist.add(map);
        
	        session.setAttribute("Buylist", buylist);
	       	
	        
        %>         