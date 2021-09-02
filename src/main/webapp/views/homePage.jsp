<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1 id = 'cityContainer'>This is home page</h1>
<button onclick="fetchCities()">load city</button>

<script>

function fetchCities()
{

	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function(){
		
		if(this.readyState == 4 && this.status == 200)
		{
			var res = this.responseText;
			var jsonObj = JSON.parse(res);
			console.log(jsonObj);
			if(jsonObj.length > 0)
		    {
			   document.getElementsByTagName("H1")[0].innerHTML = jsonObj;	
		    }	
			
		}	
		
	};
	
	var actionStr = "/city";
	xhttp.open("GET",actionStr,true);
	xhttp.send();
	
}


</script>

</body>
</html>