
function validate(form3)
{
	

//customer name
	var txtCname = document.getElementById("txtCname").value;
	var Alphapattern=new RegExp("^[a-zA-Z]");
	
	
	if(!Alphapattern.test(txtCname))
		{
        document.getElementById("id2").innerHTML="*Enter a valid customer name with only alphabets";
        document.getElementById("id2").style.color="Red";
        if(txtCname==="")
        {
            document.getElementById("id2").innerHTML="*Don't leave name field empty";
            document.getElementById("id2").style.color="Red";
            return false;
        }
        return false;

		}
	
     else
     	{
         document.getElementById("id2").innerHTML="";
     	}
	
	//email
	var txtCemail = document.getElementById("txtCemail").value;
	var Emailpattern=new RegExp("[A-Za-z0-9._%+-]{3,}@[a-zA-Z]{3,}([.]{1}[a-zA-Z]{2,}|[.]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,})");
	
	if(!Emailpattern.test(txtCemail))
	{
    document.getElementById("id3").innerHTML="*Enter a valid email id in the form xyz@gmail.com";
    document.getElementById("id3").style.color="Red";
    if(txtCemail==="")
    {
        document.getElementById("id3").innerHTML="*Enter Email ID";
        document.getElementById("id3").style.color="Red";
        return false;
    }
    return false;

	}

 else
 	{
     document.getElementById("id3").innerHTML="";
 	}
	
	
	
	//PHONE
	var txtCphone = document.getElementById("txtCphone").value;
	var Mobilepattern=new RegExp("[7-9]{1}[0-9]{9}");
	
	if(!Mobilepattern.test(txtCphone))
	{
    document.getElementById("id4").innerHTML="* Phone number should start with 7-9 and remaing 9 digit with 0-9";
    document.getElementById("id4").style.color="Red";
    if(txtCphone==="")
    {
        document.getElementById("id4").innerHTML="Enter Phone Number";
        document.getElementById("id4").style.color="Red";
        return false;
    }
    return false;

	}

 else
 	{
     document.getElementById("id4").innerHTML="";
 	}
	//address
	var  txtCaddress = document.getElementById("txtCaddress").value;
		
		
		if( txtCaddress==="")
	    {
	        document.getElementById("id5").innerHTML="*Don't leave Address field empty";
	        document.getElementById("id5").style.color="Red";
	        return false;

	    }
	    else
	    {
	        document.getElementById("id5").innerHTML="";
	    }

		//AADHAR NUMBER
		
		var txtAdhar = document.getElementById("txtAdhar").value;
		var Aadharpattern=new RegExp("[0-9]{12}");
		
		if(!Aadharpattern.test(txtAdhar))
		{
	    document.getElementById("id6").innerHTML="* Enter a valid 12 digit aadhar number";
	    document.getElementById("id6").style.color="Red";
	    if(txtAdhar==="")
	    {
	        document.getElementById("id6").innerHTML="*Please fill the aadhar number";
	        document.getElementById("id6").style.color="Red";
	        return false;
	    }
	    return false;

		}

	 else
	 	{
	     document.getElementById("id6").innerHTML="";
	 	}
	//chassis number
		var txtChassis = document.getElementById("txtChassis").value;
		var Chassispattern=new RegExp("^[a-zA-Z0-9]");
		
		
		if(!Chassispattern.test(txtChassis))
			{
	        document.getElementById("id7").innerHTML="*Enter a valid chassis number with only alphabets and numbers";
	        document.getElementById("id7").style.color="Red";
	        if(txtChassis==="")
	        {
	            document.getElementById("id7").innerHTML="*Don't leave chassis number field empty";
	            document.getElementById("id7").style.color="Red";
	            return false;
	        }
	        return false;

			}
		
	     else
	     	{
	         document.getElementById("id7").innerHTML="";
	     	}
		//engine number
		var txtEngine = document.getElementById("txtEngine").value;
		var Enginepattern=new RegExp("^[a-zA-Z0-9]");
		
		
		if(!Enginepattern.test(txtEngine))
			{
	        document.getElementById("id8").innerHTML="*Engine number can include only alphabets and numbers";
	        document.getElementById("id8").style.color="Red";
	        if(txtEngine==="")
	        {
	            document.getElementById("id8").innerHTML="*Don't leave engine number field empty";
	            document.getElementById("id8").style.color="Red";
	            return false;
	        }
	        return false;

			}
		
	     else
	     	{
	         document.getElementById("id8").innerHTML="";
	     	}
		//seat capacity
		var txtSeat = document.getElementById("txtSeat").value;
		var Seatpattern=new RegExp("[0-9]");
		
		if(!Seatpattern.test(txtSeat))
		{
	    document.getElementById("id9").innerHTML="* Seat number should not be more than 100";
	    document.getElementById("id9").style.color="red";
	    if(txtSeat==="")
	    {
	        document.getElementById("id9").innerHTML="Enter total seat Number";
	        document.getElementById("id9").style.color="red";
	        return false;
	    }
	    return false;

		}

	 else
	 	{
	     document.getElementById("id9").innerHTML="";
	 	}
		
		//colour
		var txtColor = document.getElementById("txtColor").value;
		var Colorpattern=new RegExp("^[a-zA-Z]");
		
		
		if(!Colorpattern.test(txtColor))
			{
	        document.getElementById("id10").innerHTML="*Enter a valid colour";
	        document.getElementById("id10").style.color="Red";
	        if(txtColor==="")
	        {
	            document.getElementById("id10").innerHTML="*Don't leave colour field empty";
	            document.getElementById("id10").style.color="Red";
	            return false;
	        }
	        return false;

			}
		
	     else
	     	{
	         document.getElementById("id10").innerHTML="";
	     	}
	
		//txtAmount
		var txtAmount = document.getElementById("txtAmount").value;
		var Amountpattern=new RegExp("^[0-9]");
		
		
		if(!Amountpattern.test(txtAmount))
			{
	        document.getElementById("id11").innerHTML="*Enter a valid Amount";
	        document.getElementById("id11").style.color="Red";
	        if(txtAmount==="")
	        {
	            document.getElementById("id11").innerHTML="*Don't leave amount field empty";
	            document.getElementById("id11").style.color="Red";
	            return false;
	        }
	        return false;

			}
		
	     else
	     	{
	         document.getElementById("id11").innerHTML="";
	     	}
		//company name
		var txtCompany = document.getElementById("txtCompany").value;
		var Alphapattern=new RegExp("^[a-zA-Z]");
		
		
		if(!Alphapattern.test(txtCompany))
			{
	        document.getElementById("id12").innerHTML="*Enter a valid company name with only alphabets";
	        document.getElementById("id12").style.color="Red";
	        if(txtCompany==="")
	        {
	            document.getElementById("id12").innerHTML="*Don't leave name field empty";
	            document.getElementById("id12").style.color="Red";
	            return false;
	        }
	        return false;

			}
		
	     else
	     	{
	         document.getElementById("id12").innerHTML="";
	     	}
}