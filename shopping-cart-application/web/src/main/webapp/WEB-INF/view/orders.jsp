<%-- 
    Document   : content
    Created on : Jan 7, 2022, 11:19:47 AM
    Author     : Justyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
// request set in controller
//    request.setAttribute("selectedPage","about");
%>
<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main role="main" class="container">
    <H1>Orders</H1>
    
    <table class="table">
        <tr>
            <th scope="col">Time/Date of Purchase</th>
            <th scope="col">Buyer</th>
            <th scope="col">Order Number</th>
            <th scope="col">Purchase information</th>

            <th></th>
        </tr>

        <c:forEach var="invoice" items="${userOrders}">
            <tr>
                <td>${invoice.dateOfPurchase}</td>
                <td>${invoice.purchaser.username}</td>
                <td>${invoice.invoiceNumber}</td>
                <td>${invoice.purchasedItems}</td>



            </tr>
        </c:forEach>
    
</main>




<jsp:include page="footer.jsp" />
