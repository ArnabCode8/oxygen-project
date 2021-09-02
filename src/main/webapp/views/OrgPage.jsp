<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Organization Page</title>

<style>

body
{
   background-color: #CA8E0D;
}

#orgInfoContainer
{
   position: absolute;
   top: 20px;
   left: 450px;
   height: 400px;
   width: 400px;
   background-color: #D7F877;
}

#editAddressText
{ 
   margin: 5px;
   height: 75px;
   width: 360px;
   font-family: "Times New Roman";
   font-size: 18px;

}

#editAddressContainer
{
   margin-top: 5px;
   background-color: #F9F7BC;
   height: 40px; 
}

#editAddressBtn,#saveAddress,#cancelAddress
{
   height: 30px;
   width: 150px;
   margin-top: 5px;
   margin-left: 5px;
   border-radius: 5px;
   font-family: "Times New Roman";
   font-size: 15px;
   background-color: #11F7BC;
   transition: 0.2s;
}

#editAddressBtn:hover,#saveAddress:hover,#cancelAddress:hover
{
   font-size: 18px;
   background-color: #0F8A6A;
   color: white;
}

#orgInfo
{
   background-color: white;
}

#orgName,#orgAddress
{
   margin-top: 5px;
   magin-left: 5px;
   padding-left: 10px;
   height: 40px;
   width: 390px;
   background-color: #5F7C0B;
   color: white;
   font-family: "Times New Roman";
   font-size: 30px;
   overflow: auto;
   transition: 0.2s;
}

#orgName:hover
{
   color: #B0F5E3;
   font-size: 32px;
}

#orgAddress
{
   font-size: 18px;
   background-color: #D7DBDD;
   color: black;
   height: 100px;
}

#orgAddress:hover
{
   font-size: 20px;
   font-weight: bold;
}

#orgAvailable
{
   padding-top: 5px;
   padding-left: 5px;
   background-color: #F9CDCD;
   margin-top: 5px;
   margin-left: 5px;
   font-family: "Times New Roman";
   font-size: 20px;
   height: 40px;
   width: 390px;
   transition: 0.2s;
}

#addStock,#orgServed
{
   position: relative;
   margin-left: 240px;
   top: -35px;
   height: 30px;
   width: 110px;
   text-align: center;
   border-radius: 5px;
   background-color: #B6F397;
   font-family: "Times New Roman";
   font-size: 18px;
   font-weight: bold;
   transition: 0.2s;
}

#orgServed
{
   position: relative;
   top: -60px;
   left: 0px;
}

#addStock:hover,#orgServed:hover
{
   font-size: 20px;
   color: #060DF6;
   width: 130px;
   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

#orgAvailable:hover
{
   font-size: 25px;
   font-weight: bold;
   background-color: #F39797;
   color: #B90808; 
}

#orgServedCount,#orgServedDate
{
   padding-top: 5px;
   padding-left: 5px;
   height: 40px;
   width: 390px;
   background-color: #BAFAD6;
   margin-left: 5px;
   position: relative;
   top: -25px;
   font-size: 18px;
   font-family: "Times New Roman";
   transition: 0.2s;
}

#orgServedCount:hover,#orgServedDate:hover
{
   font-size: 22px;
   font-weight: bold;
   color: blue;
}

#orgServedDate
{
   position: relative;
   top: -50px;
   background-color: #D3DDD7;
}

#orgContactContainer
{
   position: absolute;
   left: 450px;
   top: 430px;
   height: 400px;
   width:400px;
   background-color: white;
}

.unitContact
{
   margin: 5px;
   height: 50px;
   width: 390px;
   border-radius: 10px;
   background-color: #F5D4AC;
   padding-left: 5px;
   /*box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);*/
}

.orgContact
{
   position: relative;
   top: -10px; 
   background-color: white;
   width: 150px;
   padding-top: 5px;
   padding-bottom: 5px;
   border-radius: 5px;
   padding-left: 15px;
   font-size: 20px;
   font-weight: bold;
   font-family: "Times New Roman";
   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
   transition: 0.2s;
   cursor: pointer;
}

.orgContact:hover
{
   font-size: 22px;
   color: blue;
}

.editContact
{
    position: relative;
    top: -40px;
    left: 180px;
    height: 32px;
    width: 80px;
    font-family: "Times New Roman";
    border-radius: 5px;
    font-size: 15px;
    background-color: #F7B3B3;
    transition: 0.2s;
}

.deleteContact
{
    position: relative;
    top: -40px;
    left: 200px;
    height: 32px;
    width: 80px;
    font-size: 15px;
    font-family: "Times New Roman";
    border-radius: 5px;
    background-color: #D6F7B3;
    transition: 0.2s;
}

.editContact:hover,.deleteContact:hover
{
    cursor:pointer;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    font-size: 18px;
    font-weight: bold;
    width: 90px;
    background-color: #BF35E7;
    color: white;
}

#addContact
{
    margin-left: 5px;
    margin-top: 5px;
    height: 30px;
    width: 100px;
    padding: 2px;
    font-family: "Times New Roman";
    font-size: 15px;
    font-weight: bold;
    background-color: #96AFD7;
    color: white;
    transition: 0.2s;
    border-radius: 5px;
}

#addContact:hover
{
    width: 150px;
    background-color: #DCE7F7;
    color: black;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    cursor: pointer;
}

/*review section*/

#orgReviewContainer
{
   position: absolute; 
   top: 65px;
   left: 870px;
   height: 764px;
   width: 420px;
   margin-top: 3px;
   background-color: #D7DBDD; 
}

#reviewCountContainer
{
   position: absolute;
   top: 20px;
   left: 870px;
   height: 40px;
   width: 418px;
   background-color: #FAF614;
   padding-top: 5px;
   padding-left: 5px;
   font-family: "Times New Roman";
   font-size: 18px;
   font-weight: bold;
   text-align: center;
   border-radius: 5px;
   transition: 0.2s;
}

#orgReviewList
{
   height: 728px;
   overflow: scroll;
}

#reviewCountContainer:hover
{
   background-color: #FA9814;
   font-size: 22px;
   color: blue;
}

#allReviewBtn,#positiveReviewBtn,#negativeReviewBtn
{
    height: 30px;
    width: 120px;
    background-color: #85C1E9;
    font-family: "Times New Roman";
    font-size: 18px;
    margin-left: 10px;
    margin-top: 5px;
    border-radius: 5px;
    cursor: pointer;
    transition: 0.2s;
}

#allReviewBtn:hover,#positiveReviewBtn:hover,#negativeReviewBtn:hover
{
    font-size: 20px;
    font-weight: bold;
    background-color: #29FAD4;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.unitReview
{
   width: 380px;
   padding-bottom: 10px;
   border-radius: 5px;
   margin-left: 5px; 
   margin-top: 10px;
   padding-left: 5px;
   background-color: #DAEE82;
   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.unitReviewPhNo
{
   background-color: #EECD82;
   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
   width: 365px;
   margin-top: 5px;
   padding-left: 10px;
   padding-top: 5px;
   padding-bottom: 5px;
}

.Good,.NotGood
{
   font-weight: bold;
   font-size: 18px;
   color: green;
}

.NotGood
{
   color: red;
}

.unitReviewRemark,.unitReviewContent
{
   margin-top: 10px;
}

.Rev
{
   font-weight: bold;
}


</style>


</head>
<body onload='initiate()'>

<div id = 'orgInfoContainer'>org info will be printed here</div>
<div id = 'orgContactContainer'>org contacts will be printed here</div>
<div id = 'reviewCountContainer'>good or bad review count should be printed here</div>
<div id = 'orgReviewContainer'>org reviews will be printed here</div>

<script>

var orgid = "${orgid}";

function initiate()
{
	console.log("orgid received : " + orgid);
   
   loadOrgInfo(orgid);
   loadOrgContact(orgid); //done
   loadOrgReview(orgid);
}


var orgInfo = "";
function loadOrgInfo(oid)
{
   var xhttp = new XMLHttpRequest();
   xhttp.onreadystatechange = function(){
	 
	   if(this.readyState == 4 && this.status == 200)
	   {
		  var res = this.responseText;
		  var jsonObj = JSON.parse(res);
		  orgInfo = jsonObj;
		  loadOrgInfoPanel(jsonObj);
	   }	   
   };
   
   var actionStr = "/unitorg/" + parseInt(oid);
   xhttp.open("GET",actionStr,true);
   xhttp.send();
}

function changeDateFormat(d)
{
   var x = d.split("-");
   var y = x[2] + ":" + x[1] + ":" + x[0];
   return y;
}

function loadOrgInfoPanel(x)
{
   var cont = "<div id = 'orgInfo'>";
   cont = cont + "<div id = 'orgName'>Name : " + x.orgname + "</div>";
   cont = cont + "<div id = 'orgAddress'>Address : " + x.address + "</div>";
   cont = cont + "<div id = 'editAddressContainer'><button id = 'editAddressBtn'>Edit Address</button></div>";
   cont = cont + "<div id = 'orgAvailable'>Available : " + x.available + "</div>";
   cont = cont + "<button id = 'addStock'>Add Stock</button>";
   cont = cont + "<div id = 'orgServedCount'>Served Count : " + x.servedcount + "</div>";
   cont = cont + "<button id = 'orgServed'>Serve</button>";
   cont = cont + "<div id = 'orgServedDate'>Most Recently Served : " + x.date + "</div>";
   cont = cont + "</div>";
   
   document.getElementById("orgInfoContainer").innerHTML = cont;
   //actions : add stock , serve , 
   
   document.getElementById("editAddressBtn").addEventListener("click",function(event){
	  
	   var cont = "<textarea id = 'editAddressText' placeholder = 'cant leave this empty'/>";
	   document.getElementById("orgAddress").innerHTML = cont;
	   document.getElementById("editAddressText").value = orgInfo.address;
	   
	   var cont1 = "<button id = 'saveAddress'>Save</button>";
	   cont1 = cont1 + "<button id = 'cancelAddress'>Cancel</button>";
	   document.getElementById("editAddressContainer").innerHTML = cont1;
	   
	   document.getElementById("saveAddress").addEventListener("click",function(){
		   
		   var text = document.getElementById("editAddressText").value;
		   
		   if(text.trim() == orgInfo.address)
		   {
			   window.alert("No change is made");
		   }	   
		   else if(text == null || text == "" || text.trim() == "")
		   {
			   window.alert("Enter a valid address");
		   }	   
		   else
		   {
			   
			   var xhttp = new XMLHttpRequest();
			   xhttp.onreadystatechange = function(){
				 
				   if(this.readyState == 4 && this.status == 200)
				   {
					  var res = this.responseText;
					  var jsonObj = JSON.parse(res);
					  if(jsonObj == "yes")
				      {
						  window.alert("Address updated successfully");
						  loadOrgInfo(orgid); 
				      }
					  else
					  {
						  window.alert("Address updation failed");
					  }	  
				   }	   
			   };
			   
			   //var actionStr = "editAddress?orgId=" + orgId + "&address=" + text;
			   var actionStr = "/orgaddress/" + parseInt(orgid) + "/" + text;
			   xhttp.open("PUT",actionStr,true);
			   xhttp.send();
		   }	   
		   
	   });
	   
	   document.getElementById("cancelAddress").addEventListener("click",function(){
		  
		   loadOrgInfoPanel(orgInfo);
	   });
	   
   });
   
   document.getElementById("addStock").addEventListener("click",function(event){
	  
	   var stock = prompt("Enter the new Stock","10");
	   if(stock != null)
	   {
		   var status = "add";
		   modifyStock(stock,status);
	   }	   
   });
   
   document.getElementById("orgServed").addEventListener("click",function(event){
		  
	   var stock = prompt("Enter the count of served cylinders","1");
	   if(stock != null)
	   {
		   var status = "sub";
		   modifyStock(stock,status);
	   }	   
	   
   });
   
}


function modifyStock(stock,status)
{
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function(){
    	
    	if(this.readyState == 4 && this.status == 200)
    	{
    	   var res = this.responseText;
    	   var jsonObj = JSON.parse(res);
    	   if(jsonObj == "yes")
    	   {
    		   window.alert("Successfully modified");
    		   loadOrgInfo(orgid); 
    	   }
    	   else
    	   {
    		  window.alert("Operation failed"); 
    	   }
    	//if ends   
    	}	
    };
    
    var actionStr = "/changestock/" + parseInt(orgid) + "/" + parseInt(stock) + "/" + status;
    xhttp.open("PUT",actionStr,true);
    xhttp.send();
}

//review part

function loadOrgReview(oid)
{
   //loadOrgReview
   var xhttp = new XMLHttpRequest();
   xhttp.onreadystatechange = function(){
	 
	   if(this.readyState == 4 && this.status == 200)
	   {
		   var res = this.responseText;
		   var jsonObj = JSON.parse(res);
		   loadReviewPanel(jsonObj);
	   } 	   
   };
   
   var actionStr = "/review/" + parseInt(orgid);
   xhttp.open("GET",actionStr,true);
   xhttp.send();
	
}

//hidePhNo
//changeDateFormat

function loadReviewPanel(x)
{
   var len = x.length;
   var i;
   if(len == 0)
   {
	   var cont = "<div id = 'noOrgReview'>No Reviews</div>";
	   document.getElementById("orgReviewContainer").innerHTML = cont;
   }
   else
   {
	   var cont = "<button id = 'allReviewBtn'>All</button>";
	   cont = cont + "<button id = 'positiveReviewBtn'>Positive</button>";
	   cont = cont + "<button id = 'negativeReviewBtn'>Negative</button>";
	   cont = cont + "<div id = 'orgReviewList'>";
	   
	   for(i=0;i<len;i++)
	   {
		   cont = cont + "<div class = 'unitReview'>";
		   cont = cont + "<div class = 'unitReviewPhNo'>reviewed by : <span class = 'Rev'>" + x[i].phno + "</span> on <span class = 'Rev'>" + x[i].date + "</span></div>";
		   
		   var rem = "None";
		   if(parseInt(x[i].remark) == 0)
		   {
			   rem = "<span class = 'NotGood'>Not Helpful</span>";
		   }
		   else
		   {
			   rem = "<span class = 'Good'>Helpful</span>";
		   }
		   
		   cont = cont + "<div class = 'unitReviewRemark'>remark : " + rem + "</div>";
		   cont = cont + "<div class = 'unitReviewContent'>review : <span class = 'Rev'>" + x[i].review + "</span></div>";
		   cont = cont + "</div>"; //unit review closes
	   }
	   cont = cont + "</div>";
	   document.getElementById("orgReviewContainer").innerHTML = cont;
	   document.getElementById("reviewCountContainer").innerHTML = "Remarked by : " + len;
	   
	   document.getElementById("allReviewBtn").style.visibility = "hidden";
	   document.getElementById("positiveReviewBtn").style.visibility = "visible";
	   document.getElementById("negativeReviewBtn").style.visibility = "visible";
	   
	   //sort buttons actions
	   //unitReviewRemark
	   
	   document.getElementById("allReviewBtn").addEventListener("click",function(event){
		   
		   document.getElementById("allReviewBtn").style.visibility = "hidden";
		   document.getElementById("positiveReviewBtn").style.visibility = "visible";
		   document.getElementById("negativeReviewBtn").style.visibility = "visible";
		   
		   
		   var x = document.getElementsByClassName("unitReview");
		   var len = x.length;
		   var i;
		   var count = 0;
		   for(i=0;i<len;i++)
		   {
			   x[i].style.display = "block";
			   count++;
		       //for loop ends	   
		   }
		   
		   document.getElementById("reviewCountContainer").innerHTML = "Remarked by : " + count;
		   
		   
	   });
	   
       document.getElementById("positiveReviewBtn").addEventListener("click",function(event){
    	   
    	   document.getElementById("allReviewBtn").style.visibility = "visible";
		   document.getElementById("positiveReviewBtn").style.visibility = "hidden";
		   document.getElementById("negativeReviewBtn").style.visibility = "visible";
		   
    	   var x = document.getElementsByClassName("unitReview");
		   var len = x.length;
		   var i;
		   var r = "";
		   var count = 0;
		   for(i=0;i<len;i++)
		   {
			   r = x[i].getElementsByClassName("unitReviewRemark")[0].innerText.split(":")[1].trim();
			   if(r == "Helpful")
			   {
				   count++;
				   x[i].style.display = "block";
			   }
			   else
			   {
				   x[i].style.display = "none";
			   }
			   
		       //for loop ends	   
		   }
    	
		 //reviewCountContainer
	       document.getElementById("reviewCountContainer").innerHTML = "Remarked helpful by : " + count;
		 
	   });
	   
       
       document.getElementById("negativeReviewBtn").addEventListener("click",function(event){
	
    	   document.getElementById("allReviewBtn").style.visibility = "visible";
		   document.getElementById("positiveReviewBtn").style.visibility = "visible";
		   document.getElementById("negativeReviewBtn").style.visibility = "hidden";
    	   
    	   var x = document.getElementsByClassName("unitReview");
		   var len = x.length;
		   var i;
		   var r = "";
		   var count = 0;
		   for(i=0;i<len;i++)
		   {
			   r = x[i].getElementsByClassName("unitReviewRemark")[0].innerText.split(":")[1].trim();
			   if(r == "Not Helpful")
			   {
				   count++;
				   x[i].style.display = "block";
			   }
			   else
			   {
				   x[i].style.display = "none";
			   }
			   
		   //for loop ends	   
		   }
		   
		   document.getElementById("reviewCountContainer").innerHTML = "Remarked Not helpful by : " + count;
    
	   });
	   
   }	   
	
}

//contact part

var allContacts = "";
function loadOrgContact(oid)
{
   //loadContact
   var xhttp = new XMLHttpRequest();
   xhttp.onreadystatechange = function(){
	 
	   if(this.readyState == 4 && this.status == 200)
	   {
		   var res = this.responseText;
		   var jsonObj = JSON.parse(res);
		   allContacts = jsonObj;
		   loadContactPanel(jsonObj);
	   }	   
   };
   
   var actionStr = "/contact/" + parseInt(orgid);
   xhttp.open("GET",actionStr,true);
   xhttp.send();
}

function contBarCount()
{
   var x = document.getElementsByClassName("unitContact");
   var len = x.length;
   var count = 0;
   var i;
   
   for(i=0;i<len;i++)
   {
	   if(x[i].style.display != "none")
	   {
		  count++;   
	   }   
   }	   
   
return count;   
}

function loadContactPanel(x)
{
   var len = x.length;
   var i;
   var cont = "<div id = 'contactList'>";
   cont = cont + "<button id = 'addContact'>Add Contact</button>";
   for(i=0;i<len;i++)
   {
	  cont = cont + "<div class = 'unitContact'>";
	  cont = cont + "<div class = 'unitContactId'>" + x[i].contactid + "</div>";
	  cont = cont + "<div class = 'orgContact'>" + x[i].contact + "</div>";
	  cont = cont + "<button class = 'editContact'>Edit</button>";
	  cont = cont + "<button class = 'deleteContact'>Delete</button>";
	  cont = cont + "</div>"; //unitContact closes
   }
   cont = cont + "</div>"; //contactList closes
   document.getElementById("orgContactContainer").innerHTML = cont;
   
   document.getElementById("addContact").addEventListener("click",function(event){
	  
	   var c = contBarCount();
	   //window.alert("count : " + c);
	   if(c >= 6)
	   {
		  window.alert("contacts more than 6 is not allowed");
	   }
	   else
	   {
		  var phNo = prompt("Enter new number","8274909020");
		  if(phNo == null || phNo.length > 10)
		  {
			  window.alert("invalid input");
		  }
		  else
		  {
			var x = document.getElementsByClassName("orgContact");
			var len = x.length;
			var i;
			for(i=0;i<len;i++)
		    {
			   if(x[i].parentElement.style.display != "none" && x[i].innerText == phNo.trim())
			   {
				   window.alert("this number is already registered");
				   return;
			   }	   
				   
		    }
		
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function(){
				
		        if(this.readyState == 4 && this.status == 200)
		        {
		           var res = this.responseText;
		           var jsonObj = JSON.parse(res);
		           if(jsonObj == "yes")
		           {
		        	   window.alert("new contact added successfully");
		        	   loadOrgContact(orgid);
		           }
		           else
		           {
		        	   window.alert(jsonObj);
		        	   //if match found, that will be printed here
		           }	   
		        } 	
			};
			
			var status = "add";
			var cid = "0";
			phNo = phNo.trim();
			//var actionStr = "updateContact?orgId=" + orgId + "&status=" + status + "&contactId=" + cid + "&contact=" + phNo; 
            var actionStr = "/contact/" + parseInt(orgid) + "/" + phNo;			
			xhttp.open("POST",actionStr,true);
			xhttp.send();
			
		  }	  
		  
	   }	   
	   
   });
   
   var edts = document.getElementsByClassName("editContact");
   var dlts = document.getElementsByClassName("deleteContact");
   
   for(i=0;i<len;i++)
   {
	   edts[i].addEventListener("click",function(event){
		  
		   var x = event.target.parentElement;
		   var y = x.getElementsByClassName("orgContact")[0].innerText;
		   var newContact = prompt("Enter the new contact below",y);
		   
		   if(y == newContact)
		   {
			   window.alert("No change is made");
			   return;
		   }
		   
		   if(newContact == null || newContact.trim() == "" || newContact.trim().length > 10)
		   {
			   window.alert("Invalid Input");
			   return;
		   }	   
		   
		   var z = document.getElementsByClassName("orgContact");
		   var len = z.length;
		   var i;
		   for(i=0;i<len;i++)
		   {
			   if(z[i].parentElement.style.display != "none" && z[i].innerText == newContact.trim() && z[i].innerText != y.trim())
			   {
				   window.alert("this number is already registered");
				   return;
			   }	   
				   
		    }
		   
			   //phNoVerifier
			   var xhttp = new XMLHttpRequest();
		          xhttp.onreadystatechange = function(){
		        	
		        	  if(this.readyState == 4 && this.status == 200)
		        	  {
		        		  var res = this.responseText;
		        		  var jsonObj = JSON.parse(res);
		        		  if(jsonObj == "yes")
		        		  {
		        			  window.alert("contact updated successfully");
		        			  loadOrgContact(orgid);
		        		  }
		        		  else
		        	      {
		        			  window.alert(jsonObj);
		        			  //if match found, that will be printed here
		        	      }		  
		        	  }	  
		          };
		          
		          var cid = x.getElementsByClassName("unitContactId")[0].innerText;
		          var status = "update";
		          //var actionStr = "updateContact?status=" + status + "&orgId=" + orgId + "&contactId=" + cid + "&contact=" + newContact;
		          var actionStr = "/contact/" + parseInt(cid) + "/" + parseInt(orgid) + "/" + newContact;
		          xhttp.open("PUT",actionStr,true);
		          xhttp.send();	   
		   
	   });
	   
       dlts[i].addEventListener("click",function(event){
		  
    	  var c = contBarCount();
    	  if(c == 1)
          {
    		  window.alert("last contact can't be deleted");
    		  return;
          }		  
    	   
    	  var y = event.target.parentElement; 
          var cid = y.getElementsByClassName("unitContactId")[0].innerText;
          
          var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function(){
        	
        	  if(this.readyState == 4 && this.status == 200)
        	  {
        		  var res = this.responseText;
        		  var jsonObj = JSON.parse(res);
        		  if(jsonObj == "yes")
        		  {
        			  window.alert("contact deleted successfully");
        			  y.style.display = "none";
        			  //loadOrgContact(orgId);
        		  }
        		  else
        	      {
        			  window.alert("Operation failed");
        	      }		  
        	  }	  
          };
          
          var status = "delete";
          var dummyContact = "none";
          //var actionStr = "updateContact?status=" + status + "&orgId=" + orgId + "&contactId=" + cid + "&contact=" + dummyContact;
          var actionStr = "/contact/" + parseInt(cid);
          xhttp.open("DELETE",actionStr,true);
          xhttp.send();
		   
	   });
	   
	   
   //loop ends	   
   }
   
   //function ends
}



</script>

</body>
</html>