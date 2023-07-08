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
    <style>
        .container {
            margin-top: 100px;
        }
    </style>
</head>
<body>

<%@include file="header.jsp" %>
<div class="container mt-5">
    <h2 class="card-title mt-3 text-center">UPDATE PRODUCT</h2>

    <frm:form
            modelAttribute="product"
            action="${pageContext.request.contextPath}/admin/product/create"
            method="POST"
            enctype="multipart/form-data"
    >
    <div class="form-group">
        <frm:hidden path="id" value="${product.id}"/>
    </div>
    <div class="d-flex justify-content-center">
        <div class="w-50 d-flex justify-content-center">
            <div class="border-1-form">
                    <%--Name--%>
                <div class="mb-3">
                    <div class="d-flex justify-content-between">
                        <label class="form-label fw-bold">Name</label>
                        <div style="color: red"></div>
                    </div>
                    <frm:input path="name" value="${product.name}" class="form-control"/>
                    <div><small><frm:errors path="name" class="error"/></small></div>
                </div>
                    <%--price  --%>
                <div class="mb-3">
                    <div class="d-flex justify-content-between">
                        <label class="form-label fw-bold">Price</label>
                        <div style="color: red"></div>
                    </div>
                    <frm:input path="price" value="${product.price}" class="form-control"/>
                    <div><small><frm:errors path="price" class="error"/></small></div>
                </div>
                    <%--Description--%>
                <div class="mb-3">
                    <div class="d-flex justify-content-between">
                        <label class="form-label fw-bold">Description</label>
                        <div style="color: red"></div>
                    </div>
                    <frm:input path="description" value="${product.description}" class="form-control"/>
                    <div><small><frm:errors path="description" class="error"/></small></div>
                    <div>
                    </div>
                        <%--Category--%>
                    <div class="mb-3">
                        <div class="d-flex justify-content-between">
                            <label class="form-label fw-bold">Category</label>
                            <div style="color: red"></div>
                        </div>
                        <select name="category" class="form-control">
                            <c:forEach items="${categories}" var="category">
                                <option value="${category.id}" ${category.id == product.category.id ? "selected": ""}>${category.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                        <%--img--%>
                    <div class="mb-3">
                        <label>Image</label>
                        <input name="imageProduct" value="" type="file"/>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <div class="d-flex justify-content-center">
            <div class="w-50 d-flex justify-content-center">
                <div class="d-flex justify-content-center">
                    <button type="submit"
                            class="btn btn-outline-info align-items-center d-flex justify-content-center"
                            style="width: 150px;" value="Update">
                        <i class="fa-solid fa-pen-to-square fs-4"></i></button>
                </div>
            </div>
        </div>
        <%--    <div class="form-group">--%>
        <%--        <input type="submit" class="btn btn-primary" value="Update"/>--%>
        <%--    </div>--%>

    </frm:form>

</body>
</html>