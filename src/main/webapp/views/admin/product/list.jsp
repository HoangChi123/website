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
<%@include file="header.jsp" %>
<div class="container mt-5">
    <h2 class="text-center">PRODUCT</h2>
    <frm:form
            modelAttribute="product"
            action="${pageContext.request.contextPath}/admin/product/create"
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
                        <frm:input path="name" value="" class="form-control" placeholder="Name"/>
                        <div><small><frm:errors path="name" class="error"/></small></div>
                    </div>
                        <%--price  --%>
                    <div class="mb-3">
                        <div class="d-flex justify-content-between">
                            <label class="form-label fw-bold">Price</label>
                            <div style="color: red"></div>
                        </div>
                        <frm:input path="price" value="" class="form-control" placeholder="Price"/>
                        <div><small><frm:errors path="price" class="error"/></small></div>
                    </div>
                        <%--Description--%>
                    <div class="mb-3">
                        <div class="d-flex justify-content-between">
                            <label class="form-label fw-bold">Description</label>
                            <div style="color: red"></div>
                        </div>
                        <frm:input path="description" value="" class="form-control" placeholder="Description"/>
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
                                    <option value="${category.id}">${category.name}</option>
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
                    <button type="submit" onclick="clickAdd()"
                            class="btn btn-outline-info align-items-center d-flex justify-content-center"
                            style="width: 150px;" value="Add"><i class="fa-solid fa-square-plus fs-4"></i></button>
                </div>
            </div>
        </div>
        </div>
        </frm:form>

    <div class="mt-5 mb-5">

        <table class="table table-hover">
            <tr class="bg-info">
                <td>Image</td>
                <td>Name</td>
                <td>Price</td>
                <td>Category</td>
                <td>Description</td>
                <td>Action</td>
            </tr>
            <c:forEach var="product" items="${list}">
                <tr>
                    <td>
                        <img src="${pageContext.request.contextPath}/upload/${product.image}"
                             style="width:60px; height:90px">
                    </td>
                    <td>${product.name}</td>
                    <td>${product.price}</td>
                    <td>${product.category.name}</td>
                    <td>${product.description}</td>
                    <td><a href="/admin/product/edit/${product.id}">
                        <button type="submit" class="btn btn-info"><i class="fa-solid fa-pen-to-square fs-4"></i></button>
                    </a>
                        <a onclick="return clickDelete()" href="/admin/product/delete/${product.id}">
                            <button type="submit" class="btn btn-info"><i class="fa-solid fa-trash detailDelete"></i></button>
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

    function clickUpdate(id) {
        if (id.trim() === '') {
            return alert("Please select a row on the table")
        } else {
            var update = confirm("Do you want to update the data?")
            if (update) {
                document.getElementById('myForm').action = '/food/updateFood/' + id
                document.getElementById('myForm').method = 'post'
                document.getElementById('myForm').submit()
                alert("Update data successfully")
            } else {
                return null
            }
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

    function clickSearch() {
        document.getElementById('myForm').action = '/food/search'
        document.getElementById('myForm').method = 'get'
        document.getElementById('myForm').submit()
    }
</script>
</body>
</html>