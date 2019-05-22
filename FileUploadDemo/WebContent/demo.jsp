<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap.min.css"> 
</head>
<body>


<div class="container">
<h1>Products:</h1>

  <div class="row">
<%@page import="java.sql.*" %>

<%

try {
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/fooddb","root","root");

	  PreparedStatement ps=con.prepareStatement("select  * from product");
	  ResultSet rs=ps.executeQuery();
	  while(rs.next())
	  {
		  %>
      <div class="col-md-3">
        <div class="card mb-3 box-shadow">
          <a href="details/{{i.id}}"><img class="card-img-top" height="150" src="imgupload/<%=rs.getString("image")%>" alt="Card image cap"></a>
          <div class="card-body">
            <p class="card-text"><%=rs.getString("pname")%></p>
            <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                <button type="button" class="btn btn btn-outline-secondary btn-sm">Add to Cart</button>&nbsp&nbsp
               </div>
              <h5 class="text-muted"><i class="fa fa-rupee">150 RS.</i></h5>
            </div>
          </div>
        </div>
      </div>
  
    <%
	  }
	  
	  con.close();
}catch(Exception e)
{
	  System.out.println(e);
}

%>
  
    </div>
  </div>



</body>
</html> 
