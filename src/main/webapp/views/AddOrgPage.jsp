<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Organisation Page</title>

<style>

#cityListContainer
{
    position: absolute;
    top: 20px;
    left: 600px;
    height: 100px;
    width: 300px;
    background-color: #85C1E9;
}

#citySearch,#citySelect
{
   margin-left: 5px; 
   margin-top: 10px;
   height: 20px;
   width: 280px;
   font-family: "Times New Roman";
   font-size: 18px;
}

#citySelect
{
   height: 30px;
   width: 290px;
}

#selectedCityName
{
   margin-left: 10px;
   height: 80px;
   width: 280px;
   font-size: 30px;
   text-align: center;
   padding-top: 20px;
   background-color: #D3D1C9;
}

/*sub area section*/

#subAreaListContainer
{
   position: absolute;
   top: 20px;
   left: 900px;
   background-color: #AED6F1;
   height: 100px;
   width: 300px;
}

#subAreaSearch,#subAreaSelect
{
   margin-left: 5px; 
   margin-top: 10px;
   height: 20px;
   width: 280px;
   font-family: "Times New Roman";
   font-size: 18px;
}

#subAreaSelect
{
   height: 30px;
   width: 290px;
}

#selectedSubAreaName
{
   margin-left: 10px;
   height: 80px;
   width: 280px;
   font-size: 30px;
   text-align: center;
   padding-top: 20px;
   background-color: #D1F077;
}

/*org name section*/

#orgNameContainer
{
    position: absolute;
    top: 120px;
    left: 600px;
    background-color: #3498DB;
    height: 100px;
    width: 300px;
}

#orgNameText
{
   margin-top: 5px;
   margin-left: 5px;
   height: 40px;
   width: 280px; 
   font-family: "Times New Roman";
   font-size: 18px;
}

#orgNameVerify
{
   border-radius: 5px;
   margin-left: 100px;
   height: 30px;
   width: 100px;
   background-color: #F9E79F;
   font-family: "Times New Roman";
   font-size: 15px;
   transition: 0.2s;
}

#orgNameVerify:hover
{
   font-size: 18px;
}

#selectedOrgName
{
   font-size: 30px;
   font-family: "Times New Roman";
   height: 70px;
   padding: 10px;
   text-align: center;
   margin: 5px;
   width: 270px;
   background-color: #F5EFB8;
}

/*contact section*/

#contactFormContainer
{
   position: absolute;
   top: 120px;
   left: 900px;
   width: 300px;
   height: 400px;
   background-color: #B8C4F5;
}

.contactText
{
  margin-top: 5px;
  marginn-left: 5px;
  height: 40px;
  width: 200px;
  font-family: "Times New Roman";
  font-size: 18px; 
  border-radius: 5px;
}

.cancelContact
{
  font-family: "Times New Roman";
  mergin-left: 10px;
  height: 40px;
  width: 80px;
  border-radius: 5px;
  background-color: #E3E03E;
  font-size: 18px;
}

.cancelContact:hover
{
  font-size: 20px;
  background-color: #F7C967;
}

#addContactRow
{
   font-family: "Times New Roman";
   margin-left: 90px;
   margin-top: 10px;
   height: 40px;
   width: 100px;
   background-color: #F50505;
   color: white;
   font-size: 20px;
   border-radius: 10px;
   transition: 0.2s;
}

#addContactRow:hover
{
   width: 120px;
   height: 50px;
   font-size: 24px;
   background-color: #F7F30B;
   color: black;
}

/*org form section*/

#orgFormContainer
{
   position: absolute;
   left: 600px;
   top: 220px;
   background-color: #E8BFF0;
   height: 300px;
   width: 300px;
}

#availText
{
   margin-top: 10px;
   margin-left: 5px;
   height: 40px;
   width: 280px;
   font-family: "Times New Roman";
   font-size: 20px;
}

#addressText
{
   margin-top: 10px;
   margin-left: 5px;
   height: 125px;
   width: 280px;
   font-family: "Times New Roman";
   font-size: 18px;
}

/*submit section*/

#submitBtnContiner
{
    position: absolute;
    left: 945px;
    top: 450px;
    background-color: #CEFAA8;
    height: 55px;
    width: 200px;  
    border-radius: 5px; 
}

#formSubmit
{
   margin: 8px;
   background-color: #73DA6A;
   font-family: "Times New Roman";
   font-size: 18px; 
   height: 40px;
   width: 180px;
   transition: 0.2s;
   border-radius: 5px;
}

#formSubmit:hover
{
   font-size: 25px;
   background-color: #D3F7D0;
}

body
{
   background-color: #496B1F;
}

/*cost section*/

#costFormContainer
{
   position: absolute;
   top: 430px;
   left: 608px;
   height: 90px;
   width: 272px;
   background-color: white;
   padding-left: 10px;
   font-family: "Times New Roman";
   font-size: 18px;
   border-style: solid;
   border-width: 0.6px;
   border-color: #A4A4A3;
}

#costRange
{
   width: 180px;
}

#costHead,#costEnd
{
   background-color: #D2DB69;
   padding: 2px;
   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
   border-radius: 6px;
}

#costResult
{
   padding: 10px;
   height: 20px;
   width: 228px;
   margin-top: 5px;
   text-align: center;
   font-weight: bold;
   font-size: 18px;
   background-color: #AED6F1;
   border-radius: 5px;
   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

#costLev
{
   font-size: 15px;
   font-weight: bold;
   padding: 5px;
   margin-bottom: 10px;
}

</style>

</head>
<body onload = 'initiate()'>

<div id = 'cityListContainer'>cityList will  be printed here</div>
<div id = 'subAreaListContainer'>sub area list container</div>
<div id = 'orgNameContainer'>city name panel is here</div>
<div id = 'orgFormContainer'>org form will be printed here</div>
<div id = 'contactFormContainer'>contact form will be uploaded here</div>
<div id = 'costFormContainer'>cost form will be loaded here</div>
<div id = 'submitBtnContiner'>submit button will be uploaded here</div>

<script>

//cityid sid name avail addr cont

var selectedCityId = "";
var selectedSubAreaId = "";
var selectedOrgName = "";
var selectedAvailable = "";
var selectedAddress = "";
var selectedContact = "";
var selectedCost = "";

function submitOrgName(cid,sid)
{
   var cont = "<textarea id = 'orgNameText' placeholder = 'org name should be unique'></textarea><button id = 'orgNameVerify'>Verify</button>";
   document.getElementById("orgNameContainer").innerHTML = cont;
   
   //btn verify actions
   document.getElementById("orgNameVerify").addEventListener("click",function(event){
	  
	   //all org name in database should be stored in small letter
	   
	   var xhttp = new XMLHttpRequest();
	   xhttp.onreadystatechange = function(){
		 
		   if(this.readyState == 4 && this.status == 200)
		   {
			  var res = this.responseText;
			  var jsonObj = JSON.parse(res);
			  if(jsonObj == "match")
		      {
				  window.alert("there is already an organisation by this name, in this locality");
		      }
			  else
			  {
				  var x = document.getElementById("orgNameText").value;
				  var flag = confirm("finalise " + x.toUpperCase() + " as organisation name ?");
				  
				  if(flag == true)
				  {
					  
					  selectedOrgName = x;
					  var cont = "<div id = 'selectedOrgName'>Org Name : " + x.toUpperCase() + "</div>";
					  document.getElementById("orgNameContainer").innerHTML = cont;
					  loadAddContact();
					  availAddressSubmit();
					  loadCostForm();
				  }
				  
				  //rest of the form will be loaded
				  //addContact is just a part of that
				  
			  }	  
			  
		   }	
		   
	   };
	   
	   //name cityid subareaid should be passed in servlet
	   var orgname = document.getElementById("orgNameText").value.toLowerCase();
	   //var cityid = document.getElementById("citySelect").value;
	   //var subareaid = document.getElementById("subAreaSelect").value;
	   //var actionStr = "verifyOrgName?orgName=" + orgname + "&cityId=" + cid + "&subAreaId=" + sid;
	   var actionStr = "/verifyorgname/" + parseInt(cid) + "/" + parseInt(sid) + "/" + orgname;
	   xhttp.open("GET",actionStr,true);
	   xhttp.send();
	   
   });
   
}

function loadCostForm()
{
	//costFormContainer
	var cont = "<span id = 'costLev'>Select maximum cost of cylinder:</span></br><span id = 'costHead'>0</span>";
	cont = cont + "<input type = 'range' min = '0' max = '100000' id = 'costRange' value = '20000'></input>";
	cont = cont + "<span id = 'costEnd'>1,00K</span>";
	cont = cont + "<div id = 'costResult'>Rs. 20000</div>";
	document.getElementById("costFormContainer").innerHTML = cont;
	
	document.getElementById("costRange").addEventListener("input",function(event){
		
		var x = event.target.value;
		selectedCost = x;
		document.getElementById("costResult").innerHTML = "Rs." + x;
	});
	
}

function loadAddContact()
{
   var i;	
   var cont = "<div id = 'addContactList'>";
   for(i=0;i<6;i++)
   {
	   //contactText
	   cont = cont + "<div class = 'addUnitContact'>";
	   cont = cont + "<div class = 'slotIndex'>" + i + "</div><input type = 'text' class = 'contactText' placeholder = 'Add Number'/>";
	   cont = cont + "<button class = 'cancelContact'>Cancel</button>";
	   cont = cont + "</div>";//addUnitContact closes
   }
   cont = cont + "</div>";
   cont = cont + "<button id = 'addContactRow'>Add Row</button>";
   document.getElementById("contactFormContainer").innerHTML = cont;
   var x = document.getElementsByClassName("addUnitContact");
   var y = document.getElementsByClassName("cancelContact");
   var z = document.getElementsByClassName("slotIndex");
   
   for(i=0;i<6;i++)
   {
	   x[i].style.display = "none";
	   z[i].style.display = "none";
	   y[i].addEventListener("click",function(event){
		  
		   var i;
		   var count = 0;
		   var x = document.getElementsByClassName("addUnitContact");
		   for(i=0;i<6;i++)
		   {
			  if(x[i].style.display != "none")
			  {
				  count++;
			  }	  
		   }	   
		   
		   if(count == 1)
		   {
			   window.alert("contact is mandatory, cant delete all");
		   }
		   else
		   {
			   event.target.parentElement.style.display = "none";
			   var k = event.target.parentElement.getElementsByClassName("slotIndex")[0].innerText;
			   var j;
			   for(j=parseInt(k);j<5;j++)
			   {
				   if(x[j + 1].style.display != "none")
			       {
					   x[j].style.display = "block";
					   x[j].getElementsByClassName("contactText")[0].value = x[j+1].getElementsByClassName("contactText")[0].value;
					   x[j+1].style.display = "none";
			       }
			   
			   }	   
			   
			   if(count == 6)
			   {
				   document.getElementById("addContactRow").style.display = "block";
			   }	   
		   }	   
		   
	   });
   }	   
   x[0].style.display = "block";
   
   //add row actions
   
   document.getElementById("addContactRow").addEventListener("click",function(event){
	  
	   var flag = false;
	   var i;
	   var x = document.getElementsByClassName("addUnitContact");
	   var r = "";
	   var count = 0;
	   for(i=0;i<6;i++)
	   {
		   if(x[i].style.display != "none")
		   {
			   count++;
		   }	   
		   
		   r = x[i].getElementsByClassName("contactText")[0].value;
		   if(x[i].style.display != "none" && (r == null || r.trim() == ""))
		   {
			   window.alert("first fill the one,that is empty");
			   return;
		   }
	   
	   }
	   
	   for(i=0;i<6;i++)
	   {
		  if(x[i].style.display == "none")
	      {
			  x[i].style.display = "block";
			  x[i].getElementsByClassName("contactText")[0].value = null;
			  break;
	      }		  
	   }	   
	   
	   
	   
	   if(count == 5)
	   {
		  document.getElementById("addContactRow").style.display = "none";   
	   }	   
	   
   });
   	
}


function availAddressSubmit()
{
   var cont = "<div id = 'restForm'><input type = 'text' id = 'availText' placeholder = 'Enter current Stock'></input><br/>";
   cont = cont + "<textarea id = 'addressText' placeholder = 'Road name and prominent landmarks'></textarea></div>";
   
   document.getElementById("orgFormContainer").innerHTML = cont;
   cont = "<button id = 'formSubmit'>Verify</button>";
   document.getElementById("submitBtnContiner").innerHTML = cont;
   
   //action of form submit button
   
   document.getElementById("formSubmit").addEventListener("click",function(event){
	  
	   //Verify Contact Uniqueness
	   var keyTxt = event.target.innerText;
	   
	   selectedAddress = document.getElementById("addressText").value.trim();
	   selectedAvailable = document.getElementById("availText").value;
	   selectedCost = document.getElementById("costRange").value;
	   
	   var y = document.getElementsByClassName("contactText");
	   var i;
	   var temp = "";
	   selectedContact = "";
	   for(i=0;i<6;i++)
	   {
		  if(y[i].parentElement.style.display != "none")
		  {
			  temp = y[i].value;
			  if(temp != null && temp.trim() != "")
		      {
				  selectedContact = selectedContact + temp.trim() + "A";
		      }		  
		  }	  
		    
	   }	   
	   
	   if(selectedContact == "")
	   {
		   window.alert("Fill the contacts");
		   return;
	   }	   
	   else
	   {
		   var n = selectedContact.length;
		   selectedContact = selectedContact.substring(0,n-1);
		   
		 //cityid sid name avail addr cont
		   
		 console.log("cityId : " + selectedCityId);
		 console.log("subAreaId : " + selectedSubAreaId);
		 console.log("org name : " + selectedOrgName);
		 console.log("address : " + selectedAddress);
		 console.log("available : " + selectedAvailable);
		 console.log("contact : " + selectedContact);
		 console.log("cost : " + selectedCost);
		 
		 //now we just have to pass them on to the submit servlet
		 
		 var xhttp1 = new XMLHttpRequest();
		 xhttp1.onreadystatechange = function(){
			 
			if(this.readyState == 4 && this.status == 200)
		    {
				var res = this.responseText;
				var jsonObj = JSON.parse(res);
				if(jsonObj.length == 0)
				{
					var flag = confirm("All Ok, Submit?");
					if(flag == true)
					{

						 
						 //submit code section
						 var xhttp = new XMLHttpRequest();
						 xhttp.onreadystatechange = function(){
							
							 if(this.readyState == 4 && this.status == 200)
						     {
								var res = this.responseText;
								var jsonObj = JSON.parse(res);
						        
								if(jsonObj == "yes")
								{
									//var str = "Your Orgaisation Id : " + jsonObj[1];
									//str = str + " , keep it safe, once you forget it, you may have to contact the admin for recovery";
									window.alert("successfully Inserted");
									window.alert("Redirecting to the Public Page, login from there using your orgId");
									str = "/publicvisit";
									location.href = str;
								}
								else
							    {
								   "Addition of new org failed";
							    }		
						     }		 
						 };
						 
						 /*
						 var actionStr = "addNewOrg?cityId=" + selectedCityId;
						 actionStr = actionStr + "&subAreaId=" + selectedSubAreaId;
						 actionStr = actionStr + "&orgName=" + selectedOrgName;
						 actionStr = actionStr + "&address=" + selectedAddress;
						 actionStr = actionStr + "&available=" + selectedAvailable;
						 actionStr = actionStr + "&contact=" + selectedContact;
						 actionStr = actionStr + "&cost=" + selectedCost;
						 */
						 
						 var actionStr = "/org/" + selectedOrgName;
						 actionStr += "/" + parseInt(selectedCityId);
						 actionStr += "/" + parseInt(selectedSubAreaId);
						 actionStr += "/" + selectedAddress;
						 actionStr += "/" + parseInt(selectedAvailable);
						 actionStr += "/" + parseInt(selectedCost);
						 actionStr += "/" + parseInt(selectedContact);
						 //have to do something about contact
						 
						 console.log(actionStr);
						 
						 xhttp.open("POST",actionStr,true);
						 xhttp.send();
				   //submit code section ends		
						
					}	
					
				}
				else
				{
					//else point out the mistake
					console.log(jsonObj);
					var len = jsonObj.length;
					var i;
					var msgStr = "";
					for(i=0;i<len;i++)
				    {
						msgStr += jsonObj[i].contact + ",";
				    }		
					
					msgStr = msgStr.substring(0,msgStr.length - 1);
					window.alert("match : " + msgStr);
					
				}
		    }		
		 };
		 
		 var actionStr1 = "/verifycontact/" + selectedContact;
		 xhttp1.open("GET",actionStr1,true);
		 xhttp1.send();  
		 
	   }	   
	   
	   
   });
   
}

function initiate()
{
	loadCity();
	//loadCostForm();
	//loadSubArea();
	//submitOrgName();
	
	/*
    var cont = "<div id = 'nameTextCont'>Enter Name : <textarea id = 'nameText' placeholder = 'name should be unique'/></div>";	
	cont = cont + "<div id = 'addrTextCont'>Enter Address : <textarea = 'addrText' placeholder = 'only road name and landmark'/></div>";
	cont = cont + "<div id = 'contactTextCont'>Enter Contact : <input type = 'text' id = 'contText' placeholder = 'add 033 at first if land-line'/></div>";
	*/
}

function loadCity()
{
   var xhttp = new XMLHttpRequest();
   xhttp.onreadystatechange = function(){
	   
	 if(this.readyState == 4 && this.status == 200)
     {
		 var res = this.responseText;
		 var jsonObj = JSON.parse(res);
		 var len = jsonObj.length;
		 var i;
		 var cont = "<input type = 'text' id = 'citySearch' placeholder = 'Search'/>";
		 cont = cont + "<select id = 'citySelect'>";
		 cont = cont + "<option class = 'unitCity' value = '0'>None</option>";
		 for(i=0;i<len;i++)
	     {
			 cont = cont + "<option class = 'unitCity' value = '" + jsonObj[i].cityid + "'>" + jsonObj[i].cityname + "</option>";
	     }
		 cont = cont + "</select>";
		 document.getElementById("cityListContainer").innerHTML = cont;
		 //text field action and 
		 
		 document.getElementById("citySearch").addEventListener("keyup",function(event){
			
			 var x = event.target;
			 var y = x.value.toLowerCase();
			 var z = document.getElementsByClassName("unitCity");
			 var len = z.length;
			 var i;
			 var count = 0;
			 for(i=0;i<len;i++)
		     {
				 console.log(z[i].innerText);
				 if(z[i].innerText.toLowerCase().indexOf(y) == 0)
				 {
					 z[i].style.display = "block";
					 count++;
					 
					 /*
					 if(count == 1)
				     {
						 z[i].selected = true;
						 //window.alert("automatically selected city : " + document.getElementById("citySelect").value);
				     }*/
					 
				 }
				 else
				 {
					 if(z[i].innerText.trim() != "None")
					 {
						 z[i].style.display = "none";
					 }	 
					 
				 }	 
		     }		 
			 
		 });
		 
		 document.getElementById("citySelect").addEventListener("change",function(event){
			
			 var x = event.target;
			 if(parseInt(x.value) != 0)
		     {
				var y = x.options[x.selectedIndex].innerText;
				var flag = confirm("upload subarea of " + y.toUpperCase() + " ?");
				if(flag == true)
				{
					//city select will be static
					//cityListContainer
					
					selectedCityId = x.value;
					var cont = "<div id = 'selectedCityId'>" + x.value + "</div>";
					cont = cont + "<div id = 'selectedCityName'>City : " + y.toUpperCase() + "</div>";
					document.getElementById("cityListContainer").innerHTML = cont;
					document.getElementById("selectedCityId").style.display = "none";
					loadSubArea(x.value);
				}
		     }		 
			 
		 }); 
		 
     }		 
   };
   
   var actionStr = "/city";
   xhttp.open("GET",actionStr,true);
   xhttp.send();
}

function loadSubArea(cid)
{
   var xhttp = new XMLHttpRequest();
   xhttp.onreadystatechange = function(){
	 
	   if(this.readyState == 4 && this.status == 200)
	   {
		  var res = this.responseText;
		  var jsonObj = JSON.parse(res);
		  var len = jsonObj.length;
		  var i;
		  var cont = "<input type = 'text' id = 'subAreaSearch' placeholder = 'Search'/>";
		  cont = cont + "<select id = 'subAreaSelect'>";
		  cont = cont + "<option class = 'unitSubArea' value = '0'>None</option>";
		  for(i=0;i<len;i++)
		  {
			 cont = cont + "<option class = 'unitSubArea' value = '" + jsonObj[i].subareaid + "'>" + jsonObj[i].subreaname + "</option>";
		  }
		  cont = cont + "</select>";
		  document.getElementById("subAreaListContainer").innerHTML = cont;
		  
		  //subArea Panel actions
		  document.getElementById("subAreaSearch").addEventListener("keyup",function(event){
			  
			  var x = event.target.value.trim().toLowerCase();
			  var y = document.getElementsByClassName("unitSubArea");
			  var len = y.length;
			  var i;
			  var count = 0;
			  for(i=0;i<len;i++)
			  {
				 if(y[i].innerText.trim().toLowerCase().indexOf(x) == 0)
			     {
					 y[i].style.display = "block";
					 count++;
					 
					 if(count == 1)
				     {
						//y[i].selected = true;
						//window.alert("automatically selected subarea : " + document.getElementById("subAreaSelect").value);
				     }		 
			     }
				 else
			     {
					 if(y[i].innerText != "None")
					 {
						 y[i].style.display = "none";	 
					 }	 
					 
			     }	
				 
			  }	  
			  
		  });
		  
		  document.getElementById("subAreaSelect").addEventListener("change",function(event){
			 
			  var x = event.target;
				 if(parseInt(x.value) != 0)
			     {
					var y = x.options[x.selectedIndex].innerText;
					var flag = confirm("Confirm the subarea : " + y.toUpperCase() + " ?");
					if(flag == true)
					{
						//city select will be static
						//subAreaListContainer
						selectedSubAreaId = x.value;
						var cont = "<div id = 'selectedSubAreaId'>" + x.value + "</div>";
						cont = cont + "<div id = 'selectedSubAreaName'>Sub-Area : " + y.toUpperCase() + "</div>";
						document.getElementById("subAreaListContainer").innerHTML = cont;
						document.getElementById("selectedSubAreaId").style.display = "none";
						//subAreaListContainer
						var cid = document.getElementById("selectedCityId").innerText.trim();
						var sid = x.value;
						
						submitOrgName(cid,sid);
						//selectedCityId
					}
			     }
			  
		  });
		  
	   }	   
   };
   
   var actionStr = "/subarea/" + parseInt(cid);
   xhttp.open("GET",actionStr,true);
   xhttp.send();
}





</script>

</body>
</html>