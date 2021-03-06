<%-- 
    Document   : HomePage
    Created on : 25-Dec-2019, 03:26:19
    /*copyright by fu hub*/
/*link group https://www.facebook.com/groups/498752080529382/*/
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/list.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
             <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="left">
                    <c:forEach var="i" items="${cakes}">
                        <div class="list">
                            <div class="list_image">
                                <a href="Cake?id=${i.id}">
                                    <img src="${imagePath}${i.picture}" alt=""/>
                                </a>
                            </div>
                            <div class="list_content">
                                <div class="list_title">
                                    ${i.name}
                                </div>
                                <div class="list_des">
                                    ${i.shortDescription}
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="paging">
                        <c:forEach begin="1" end="${maxPage}" var="i">
                            <a class="${i==pageIndex?"active":""}" href="List?txtPage=${i}">${i}</a>
                        </c:forEach>
                    </div>
                </div>
               <jsp:include page="Right.jsp"/>
            </div>
             <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>
