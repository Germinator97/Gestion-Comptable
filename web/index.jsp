<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<html>
    
    <head>
        
        <!-- Importation du fichier head.jsp  -->
        <jsp:include page="head.jsp"></jsp:include>
        
    </head>
    
    <body>
        
        <!-- Importation du fichier header.jsp  -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <sql:setDataSource var = "lecture" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3309/db" user = "root"  password = ""/>
        
        <sql:query dataSource = "${lecture}" var = "comptes">
           SELECT * FROM compte ORDER BY username DESC;
        </sql:query>
           <ul>
        <c:forEach var="compte" begin="0" items="${comptes.rows}">
            <li>
            <c:out value="${compte.username}"/>
            </li>
        </c:forEach>
        </ul>
        <!-- Importation du fichier footer.jsp  -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp  -->
        <jsp:include page="body.jsp"></jsp:include>
        
        <script>
            M.AutoInit();
        </script>
        
    </body>