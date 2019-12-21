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
<%@include file="../includes/dealerHomeNav.jsp" %>
<% if(session.getAttribute("Dealer_user_id")==null)
					{
					response.sendRedirect("../index.jsp");
					}
%>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
<h2>DEALER <b>DETAILS</b></h2>
<%if(session.getAttribute("message")!=null)
                  {
                  out.println((String)session.getAttribute("message"));
                  session.removeAttribute("message");
                  }%>
</div>
<div class="col-sm-6">

<a href="DealerHome1.jsp" class="btn btn-info"><i class="material-icons">&#xE15C;</i> <span>Home</span></a>
</div>
                </div>
            </div>
             <%
             String company_id=request.getParameter("Company_id");
 
 %>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>

                        <th width="22%">COMPANY ID</th>
                        <th width="20%">Company Name</th>
						<th width="20%">Company Email ID</th>
						<th width="20%">Company Address</th>
                        <th width="15%">Company Phone</th>
    
                    </tr>
                </thead>
                <%
                String query;
                PreparedStatement ps=null;
                Connection con;
                ResultSet result;
                try
                {
                	con=DBHelper.getConnection();
                	query="SELECT * FROM  tb_dealer  WHERE company_id=?";
                	ps=con.prepareStatement(query);
                	
                	ps.setString(1,company_id);
                	result=ps.executeQuery();
                	if(result.next())
                	{
                		%>
                		<table>
                		<tr>
                		<td width="22%"><%=result.getString(2) %>&nbsp;&nbsp;</td>
                		<td width="25%"><%=result.getString(3) %>&nbsp;&nbsp;</td>
                		<td width="25%"><%=result.getString(4) %>&nbsp;&nbsp;</td>
                		<td width="22%"><%=result.getString(5) %>&nbsp;</td>
                		<td width="22%"><%=result.getLong(6) %>&nbsp;&nbsp;&nbsp;</td>
                		<td width="22%" align="left" valign="middle"><a href="dealer_edit.jsp?company_id=<%=company_id%>" style="color:blue">&nbsp;Update</a></td>
                						    
                        <td width="25%" align="left" valign="middle"><a href="dealer_delete.jsp?company_id=<%= company_id%>" style="color:red">&nbsp;&nbsp;Delete</a></td>
                						          </td>
                		</tr>
                		</table>
     
       <%
         }
 
                	ps.close();con.close();
                }
                catch(Exception e)
                {
                	System.out.print("**error**:DealerDL:viewDealer"+e.getMessage());
                	
                }
         %>
    </div>

</body>
</html>                                                              
