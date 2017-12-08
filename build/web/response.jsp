<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : response
    Created on : 6 Dec, 2017, 7:59:11 PM
    Author     : K Ramyasri
--%>

<sql:query var="counselorQuery" dataSource="jdbc/IFPWAFCAD">
    SELECT * FROM Subject, Counselor WHERE Counselor.counselor_id = Subject.counselor_idfk AND Subject.subject_id = ? <sql:param value="${param.subject_id}"/>
</sql:query>
<c:set var="counselorDetails" value="${counselorQuery.rows[0]}"/>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>${counselorDetails.name}</title>
        
    </head>
    <body>
        <h1>Hello World!</h1>
        <table border="0">
            <thead>
                <tr>
                    <th colspan="2">${counselorDetails.name}</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><strong>Description: </strong></td>
                    <td><span style="font-size:smaller; font-style:italic;">${counselorDetails.name}</span></td>
                </tr>
                <tr>
                    <td><strong>Counselor: </strong></td>
                    <td>${counselorDetails.name}
                        <br>
                        <span style="font-size:smaller; font-style:italic;">
                            member since: ${counselorDetails.name}</span>
                    </td>
                </tr>
                <tr>
                    <td><strong>Contact Details: </strong></td>
                    <td><strong>email: </strong>
                        <a href="mailto:{placeholder}">${counselorDetails.name}</a>
                        <br><strong>phone: </strong>${counselorDetails.name}
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
