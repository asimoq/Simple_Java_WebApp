<%@ page import="org.example.demo1.repo.repo" %>
<%@ page import="org.example.demo1.modells.Book" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Fooldal</title>
    <link rel="stylesheet" href="fooldal.css">
</head>
<body>
<h1><%= "Üdv kedves " + session.getAttribute("SessionNev") + "!" %>
</h1>
<br/>
<table border="1">
    <tr>
        <td>
            Név
        </td>
        <td>
            ISBN
        </td>
        <td>
            Megvétel
        </td>
    </tr>
    <%for(Book b:repo.getInstance().getBookList()){%>
    <tr>
        <td>
            <%=b.getTitle()%>
        </td>
        <td>
            <%=b.getIsbn()%>
        </td>
        <td>
            <%if(!b.isSold()){%>
            <a href="BuyServlet?isbn=<%=b.getIsbn()%>">Buy</a>
            <%}%>
            <%if(b.isSold()){%>
            Eladva
            <%}%>
        </td>
    </tr>
    <%}%>


</table>
<br/>
<a href="kosar.jsp">Kosár</a>

</body>
</html>