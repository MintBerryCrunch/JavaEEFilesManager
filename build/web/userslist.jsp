<%-- 
    Document   : userslist
    Created on : 25.04.2014, 14:30:55
    Author     : mintberry
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>USERSLIST</h1>
     <table>
     <thead>
         <tr>
             <th>Username</th>
             <th>Since</th>
             <th>Role</th>
         </tr>
     </thead>
     <tbody>
         
     
    <c:forEach  items="${usermanager.usersList()}" var="user">
        <tr>     
        
                <td>${user.username}</td> 
                <td>${user.since}</td>
                <td>${user.role}</td>
                </tr>
    </c:forEach>
         </tbody>
     </table>     
   
    </body>
</html>
