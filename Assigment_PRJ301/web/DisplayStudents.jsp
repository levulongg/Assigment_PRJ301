<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : DisplayStudents
    Created on : Jun 22, 2022, 10:47:57 PM
    Author     : sneezes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th>Sid</th>
                    <th>Scode</th>
                    <th>fullName</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="s" items="${sList}">
                    <tr>
                    <td>${s.getSid()}</td>
                    <td>${s.getsCode()}</td>
                    <td>${s.getFullName()}</td>
                </tr>
            </c:forEach>
                
            </tbody>
        </table>

    </body>
</html>
