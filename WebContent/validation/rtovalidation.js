//RTO ID
function validate(form2)
{	
	var IDpattern=new RegExp("[A-Z a-z 0-9]");
	var rto_id = document.getElementById("rto_id").value;
	if(!IDpattern.test(rto_id))
	{
    document.getElementById("id7").innerHTML="*Enter valid id";
    document.getElementById("id7").style.color="Red";
    if(rto_id==="")
    {
        document.getElementById("id7").innerHTML="*Don't leave name field empty";
        document.getElementById("id7").style.color="Red";
        return false;
    }
    return false;

	}

 else
 	{
     document.getElementById("id7").innerHTML="";
 	}
	
	//RTO NAME
	var rto_name = document.getElementById("rto_name").value;
	var Alphapattern=new RegExp("^[a-zA-Z]");
	
	
	if(!Alphapattern.test(rto_name))
		{
        document.getElementById("id8").innerHTML="*Name field accepts Alphabets only";
        document.getElementById("id8").style.color="Red";
        if(rto_name==="")
        {
            document.getElementById("id8").innerHTML="*Don't leave name field empty";
            document.getElementById("id8").style.color="Red";
            return false;
        }
        return false;

		}
	
     else
     	{
         document.getElementById("id8").innerHTML="";
     	}
	//RTO Email
	var rto_email = document.getElementById("rto_email").value;
	var Emailpattern=new RegExp("[A-Za-z0-9._%+-]{3,}@[a-zA-Z]{3,}([.]{1}[a-zA-Z]{2,}|[.]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,})");
	
	if(!Emailpattern.test(rto_email))
	{
    document.getElementById("id9").innerHTML="*Enter a valid email id in format xyz@gmail.com";
    document.getElementById("id9").style.color="Red";
    if(rto_email==="")
    {
        document.getElementById("id9").innerHTML="*Enter Email ID";
        document.getElementById("id9").style.color="Red";
        return false;
    }
    return false;

	}

 else
 	{
     document.getElementById("id9").innerHTML="";
 	}
	
	//RTO PHONE
	var rto_phone = document.getElementById("rto_phone").value;
	var Mobilepattern=new RegExp("[7-9]{1}[0-9]{9}");
	
	if(!Mobilepattern.test(rto_phone))
	{
    document.getElementById("id10").innerHTML="* Phone number should start with 7-9 and remaing 9 digit with 0-9";
    document.getElementById("id10").style.color="Red";
    if(rto_phone==="")
    {
        document.getElementById("id10").innerHTML="Enter Phone Number";
        document.getElementById("id10").style.color="Red";
        return false;
    }
    return false;

	}

 else
 	{
     document.getElementById("id10").innerHTML="";
 	}

//ADDRESS
	
	var rto_address = document.getElementById("rto_address").value;
	
	
	if(rto_address==="")
    {
        document.getElementById("id11").innerHTML="*Don't leave Address field empty";
        document.getElementById("id11").style.color="Red";
        return false;

    }
    else
    {
        document.getElementById("id11").innerHTML="";
    }
	
//RTO USERNAME
	
	var rto_username = document.getElementById("rto_username").value;
	var Userpattern=new RegExp("[A-Z a-z 0-9]{3,15}");
	
	if(!Userpattern.test(rto_username))
	{
    document.getElementById("id12").innerHTML="* Enter a valid username";
    document.getElementById("id12").style.color="Red";
    if(rto_username==="")
    {
        document.getElementById("id12").innerHTML="*Please fill the username";
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
