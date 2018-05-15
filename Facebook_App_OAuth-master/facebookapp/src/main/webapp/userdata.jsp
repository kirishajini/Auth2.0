<%@ page import="org.json.simple.parser.JSONParser" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="com.google.gson.GsonBuilder" %>
<%@ page import="com.tharindu.oauth.facebookapp.data.ResourceDataHolder" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>What is your IP Address?</title>
</head>
<body background="images/background4.png">

<%

    //Retrieve the query parameter 'key' received in the URL
    String key = (String) request.getParameter("key");

%>

<form action="/facebookapp/callback" method="post">

    <h1> <a href="http://ipaddress.com/">Have a look at your IP Address</a> </h1>
	<img src="images/ip5.jpg"/>
	<br/>
	<br/>
    <br>
    <textarea id="usermessage" name="usermessage" value="" rows="4" cols="50" readonly="readonly"></textarea>
    <br>
	
<script type="text/javascript">

//Get the IP address details using API of ipaddress.com and insert it to the Text Field

function iptocountry(callback) 
{
  var r;
  if (window.XMLHttpRequest)r=new XMLHttpRequest();
  else r=new ActiveXObject("Microsoft.XMLHTTP");
  r.onreadystatechange=function()
	{
    	if (r.readyState==4&&r.status=="200")callback(r.responseText);
  	};
  r.open("GET","http://api.ipaddress.com/iptocountry?format=json",true);
  r.send(null);
}

iptocountry(function(response)
{
  var json=JSON.parse(response);
  document.getElementById("usermessage").value = "My Public IP address is "+ json.ipaddress + " and I am browsing the Internet from " + json.country_name + " [" + json.country_code + "] ";
}
);
</script>


    <input type="hidden" name="key" id="key" value="<%=key%>"/>


    <input type="submit" value="Post"/>

</form>


</body>
</html>
