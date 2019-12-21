<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.dl.*,rto.dto.*,rto.bl.*,java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 <script src="../validation/validate.js"></script>
<style type="text/css">
  body {
        color: #566787;
background-image: url("./images/images8.jpg");
background-repeat: no-repeat;
background-size: cover;
font-family: 'Varela Round', sans-serif;
font-size: 13px; 
}
.table-wrapper {
        background: #fff;
        padding: 20px 25px;
        margin: 30px 0;
border-radius: 3px;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
.table-title {        
padding-bottom: 15px;
background: #435d7d;
color: #fff;
padding: 16px 30px;
margin: -20px -25px 10px;
border-radius: 3px 3px 0 0;
    }
    .table-title h2 {
margin: 5px 0 0;
font-size: 24px;
text-align: center;
}
.table-title .btn-group {
float: right;
padding: 2 10px;

}
.table-title .btn {
color: #fff;
float: right;
font-size: 13px;
border: none;
min-width: 50px;
border-radius: 2px;
border: none;
outline: none !important;
margin-left: 10px;
}
.table-title .btn i {
float: left;
font-size: 21px;
margin-right: 5px;
}
.table-title .btn span {
float: left;
margin-top: 2px;
}
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
padding: 12px 15px;
vertical-align: middle;
    }
table.table tr th:first-child {
width: 60px;
}
table.table tr th:last-child {
width: 100px;
}
    table.table-striped tbody tr:nth-of-type(odd) {
    background-color: #fcfcfc;
}
table.table-striped.table-hover tbody tr:hover {
background: #f5f5f5;
}
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }
    table.table td:last-child i {
opacity: 0.9;
font-size: 22px;
        margin: 0 5px;
    }
table.table td a {
font-weight: bold;
color: #566787;
display: inline-block;
text-decoration: none;
outline: none !important;
}
table.table td a:hover {
color: #2196F3;
}
table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #F44336;
    }
    table.table td i {
        font-size: 19px;
        width=50%;
    }
table.table .avatar {
border-radius: 50%;
vertical-align: middle;
margin-right: 10px;
}
    .pagination {
        float: right;
        margin: 0 0 5px;
    }
    .pagination li a {
        border: none;
        font-size: 13px;
        min-width: 30px;
        min-height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 2px !important;
        text-align: center;
        padding: 0 6px;
    }
    .pagination li a:hover {
        color: #666;
    }
    .pagination li.active a, .pagination li.active a.page-link {
        background: #03A9F4;
    }
    .pagination li.active a:hover {        
        background: #0397d6;
    }
.pagination li.disabled i {
        color: #ccc;
    }
    .pagination li i {
        font-size: 16px;
        padding-top: 6px
    }
    .hint-text {
        float: left;
        margin-top: 10px;
        font-size: 13px;
    }    

/* Modal styles */
.modal .modal-dialog {
max-width: 400px;
}
.modal .modal-header, .modal .modal-body, .modal .modal-footer {
padding: 20px 30px;
}
.modal .modal-content {
border-radius: 3px;
}
.modal .modal-footer {
background: #ecf0f1;
border-radius: 0 0 3px 3px;
}
    .modal .modal-title {
        display: inline-block;
    }
.modal .form-control {
border-radius: 2px;
box-shadow: none;
border-color: #dddddd;
}
.modal textarea.form-control {
resize: vertical;
}
.modal .btn {
border-radius: 2px;
min-width: 100px;
}
.modal form label {
font-weight: normal;
}
</style>
 <title>RTO MANAGEMENT SYSTEM</title>
</head>
<body>
	<% if(session.getAttribute("Dealer_user_id")==null)
						{
						response.sendRedirect("../index.jsp");
						}
	%>
	<%@include file="../includes/dealerHomeNav.jsp" %>
	<div class="container">
	        <div class="table-wrapper">
	            <div class="table-title">
	                <div class="row">
	                    <div class="col-sm-6">
	<h2>DEALER <b>DETAILS</b></h2>
	</div>
	<div class="col-sm-6">
	
	<a href="DealerHome1.jsp" class="btn btn-danger"><i class="material-icons">&#xE15C;</i> <span>Home</span></a>
	</div>
	                </div>
	            </div>
	<%
	
	String company_id=request.getParameter("company_id");
	PreparedStatement ps=null;
	String query;
	Connection con=null;
	ResultSet result;
	
	
	try
	{
	  
	  
	    con=DBHelper.getConnection();
		query="SELECT * FROM  tb_dealer  WHERE company_id=?";
		ps=con.prepareStatement(query);
		
		ps.setString(1,company_id);
		result=ps.executeQuery();
	  
	  
		  while(result.next())
		  {
		  %>
		  <form action="dealer_update.jsp?company_id=<%=company_id %>" method="post" onsubmit="return validate()"name="f1">
		   <table>
		   <tr>
		<td style="width:350px">Company ID: </td>
		<td><input type="text" name="company_id" value=<%=result.getString(2) %> class required="validate" style="width:350px"></td>
		</tr>
		<tr><td></td></tr>
		<tr>
		<td>Enter Company Name</td>
		<td><input type="text" name="company_name" value='<%=result.getString(3) %>' class pattern="[A-Za-z0-9]" title="enter company name with alphabets and numbers only" style="width:350px"></td>
		</tr>
		<tr>
		<td>Enter Company Email</td>
		<td><input type="text" name="company_email" value=<%=result.getString(4) %> style="width:350px" pattern="[A-Za-z0-9._%+-]{3,}@[a-zA-Z]{3,}([.]{1}[a-zA-Z]{2,}|[.]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,})" title="Eg: xyz@gmail.com" class="validate"></td>
		</tr>
		
		<tr>
		<td>Enter Company Address</td>
		<td><input type="text" name="company_address" value=<%=result.getString(5) %> class required="validate" style="width:350px" style="width:350px"></td>
		</tr>
		
		<tr>
		<td>Enter Company Phone Number</td>
		<td><input type="text" name="company_phone" value=<%=result.getString(6) %> style="width:350px" pattern="[7-9]{1}[0-9]{9}" title="Phone number with 7-9 and remaing 9 digit with 0-9" class="validate"></td>
		</tr>
		
		<tr>
		<td><button type="submit" class="btn btn-info" value="Submit"  onclick="return confirm('Sure to Update?')">Submit</button></td>
		</tr>
		
		</table>
		</form>
		 <%
		 }
		  
	} 
	catch (Exception e) 
	{
	 e.printStackTrace();
	 
	}
	finally
	{
		con.close();
	}
	%>

</body>
</html>