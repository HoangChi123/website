<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link rel="shortcut icon" href="../image/logo.png" type="image/x-icon">
    <title>Page Palette</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">

<body>
<div class="container">
    <h2>List</h2>
    <div class="rows">
        <div class="col-sm-9">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Amount</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="item" items="${CART_ITEMS}">
                    <form action="">
                        <tr>
                            <td>${item.productId}</td>
                            <td>${item.name}</td>
                            <td>${item.price}</td>
                            <td>
                                <input name="qty" value="${item.qty}"
                                       onblur="this.form.submit()" style="width:50px;">
                            </td>
                        </tr>
                    </form>
                </c:forEach>
                </tbody>
            </table>
            <p>Total: </p>
            <hr>
            <a class="" href="">Clear</a>
            <a class="" href="">Add more</a>
        </div>
    </div>
</div>
</body>
</html>