<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:query var="subjects" dataSource="jdbc/IFPWAFCAD">
    SELECT subject_id, name FROM Subject
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>IFPWAFCAD Homepage.</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div> Welcome to IFPWAFCAD, the International Former Professional Wrestlers' Association for Counseling and Development!</div>
        <table border="1">
            <thead>
                <tr>
                    <th>IFPWAFCAD offers expert counseling in a wide range of fields.</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>To view the contact details of an IFPWAFCAD certified former
                        professional wrestler in your area, select a subject below:</td>
                </tr>
                <tr>
                    <td><form action="response.jsp">
                            <strong>Select a subject:</strong>
                            <select name="subject_id">
                                <c:forEach var="row" items="${subjects.rowsByIndex}">
                                    
                                        <c:forEach var="column" items="${row}">
                                            <option value="<c:out value="${column}"/>"><c:out value="${column}"/></option>

                                        </c:forEach>
                                   
                                </c:forEach>

                            </select><input type="submit" value="OK" name="submit" />
                        </form></td>
                </tr
            </tbody>
        </table>

    </body>
</html>
