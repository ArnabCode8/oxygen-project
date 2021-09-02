<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Public Page</title>

<style>

body
{
   background-color: #747471;
} 

#anotherPageContainer
{
   position: absolute;
   left: 10px;
   top: 20px;
}

#orgLogin,#searchBtn
{
   height: 40px;
   width: 130px;
   background-color: #F7CC87;
   font-family: "Times New Roman";
   font-size: 20px;
   padding-top: 5px;
   padding-bottom: 5px;
   text-align: center;
   border-radius: 8px;
   transition: 0.2s;
}

#orgLogin:hover,#searchBtn:hover
{
   background-color: #F4B144;
   color: white;
   width: 150px;
}

/*city Section*/

#cityContainer
{
   position: absolute;
   left: 10px;
   top: 70px;
   height: 50px;
   width: 400px;
   background-color: #BBF2DF;
}

#citySelect,#subAreaSelect
{ 
   margin-left: 10px;
   height: 32px;
   width: 150px;
   margin-top: 7px;
   font-family: "Times New Roman";
   font-size: 18px;
   border-radius: 5px;
}

#citySearchText,#subAreaSearchText
{
   margin-left: 15px;
   margin-top: 5px;
   height: 26px;
   width: 200px;
   padding-left: 10px;
   border-radius: 5px; 
}

/*sub area section*/

#subareaContainer
{
   position: absolute;
   left: 10px;
   top: 125px;
   height: 50px;
   width: 400px;
   background-color: #BBF2DF;
}

/*org list section*/

#orglistContainer
{
   position: absolute;
   left: 10px;
   top: 230px;
   height: 700px;
   width: 400px;
   background-color: white;

}

#orgHead
{
   position: fixed;
   display: none;
}

#nameHead,#available,#servedCount,#servedTime,#helpfulCount,#fakeCount
{
   display: inline;
   font-family: "Times New Roman";
   font-size: 12px;
   font-weight: bold;
   padding: 5px;
   margin-left: 2px;
   border-style: solid;
   border-width: 0.5px;
   background-color: white;
}

.orgId
{
   display: none;
}

.orgName
{
   font-size: 20px;
   transition: 0.3s;
   cursor: pointer;
}

.orgName:hover
{
   text-decoration: underline;
}

.greenBar
{
   font-size : 15px;
   color: #1A6F19;
}

#blankOrg
{
   height: 60px;
}

.unitOrg
{
   height: 150px;
   width: 355px;
   margin-left: 15px;
   margin-top: 15px;
   padding-left: 5px;
   background-color: #98EA80;
   border-radius: 10px;
   transition: 0.3s;
}

#rangePanel
{
   position: fixed;
   height: 40px;
   padding: 5px;
   width: 360px;
   margin-left: 15px;
   margin-top: 5px;
   margin-bottom: 20px;
   border-radius: 5px;
   background-color: #F3CE7F;
   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

#costRange
{
   height: 30px;
   width: 250px;
}

#costOut
{
   position: relative;
   top: -8px;
   border-width: 0.5px;
   color: #FCFA96;
   padding: 2px;
   height: 30px;
   margin-left: 5px;
   font-family: "Times New Roman";
   font-weight: bold;
   color: black; 
   border-style: solid;
}

.unitOrg:hover
{
   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
   background-color: #E3E68C;
   font-weight: bold;
}

#orgList
{
   overflow-y: scroll;
   height: 680px;
}

#btnContainer
{
   position: absolute;
   top: 178px;
   left: 260px;
   height: 40px;
   width: 200px;
   color: white;  
}

/*info contact review container*/

/*review section*/

#reviewContainer
{
   position: absolute;
   left: 450px;
   top: 440px;
   height: 482px;
   width: 400px;
   background-color: white;
}

#reviewList
{
   overflow-y: scroll;
   height: 420px;
   background-color: #97C0F0;
   padding-bottom: 10px;
   padding-top: 10px;
}

.unitReview
{
   width: 360px;
   margin-left: 7px;
   margin-top: 10px;
   background-color: #FCFA96;
   font-family: "Times New Roman";
   padding: 5px;
   border-radius: 5px;
}

.unitReview:hover
{
   font-weight: bold;
   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.unitReviewPhNo,.unitReviewRemark
{
   margin-top: 5px;
}

#unitReviewContent
{
   margin-top: 10px;
   margin-bottom: 5px;
   background-color: white;
   font-size: 18px;
   border-radius: 5px;
   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
   padding: 5px;
}

#positiveReviewBtn,#negativeReviewBtn,#allReviewBtn
{
   height: 30px;
   width: 100px;
   background-color: #3498DB;
   margin-left: 10px;
   margin-top: 10px;
   text-align: center;
   padding: 5px;
   color: white;
   border-radius: 10px;
   font-family: "Times New Roman";
   font-size: 15px;
   margin-bottom: 5px;
}

#positiveReviewBtn:hover,#negativeReviewBtn:hover,#allReviewBtn:hover
{
   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
   baclground-color: #9EFEEA;
   color: black;
   font-weight: bold;
}

#Good
{
   color: green;
   font-size: 20px;
}

#Bad
{
    color: red;
    font-size: 20px;
}

/*sort section*/

#sortContainer
{
   position: absolute;
   left: 10px;
   top: 180px;
   background-color: #195E6F;
   height: 45px;
   width: 240px;
}

#sortSelect
{
   height: 40px;
   width: 220px;
   margin: 5px;
   border-radius: 5px;
   font-size: 18px;
   font-family: "Times New Roman";
   padding-left: 10px;
}

/*contact section*/

#contactContainer
{
   position: absolute;
   left: 450px;
   top: 230px;
   height: 205px;
   width: 400px;
   background-color: white;
}

#contactList
{
   height: 180px;
   background-color: #EACED8;
   margin: 5px;
   overflow-y: scroll;
   padding-bottom: 20px;
}

.contact
{
  margin-left: 20px;
  margin-top: 10px;
  border-radius: 5px;
  background-color: #AED6F1;
  font-family: "Times New Roman";
  font-size: 20px;
  font-weight: bold; 
  padding: 10px;
  width: 300px;
  text-align: center;
  border-style: solid;
  border-width: 0.5px;
  border-color: grey;
}

.contact:hover
{
   font-size: 22px;
   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

/*info section*/

#infoContainer
{
   position: absolute;
   left: 450px;
   top: 20px;
   height: 200px;
   width: 400px;
   background-color: white;
   overflow-y: auto;
}

#orgNameBig,#orgAddressBig
{
   width: 350px;
   background-color: #D6DDD2;
   margin-top: 10px;
   margin-left: 10px;
   padding: 10px;
   font-family: "Times New Roman";
   font-size: 18px;
   font-weight: bold;
   border-radius: 5px;
   
   
}

#orgNameBig:hover,#orgAddressBig:hover
{
   box-shadow: 0px 8px 16px 0px blue;
}

#msgBig
{
   background-color: yellow;
   padding: 5px;
   margin: 5px;
   color:red;
   font-family: "Times New Roman";
   font-size: 12px;
   border-radius: 5px;
   width: 350px;
}


/*add Review Section*/

#addReviewContanier
{
   position: absolute;
   left: 870px;
   top: 400px;
   background-color: white;
   height: 340px;
   width: 450px;
}

#UserRemark
{
   background-color: #FCEDBD;
   margin: 10px;
   height: 320px;
   border-radius: 10px;
}

#userPhNo,#lastDate,#remarkPanel
{
   margin-top: 10px;
   margin-left: 10px;
   padding: 10px;
   background-color: white;
   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
   width: 390px;
   font-family: 20px;
   font-weight: bold;
   color: blue;
   border-radius: 5px;
}

#userReview
{
   height: 80px;
   width: 400px;
   margin-left: 10px;
   padding: 5px;
   font-family: "Times New Roman";
   font-size: 15px;
   border-radius: 5px;
}

#addReview,#reviewSubmit,#reviewCancel
{
   height: 40px;
   width: 150px;
   background-color: #D8F3C8; 
   padding: 5px;
   font-weight: bold;
   margin-left: 15px;
   font-family: "Times New Roman";
   font-size: 18px;
   border-radius: 5px;
}

#addReview
{
  margin-top: 10px; 
}

#addReview:hover,#reviewSubmit:hover,#reviewCancel:hover
{
    background-color: #688259;
    color: white;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

</style>

</head>
<body onload = 'initiate()'>

<div id = 'anotherPageContainer'>another page links will be loaded here</div>
<div id = 'cityContainer'>Select cities and sublocations from here</div>
<div id = 'subareaContainer'>sublocations from here</div>
<div id = 'btnContainer'>search button will be printed here</div>
<div id = 'sortContainer'>sort options will be printed here</div>
<div id = 'orglistContainer'>The selected results will be shown here</div>
<div id = 'infoContainer'>Details about org will be shown here</div>
<div id = 'contactContainer'>contacts of the org will be shown here</div>
<div id = 'reviewContainer'>reviews of the org will be shown here</div>
<div id = 'addReviewContanier'>Reviews are remarks will be added here</div>

<script>

function initiate()
{
   loadCity();	
   
   var orgid = 1;
   var phNo = "651351351";
   
   //loadAddReview(orgid,phNo);
   //loadLoginButton and add org button
   var cont = "<button id = 'orgLogin'>Sign Up</div>";
   document.getElementById("anotherPageContainer").innerHTML = cont;
   
   document.getElementById("orgLogin").addEventListener("click",function(event){
	  
	   var x = prompt("Enter Login Id","1");
	   var actionStr = "/showorg/" + parseInt(x);
	   location.href = actionStr;
   });
}


function loadCity()
{
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function(){
		
		if(this.readyState == 4 && this.status == 200)
		{
			var res = this.responseText;
			var jsonObj = JSON.parse(res);
			loadCityList(jsonObj);
		}
		
	};
	
	var actionStr = "/city";
	xhttp.open("GET",actionStr,true);
	xhttp.send();
}

function loadCityList(x)
{
	var len = x.length;
	var i;
	
	var cont = "<input type = 'text' id = 'citySearchText' placeholder = 'Search'></input>";
    cont = cont + "<select id = 'citySelect'>";
    cont = cont + "<option class = 'cityname' value = '0'>None</option>";
	for(i = 0;i<len;i++)
	{
		cont = cont + "<option class = 'cityname' value = '" + x[i].cityid + "'>" + x[i].cityname + "</option>";
	}	
	cont = cont + "</select>";
	document.getElementById("cityContainer").innerHTML = cont;
	
	document.getElementById("citySelect").addEventListener("change",function(event){
		
		 var x = event.target.value;
    	 window.alert("city id changed to : " + x);
    	 loadSubArea(x);
		
	});
	
	document.getElementById("citySearchText").addEventListener("keyup",function(event){
		
		var txt = event.target.value.trim().toLowerCase();
		console.log("text is : " + txt);
		var y = document.getElementsByClassName("cityname");
		var len = y.length;
		var i;
		var rText = "";
		var count = 0;
		for(i=0;i<len;i++)
	    {
			rText = y[i].innerText.toLowerCase();
			if(rText.indexOf(txt) == 0)
			{
				count++;
				y[i].style.display = "block";
				console.log("rtext : " + rText + " staying");
				if(count == 1)
				{
					//y[i].selected = true;
				}	
			}
			else
			{
				
				if(rText != "none")
				{
				   y[i].style.display = "none";
				   console.log("rtext : " + rText + " disappearing")
				}
			}	
			
	    }		
		
	});
	
}

function loadSubArea(str)
{
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function(){
    	
    	if(this.readyState == 4 && this.status == 200)
    	{
    		var res = this.responseText;
    		var jsonObj = JSON.parse(res);
    		var len = jsonObj.length;
    		if(len == 0)
    		{
    			window.alert("No SubAreas");
    		}
    		else
    		{
    			window.alert("SubAreas will be uploaded");
    			loadSubAreaList(jsonObj); 
    		}	
    	}	
    };
    
    var actionStr = "/subarea/" + parseInt(str);
    xhttp.open("GET",actionStr,true);
    xhttp.send();
}

function loadSubAreaList(x)
{
   var len = x.length;
   var i;
   var cont = "<input type = 'text' id = 'subAreaSearchText' placeholder = 'Search'></input>";
   cont = cont + "<select id = 'subAreaSelect'>";
   cont = cont + "<option class = 'subareaname' value = '0'>None</option>";
   
   for(i=0;i<len;i++)
   {
	   cont = cont + "<option class = 'subareaname' value = '" + x[i].subareaid + "'>" + x[i].subreaname + "</option>";
   }
   
   cont = cont + "</select>";
   
   document.getElementById("subareaContainer").innerHTML = cont;
   
   document.getElementById("subAreaSearchText").addEventListener("keyup",function(event){
	  
	   var txt = event.target.value.trim().toLowerCase();
	   var y = document.getElementsByClassName("subareaname");
	   var len = y.length;
	   var i;
	   var rText = "";
	   
	   for(i=0;i<len;i++)
	   {
		   rText = y[i].innerText.trim().toLowerCase();
		   
		   if(rText.indexOf(txt) == 0)
		   {
			   y[i].style.display = "block";
			   
		   }
		   else
		   {
			   if(rText != "none")
			   {
				   y[i].style.display = "none";
			   }	   
		   }	   
		   
	   }	   
	   
   });
   
   
   var b = document.getElementById("subAreaSelect");
   
   b.addEventListener("change",function(event){
 	  
 	  var x = event.target.value;
 	  window.alert("sub area id is changed to : " + x);
 	  var cont = "<button id = 'searchBtn'>Search</button>";
 	  document.getElementById("btnContainer").innerHTML = cont;
 	  document.getElementById("searchBtn").addEventListener("click",function(event){
 		
 		  var x = document.getElementById("citySelect").value;
 		  var y = document.getElementById("subAreaSelect").value;
 		  
 		  window.alert("city id : " + x + " and subarea id : " + y);
 		  
 		  //document.getElementById("resultContainer").innerHTML = str;
 		  
 		  loadOrgs(x,y);
 	
 	  });
 	  
   });
   
}

//org list section

function loadSortPanel()
{
	var cont = "<select id = 'sortSelect'>";
	   cont = cont + "<option class = 'sortBy' value = '0'>Date</option>"; //by date
	   cont = cont + "<option class = 'sortBy' value = '1'>Availability</option>"; //by availability
	   cont = cont + "<option class = 'sortBy' value = '2'>Activity</option>"; //by served count
	   cont = cont + "<option class = 'sortBy' value = '3'>Review</option>"; //by helpfulcount
	   cont = cont + "<option class = 'sortBy' value = '4'>Cost</option>";   //by cost
	   cont = cont + "</select>";
	   
	   //date avail serve help cost
	   
	   document.getElementById("sortContainer").innerHTML = cont;
	   
	   document.getElementById("sortSelect").addEventListener("change",function(event){
		  
		   var i = parseInt(event.target.value);
		   loadOrgListPanel(allOrgs[i]);
		   
	   });
}

//all orgs contains 5 differently sorted org lists
var allOrgs = "";
function loadOrgs(str1,str2)
{
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function(){
    	
    	if(this.readyState == 4 && this.status == 200)
    	{
    		var res = this.responseText;
    		var jsonObj = JSON.parse(res);
    		var len = jsonObj.length;
    		if(len == 0)
    		{
    			var cont = "<div id = 'NoRecord'>No Organisations Found</div>";
    			document.getElementById("orglistContainer").innerHTML = cont;
    		}
    		else
    		{
    			allOrgs = jsonObj;
    			loadOrgListPanel(allOrgs[0]);
    			loadSortPanel();
    		}	
    	}	
 
    };
    
    //var actionStr = "loadOrgs?cityid=" + str1 + "&subareaid=" + str2;
    var actionStr = "/org/" + parseInt(str1) + "/" + parseInt(str2);
    xhttp.open("GET",actionStr,true);
    xhttp.send();
}


//one unit will consist name link, available, served, last serve time, public review count
function getUnitOrgPanel(x)
{
   
   var cont = "<div class = 'unitOrg'>";
   cont = cont + "<div class = 'orgId'>" + x.orgid + "</div>";
   cont = cont + "<div class = 'orgName'><span class = 'greenBar'>Name : </span>" + x.orgname + "</div>";
   cont = cont + "<div class = 'available'><span class = 'greenBar'>Available : </span>" + x.available + "</div>";
   cont = cont + "<div class = 'servedCount'><span class = 'greenBar'>Served : </span>" + x.servedcount + "</div>";
   cont = cont + "<div class = 'servedTime'><span class = 'greenBar'>Last Served : </span>" + x.date + "</div>";
   cont = cont + "<div class = 'helpfulCount'><span class = 'greenBar'>Helpful to : </span>" + x.helpfulcount + "</div>";
   cont = cont + "<div class = 'nouseCount'><span class = 'greenBar'>Useless to : </span>" + x.nousecount + "</div>";
   cont = cont + "<div class = 'cost'><span class = 'greenBar'>Maximum cost : </span>Rs. <span class = 'netCost'>" + x.cost + "</span></div>";
   cont = cont + "</div>";
   
   return cont;	
}

function getOrgPanel(x)
{	
   var len = x.length;
   var i;
   
   var cont = "<div id = 'orgList'>";
   
   //price range should be added here
   
   cont = cont + "<div id = 'rangePanel'>";
   cont = cont + "<input type = 'range' id = 'costRange' min = '0' max = '100000' value = '100000'><span id = 'costOut'>Rs.100000</span>";
   cont = cont + "</div>";
   cont = cont + "<div id = 'blankOrg'></div>";
   
   for(i=0;i<len;i++)
   {
	   cont = cont + getUnitOrgPanel(x[i]);
   }
   cont = cont + "</div>";
   
   return cont;
}

function loadOrgListPanel(x)
{
	window.alert("orglist panel called");
	
   //orglistContainer	
	var y = getOrgPanel(x);
   document.getElementById("orglistContainer").innerHTML = y;
   
   document.getElementById("costRange").addEventListener("input",function(event){
	  
	   var x = event.target.value;
	   document.getElementById("costOut").innerHTML = "Rs." + x;
	   
	   //unit org sorting is remained to implement
	   var y = document.getElementsByClassName("netCost");
	   var len = y.length;
	   var i;
	   
	   for(i=0;i<len;i++)
	   {
		   if(parseInt(y[i].innerText) <= parseInt(x))
		   {
			   y[i].parentElement.parentElement.style.display = "block";
		   }
		   else
		   {
			   y[i].parentElement.parentElement.style.display = "none";
		   }	   
		   
	   }	   
   });
   
   //sort panel
   var x = document.getElementsByClassName("orgName");
   var len = x.length;
   var i;
   for(i=0;i<len;i++)
   {
	   x[i].addEventListener("click",function(event){
		  
		   //x is the org id here
		   var x = event.target.parentElement.getElementsByClassName("orgId")[0].innerText;
		   window.alert(x + " is clicked");
		   loadOrgInfo(x);
	   });
   }	   
   
}


function loadReviews(x)
{
   //x is the org id passed
   //actionStr loadOrgReview
   console.log("loadReviews called");
   var xhttp = new XMLHttpRequest();
   xhttp.onreadystatechange = function(){
	 
	   if(this.readyState == 4 && this.status == 200)
	   {
		  var res = this.responseText;
		  var jsonObj = JSON.parse(res);
		  loadReviewsPanel(jsonObj);
	   }	   
   };
   
   //var actionStr = "loadOrgReview?orgId=" + x;
   var actionStr = "/review/" + parseInt(x);
   xhttp.open("GET",actionStr,true);
   xhttp.send();
}

function loadReviewsPanel(x)
{
   //reviewContainer
   //the jsonObj is passed
   console.log("loadReviewsPanel Called");
   var len = x.length;
   if(len == 0)
   {
	   var cont = "<div id = 'NoReviews'>No Reviews Yet</div>";
	   document.getElementById("reviewContainer").innerHTML = cont;
   }	   
   else
   {
	   //changeDateFormat hidePhNo
	   var cont = "<button id = 'allReviewBtn'>All</button>";
	   cont = cont + "<button id = 'positiveReviewBtn'>Positive</button>";
	   cont = cont + "<button id = 'negativeReviewBtn'>Negative</button>";
		   
	   cont = cont + "<div id = 'reviewList'>";
	   var i;
	   for(i=0;i<len;i++)
	   {
		   cont = cont + "<div class = 'unitReview'>";
		   cont = cont + "<div class = 'unitReviewPhNo'>Reviewed By : " + hidePhNo(x[i].phno) + " on : " + x[i].date + "</div>";
		   
		   if(parseInt(x[i].remark) == 0)
		   {
			   cont = cont + "<div class = 'unitReviewRemark'>Remark : <span class = 'rem' id = 'Bad'>Not Helpful</span></div>";
		   }
		   else
		   {
			   cont = cont + "<div class = 'unitReviewRemark'>Remark : <span class = 'rem' id = 'Good'>Helpful</span></div>";
		   }
		   
		   cont = cont + "<div id = 'unitReviewContent'>" + x[i].review + "</div>";
		   cont = cont + "</div>"; //unitReview Closes
	   }
	   
	   cont = cont + "</div>"; //reviewList closes   
	   document.getElementById("reviewContainer").innerHTML = cont;
	   
	   document.getElementById("negativeReviewBtn").style.visibility = "visible";
	   document.getElementById("positiveReviewBtn").style.visibility = "visible";
	   document.getElementById("allReviewBtn").style.visibility = "hidden";
	   
	   document.getElementById("allReviewBtn").addEventListener("click",function(event){
		  
		   document.getElementById("negativeReviewBtn").style.visibility = "visible";
		   document.getElementById("positiveReviewBtn").style.visibility = "visible";
		   document.getElementById("allReviewBtn").style.visibility = "hidden";
		   
		   var x = document.getElementsByClassName("rem");
		   var len = x.length;
		   var i;
		   
		   for(i=0;i<len;i++)
		   {
			   //if(x[i].innerText == "Helpful")
				   x[i].parentElement.parentElement.style.display = "block";
		   }	   
		   
	   });
	   
	   
	   document.getElementById("positiveReviewBtn").addEventListener("click",function(event){
			  
		   document.getElementById("negativeReviewBtn").style.visibility = "visible";
		   document.getElementById("positiveReviewBtn").style.visibility = "hidden";
		   document.getElementById("allReviewBtn").style.visibility = "visible";
		   
		   var x = document.getElementsByClassName("rem");
		   var len = x.length;
		   var i;
		   
		   for(i=0;i<len;i++)
		   {
			   if(x[i].innerText == "Helpful")
			   {
				   x[i].parentElement.parentElement.style.display = "block";
			   }
			   else
			   {
				   x[i].parentElement.parentElement.style.display = "none";
			   }	   
		   }	   
		   
	   });
	   
	   document.getElementById("negativeReviewBtn").addEventListener("click",function(event){
		
		   document.getElementById("negativeReviewBtn").style.visibility = "hidden";
		   document.getElementById("positiveReviewBtn").style.visibility = "visible";
		   document.getElementById("allReviewBtn").style.visibility = "visible";
		   
		   var x = document.getElementsByClassName("rem");
		   var len = x.length;
		   var i;
		   
		   for(i=0;i<len;i++)
		   {
			   if(x[i].innerText == "Helpful")
			   {
				   x[i].parentElement.parentElement.style.display = "none";
			   }
			   else
			   {
				   x[i].parentElement.parentElement.style.display = "block";
			   }	   
		   }	   
		   
	   });
	   
   }	   
   //function ends
}

//change date format
//hide phone number
//changeDateFormat hidePhNo

//not in need currently, as in rest api, we rectified the date format to the original
function changeDateFormat(d)
{
   var x = d.split("-");
   var y = x[2] + ":" + x[1] + ":" + x[0];
   return y;
}

function hidePhNo(n)
{
   var l = n.length;
   var x = n[0] + n[1] + "********";
   return x;
}

function loadOrgInfo(x)
{
    //phone numbers and reviews are fetched in addition
    //rest of the infos are already present in the front page
    window.alert("load info is called for orgid : " + x);
    loadInfoPanel(x);
    loadContact(x);
    loadReviews(x);
    
}

function getOrg(x,orgs)
{
   //x is the org id
   var len = orgs.length;
   var i;
   for(i=0;i<len;i++)
   {
	   if(parseInt(orgs[i].orgid) == parseInt(x))
	   {
		   return orgs[i];
	   }	   
   }	   
}

function loadInfoPanel(x)
{
   //x is the org id
   //name, detailed address, 
   //message 
   //allOrgs is initialised somewhere when loading
   var org = getOrg(x,allOrgs[0]);
   var cont = "<div id = 'info'>";
   cont = cont + "<div id = 'orgIdBig'>" + org.orgid + "</div>";
   cont = cont + "<div id = 'orgNameBig'>" + org.orgname + "</div>";
   cont = cont + "<div id = 'orgAddressBig'>" + org.address + "</div>";
   cont = cont + "<button id = 'addReview'>Add Review</div>";
   cont = cont + "</div>";
   
   document.getElementById("infoContainer").innerHTML = cont;
   
   //add review button will be there somewhere, have to figure it out
   //action of add review button is below
   
   document.getElementById("addReview").addEventListener("click",function(event){
	  
	var phNo = prompt("Enter your phone number","9812345678");
	var orgid = document.getElementById("orgIdBig").innerText;
	loadAddReview(orgid,phNo);
	
   });
   
}

function loadAddReview(orgid,phno)
{
   //review and remarks data base will be separate
   //org id and phone number is passed
   var xhttp = new XMLHttpRequest();
   xhttp.onreadystatechange = function(){
	   
	   if(this.readyState == 4 && this.status == 200)
	   {
		   var res = this.responseText;
		   var jsonObj = JSON.parse(res);
		   loadAddReviewPanel(jsonObj,orgid,phno);
	   }	   
   };
   
   //var actionStr = "loadUserReview?orgId=" + orgid + "&phNo=" + phNo;
   var actionStr = "/unitreview/" + parseInt(orgid) + "/" + phno;
   xhttp.open("GET",actionStr,true);
   xhttp.send();
}


function loadAddReviewPanel(x,orgid,phno)
{
   //can review and remark be merged into one class?
   //x.phoneNo x.remark x.review
   //so len is either 0 or 2
   //addReviewContanier
   //1 for helpful and 0 for nouse
   //changeDateFormat hidePhNo 
   //var len = x.length;
   var cont = "<div id = 'UserRemark'>";
   cont = cont + "<div id = 'OrgIdReviewed'>" + orgid + "</div>";
   cont = cont + "<div id = 'userPhNo'>" + phno + "</div>";
   
   if(x.length > 0)
   {
	   cont = cont + "<div id = 'lastDate'>last updated on : " + x[0].date + "</div>";
   }	   
   
   cont = cont + "<div id = 'remarkPanel'>";
   cont = cont + "<input type='radio' id = 'isGood' value = '1'>HelpFul</input>";
   cont = cont + "<input type='radio' id = 'isBad' value = '0'>NoUse</input>";
   cont = cont + "</div>";
   cont = cont + "<div id = 'reviewed'>0</div>"
   cont = cont + "<textarea id = 'userReview' placeholder = 'writing a review is optional'>Dummy review</textarea>";
   cont = cont + "<button id = 'reviewSubmit'>Submit</button>";
   cont = cont + "<button id = 'reviewCancel'>Cancel</button>";
   cont = cont + "</div>";
   document.getElementById("addReviewContanier").innerHTML = cont;
   document.getElementById("addReviewContanier").style.display = "block";
   
   var flag = false;
   
   if(x.length > 0)
   {
	   if(parseInt(x[0].remark) == 0)
	   {
		   //rated no use
		   document.getElementById("isBad").checked = true;
		   flag = true;
	   }
	   
	   if(parseInt(x[0].remark) == 1)
	   {
		   //rated no use
		   document.getElementById("isGood").checked = true;
		   flag = true;
	   }
   }	   
   
   if(flag == false)
   {
	   document.getElementById("isGood").checked = true;
   }	   
   
   if(x.length > 0)
   {
	   if(x[0].review != "" && x[0].review != null)
	   {
		   document.getElementById("userReview").value = x[0].review;
		   document.getElementById("reviewed").innerHTML = "1"
		   flag = true;
	   }
   }	   
   
   if(flag == true)
   {
	   document.getElementById("reviewSubmit").innerText = "Update";
   }	   
   
   //actions on radio button and button
   document.getElementById("isGood").addEventListener("change",function(event){
	   
	   var x = event.target;
	   var y = document.getElementById("isBad");
	   
	   if(x.checked == true)
	   {
		   y.checked = false;
	   }
	   
	   else
	   {
		   y.checked = true;
	   }	   
	   
   });
   
   document.getElementById("isBad").addEventListener("change",function(event){
	   
	   var x = event.target;
	   var y = document.getElementById("isGood");
	   
	   if(x.checked == true)
	   {
		   y.checked = false;
	   }
	   
	   else
	   {
		   y.checked = true;
	   }
	   
   });
   
   document.getElementById("userReview").addEventListener("keyup",function(event){
	  
	   var x = event.target.value;
	   var limit = 1000;
	   if(x.length > limit)
	   {
		   window.alert("can't exceed 1000 in length");
		   event.target.value = x.substring(0,limit);
	   }	   
	   
   });
   
   document.getElementById("reviewCancel").addEventListener("click",function(event){
	  
	   document.getElementById("addReviewContanier").style.display = "none";   
	   
   });
   
   document.getElementById("reviewSubmit").addEventListener("click",function(event){
	   
	   var x = document.getElementById("reviewed").innerText;
	   var y = document.getElementById("userReview").value;
	   var p = document.getElementById("isGood").checked;
	   var q = document.getElementById("isBad").checked;
	   
	   window.alert("reviewed : " + x + " new review : " + y);
	   
	   var rem = 2;
	   if(p == true)
	   {
		  rem = 1;
	   }
	   
	   if(q == true)
	   {
		   rem = 0;
	   }	   
	   
	   if(x == "1" && (y == "" || y == null))
	   {
		   window.alert("edited review can't be empty");
	   }
	   else if(x == "0" && (y == "" || rem == 2))
	   {
		   window.alert("Empty review not allowed");
	   }
	   else
	   {
		   //orgIdReviewed
		   //userPhNo
		   var oid = document.getElementById("OrgIdReviewed").innerText;
		   var phNo = document.getElementById("userPhNo").innerText;
		   //OrgIdReviewed
		   var status = "add";
		   if(flag == true)
		   {
			   status = "update";
		   }
		   
		   //y is review here
		   sendReview(status,oid,phNo,rem,y);
	   }	   
	   
   });
   
}

function sendReview(status,oid,phNo,rem,rev)
{
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function(){
    	
    	if(this.readyState == 4 && this.status == 200)
        {
    	   var res = this.responseText;
    	   var jsonObj = JSON.parse(res);
    	   if(jsonObj == "yes")
    	   {
    		   window.alert("Review added/updated successfully");
    		   document.getElementById("addReviewContanier").style.display = "none";
    		   var oid = document.getElementById("OrgIdReviewed").innerText; 
    		   
    		   loadReviews(oid);
    		   //loadOrgInfo(oid);
    	   }
    	   else
    	   {
    		   window.alert("Review Addition/Updation failed");    
    	   }
    	   
        }		
    };
    
    //var actionStr = "review?status=" + status + "&orgId=" + oid + "&phNo=" + phNo + "&remark=" + rem + "&orgReview=" + rev;
    //orgid phno remark review
    var actionStr = "/review/" + parseInt(oid) + "/"  + phNo + "/" + parseInt(rem) + "/" + rev;
    
    if(status == "add")
    {
    	xhttp.open("POST",actionStr,true);
    }	
    
    if(status == "update")
    {
    	xhttp.open("PUT",actionStr,true);	
    }	
    
    xhttp.send();
}

function loadContact(x)
{
   //x is the org id here
   var xhttp = new XMLHttpRequest();
   xhttp.onreadystatechange = function(){
	 
	   if(this.readyState == 4 && this.status == 200)
	   {
		  var res = this.responseText;
		  var jsonObj = JSON.parse(res);
		  window.alert("contacts fetched");
		  loadContactPanel(jsonObj);
	   }	   
   };
   
   var actionStr = "/contact/" + parseInt(x);
   xhttp.open("GET",actionStr,true);
   xhttp.send();
}

function loadContactPanel(x)
{
   //contactContainer
   var len = x.length;
   var i;
   var cont = "<div id = 'contactList'>";
   cont = cont + "<div id = 'msgBig'>Published availability may vary from the original, please check by calling</div>";
   for(i=0;i<len;i++)
   {
	   cont = cont + "<div class = 'contact'>" + x[i].contact + "</div>";   
   }
   cont = cont + "</div>";
   document.getElementById("contactContainer").innerHTML = cont;
   //no actions required
} 


</script>


</body>
</html>