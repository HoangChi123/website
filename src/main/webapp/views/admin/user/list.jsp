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

    </style>
</head>
<body>
<%@include file="header.jsp" %>
<div class="container mt-5">

    <h2 class="text-center">USER</h2>
    <frm:form
            modelAttribute="user"
            action="${pageContext.request.contextPath}/admin/user/create"
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
                            <%--username  --%>
                        <div class="mb-3">
                            <div class="d-flex justify-content-between">
                                <label class="form-label fw-bold">Username</label>
                                <div style="color: red"></div>
                            </div>
                            <frm:input path="username" value="" class="form-control" placeholder="Username"/>
                            <div><small><frm:errors path="username" class="error"/></small></div>
                        </div>
                            <%--                        password--%>
                        <div class="mb-3">
                            <div class="d-flex justify-content-between">
                                <label class="form-label fw-bold">Password</label>
                                <div style="color: red"></div>
                            </div>
                            <frm:input path="password" value="" class="form-control" placeholder="Password"/>
                            <div><small><frm:errors path="password" class="error"/></small></div>
                        </div>
                            <%--                        role--%>
                        <div class="mb-3">
                            <div class="d-flex justify-content-between">
                                <label class="form-label fw-bold">Role</label>
                                <div style="color: red"></div>
                            </div>
                            <select name="role" class="form-control">
                                <c:forEach items="${roles}" var="role">
                                    <option value="${role}">${role}</option>
                                </c:forEach>
                            </select>
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
                <td>Name</td>
                <td>Username</td>
                <td>Password</td>
                <td>Role</td>
                <td>Action</td>
            </tr>

            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.name}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>${user.role}</td>
                    <td><a href="/admin/user/edit/${user.id}">
                        <button type="submit" class="btn btn-info"
                                onclick="clickUpdate('${user.id}')"
                                class="btn btn-outline-info align-items-center d-flex justify-content-center">
                            <i class="fa-solid fa-pen-to-square fs-4"></i></button>
                        </a>
                        <a onclick="return clickDelete()" class="ms-4" href="/admin/user/delete/${user.id}">
                            <i class="fa-solid fa-trash detailDelete"></i>
                        </a>
                    </td>
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