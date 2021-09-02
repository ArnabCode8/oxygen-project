<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test Page</title>


<style>

#rangeBar1,#rangeBar2
{
   height: 100px;
   width: 400px;
}

</style>

</head>
<body onload = 'initiate()'>

<div id = "rangeContainer">range pane will be printed here</div>

<script>

function initiate()
{
    var cont = "<input type = 'range' min = '0' max = '100' value = '50' id = 'rangeBar1'></br></input>";
    cont = cont + "<input type = 'range' min = '0' max = '100' value = '70' id = 'rangeBar2'></input>";
    cont = cont + "<div id = 'result'>result will be printed here</div>";
    document.getElementById("rangeContainer").innerHTML = cont;
    
    document.getElementById("rangeBar1").addEventListener("input",function(event){
    	
    	var x = event.target;
    	var y = document.getElementById("rangeBar2");
    	if(x.value > y.value)
        {
    		x.value = y.value;
        }		
    });
    
     document.getElementById("rangeBar2").addEventListener("input",function(event){
    	
    	var x = event.target;
    	var y = document.getElementById("rangeBar1");
    	if(x.value < y.value)
        {
    		x.value = y.value;
        }		
    });
	
}

</script>

</body>
</html>