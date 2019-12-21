

function validate(form1)
{
	//COMPANY NAME
	var company_name = document.getElementById("company_name").value;
	var Alphapattern=new RegExp("^[a-zA-Z]");
	
	
	if(!Alphapattern.test(company_name))
		{
        document.getElementById("id2").innerHTML="*Name field accepts Alphabets only";
        document.getElementById("id2").style.color="Red";
        if(company_name==="")
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
	
	//COMPANY ID
	
	var IDpattern=new RegExp("[A-Z a-z 0-9]");
	var company_id = document.getElementById("company_id").value;
	if(!IDpattern.test(company_id))
	{
    document.getElementById("id1").innerHTML="*Enter valid id";
    document.getElementById("id1").style.color="Red";
    if(company_id==="")
    {
        document.getElementById("id1").innerHTML="*Don't leave name field empty";
        document.getElementById("id1").style.color="Red";
        return false;
    }
    return false;

	}

 else
 	{
     document.getElementById("id1").innerHTML="";
 	}
	
	
//COMPANY EMAIL
	var company_email = document.getElementById("company_email").value;
	var Emailpattern=new RegExp("[A-Za-z0-9._%+-]{3,}@[a-zA-Z]{3,}([.]{1}[a-zA-Z]{2,}|[.]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,})");
	
	if(!Emailpattern.test(company_email))
	{
    document.getElementById("id3").innerHTML="*Enter a valid email id in format xyz@gmail.com";
    document.getElementById("id3").style.color="Red";
    if(company_email==="")
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
	
   


//COMPANY PHONE
	var company_phone = document.getElementById("company_phone").value;
	var Mobilepattern=new RegExp("[7-9]{1}[0-9]{9}");
	
	if(!Mobilepattern.test(company_phone))
	{
    document.getElementById("id4").innerHTML="* Phone number should start with 7-9 and remaing 9 digit with 0-9";
    document.getElementById("id4").style.color="Red";
    if(company_phone==="")
    {
        document.getElementById("id4").innerHTML="*Enter Phone Number";
        document.getElementById("id4").style.color="Red";
        return false;
    }
    return false;

	}

 else
 	{
     document.getElementById("id4").innerHTML="";
 	}

//ADDRESS
	
	var company_address = document.getElementById("company_address").value;
	
	
	if(company_address==="")
    {
        document.getElementById("id5").innerHTML="*Don't leave Address field empty";
        document.getElementById("id5").style.color="Red";
        return false;

    }
    else
    {
        document.getElementById("id5").innerHTML="";
    }
	
//USERNAME
	
	var username = document.getElementById("username").value;
	var Userpattern=new RegExp("[A-Z a-z 0-9]{3,15}");
	
	if(!Userpattern.test(username))
	{
    document.getElementById("id6").innerHTML="* Enter a valid username";
    document.getElementById("id6").style.color="Red";
    if(username==="")
    {
        document.getElementById("id6").innerHTML="*Please fill the username";
        document.getElementById("id6").style.color="Red";
        return false;
    }
    return false;

	}

 else
 	{
     document.getElementById("id6").innerHTML="";
 	}
	


}