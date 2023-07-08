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

</head>
<body>
<%@include file="header.jsp" %>
<div class="container mt-5">

    <h2 class="text-center">CATEGORY</h2>
    <frm:form
            modelAttribute="category"
            action="${pageContext.request.contextPath}/admin/category/create"
            method="POST"
            enctype="multipart/form-data"
    >

        <div class="">
            <div class="d-flex justify-content-center">
                <div class="w-50 d-flex justify-content-center">
                    <div class="border-1-form">
                            <%--Name--%>
                        <div class="mb-3">
                            <div class="d-flex justify-content-between">
                                <label class="form-label fw-bold">Name</label>
                                <div style="color: red"></div>
                            </div>
                            <frm:input path="name" value="" class="form-control" placeholder="Category name"/>
                            <div><small><frm:errors path="name" class="error"/></small></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="d-flex justify-content-center">
                <div class="w-50 d-flex justify-content-center">
                    <div class="d-flex justify-content-center">
                        <button type="submit" onclick="clickAdd()"
                                class="btn btn-outline-info align-items-center d-flex justify-content-center"
                                style="width: 150px;" value="Add"><i class="fa-solid fa-square-plus fs-4"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </frm:form>
</div>
<div class="mt-5 mb-5">
    <table class="table table-hover">
        <tr class="bg-info">
            <td>Name</td>
            <td>Action</td>
        </tr>
        <c:forEach var="category" items="${categories}">
            <tr>
                <td>${category.name}</td>
                <td><a href="/admin/category/edit/${category.id}">
                    <button type="submit" class="btn btn-info"><i class="fa-solid fa-pen-to-square fs-4"></i></button>
                </a>
                    <a onclick="return clickDelete()" href="/admin/category/delete/${category.id}">
                        <button type="submit" class="btn btn-info"><i class="fa-solid fa-trash detailDelete"></i>
                        </button>
                    </a></td>
            </tr>
        </c:forEach>

    </table>
</div>
</div>
<script>
    function clickAdd() {
        var add = confirm("Do you want more data?")
        if (add) {
            document.getElementById('myForm').action = '/food/addFood'
            document.getElementById('myForm').method = 'post'
            document.getElementById('myForm').submit()
            alert("Add data successfully")
        } else {
            return null
        }
    }


    function clickDelete() {
        var deleted = confirm("Do you want to delete data?")
        if (deleted) {
            alert("Delete data successfully")
            return true
        } else {
            return false
        }
    }


</script>
</body>
</html>