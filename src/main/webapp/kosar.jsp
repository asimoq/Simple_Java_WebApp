<%@ page import="org.example.demo1.repo.repo" %>
<%@ page import="org.example.demo1.modells.Book" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Kosar</title>
    <link href="kosar.css" rel="stylesheet">
</head>
<body>
<%
    List<Book> kosarItems = repo.getInstance().getBookListByName(session.getAttribute("SessionNev").toString());
    boolean hasItemsInKosar = !kosarItems.isEmpty();
%>
<h1><%= "Üdv kedves " + session.getAttribute("SessionNev")+ "! Kosarad tartalma:" %>
</h1>
<br/>
<%
    if (hasItemsInKosar) {
%>
<table border="1">
    <tr>
        <td>
            Név
        </td>
        <td>
            ISBN
        </td>
    </tr>
    <%for(Book b:repo.getInstance().getBookListByName(session.getAttribute("SessionNev").toString())){%>
    <tr>
        <td>
            <%=b.getTitle()%>
        </td>
        <td>
            <%=b.getIsbn()%>
        </td>

    </tr>
<%}%>


</table>
<%
} else {
%>
<p>Nincs még termék a kosaradban.</p>
<%
    }
%>
<br/>
<a href="fooldal.jsp">Főoldal</a>
</body>
</html>