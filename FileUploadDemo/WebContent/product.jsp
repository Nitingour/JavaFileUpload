<%@page import="java.sql.*" %>

<%

try {
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/fooddb","root","root");

	  PreparedStatement ps=con.prepareStatement("select  * from product");
	  ResultSet rs=ps.executeQuery();
	  %>
	  <table border="3">
	  <tr><th>PNAME</th><th>PRICE</th><th>DESCRIPTION</th><th>IMAGE</th></tr>
	  <%
	  while(rs.next())
	  {
		  %>
		      <tr>
		        <td><%=rs.getString("pname")%></td>
		        <td><%=rs.getString("price")%></td>
		         <td><%=rs.getString("description")%></td>
		        <td><img src="imgupload/<%=rs.getString("image")%>" height="100" width="100"/></td>
		        </tr>
		  <%
	  }
	  %>
	  </table>
	  <%
	  
	  con.close();
}catch(Exception e)
{
	  System.out.println(e);
}

%>