<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Nyitooldal</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
<h1><%= "Belépés" %>
</h1>
<br/>
<form method="post" action="LoginServlet">
    Adja meg a nevét:<input type="text" name="nev">
    <input type="submit" value="Belépés">

</form>
</body>
</html>