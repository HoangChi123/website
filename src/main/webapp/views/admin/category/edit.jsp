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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
    <style>
        .container {
            margin-top: 100px;
        }
    </style>
</head>
<body>
<%@include file="header.jsp" %>
<div class="container mt-5">
<h3 class="card-title mt-3 text-center">UPADTE CATEGORY</h3>

<frm:form
        modelAttribute="category"
        action="${pageContext.request.contextPath}/admin/category/create"
        method="POST"
        enctype="multipart/form-data"
>
    <div class="form-group">
        <frm:hidden path="id" value="${category.id}"/>
    </div>
    <div class="d-flex justify-content-center">
        <div class="w-50 d-flex justify-content-center">
            <div class="border-1-form">
                <div class="mb-3">
                    <div class="d-flex justify-content-between">
                        <label class="form-label fw-bold">Name</label>
                        <div style="color: red"></div>
                    </div>
                    <frm:input path="name" value="${category.name}" class="form-control"/>
                    <div><small><frm:errors path="name" class="error"/></small></div>
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
</div>
</frm:form>
</body>
</html>