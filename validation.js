// JavaScript Document

function isValid(element)
{		
	var ajaxRequest; 
	try
	{ ajaxRequest = new XMLHttpRequest(); }
	catch (e)
 	{
   		try
   		{ ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP"); }
   		catch (e) 
   		{
      		try
	  		{ ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP"); }
	  		catch (e)
			{
                 alert("Some Error Occurred!");
        		 return false;
      		}
   		}
	}	  		


	ajaxRequest.onreadystatechange = function() 
	{
		
  		if(ajaxRequest.readyState == 4)
		{
			var id = element.name+"1";
			
      		var ajaxDisplay = document.getElementById(id);
      		ajaxDisplay.innerHTML = ajaxRequest.responseText;
    	}
   		else
   			ajaxDisplay.innerHTML ="Error :"+ajaxRequest.statusText;  
 	}
	var value = element.value;
	var name = element.name;
	if(element.type == "checkbox")
	{
		if(element.checked)
		{
			value = "on";
		}
		else
			value = "off";
	}
 
	var url = "validation.php?value="+value+"&type="+name;
	ajaxRequest.open("GET", url , true);
 	ajaxRequest.send(null); 
}