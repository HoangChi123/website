<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="shortcut icon" href="/upload/logo.png" type="image/x-icon">
    <title>Eye Plus</title>
    <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css' rel='stylesheet'>
    <link href='https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <style>
        .footer-main{
            padding-top: 90px;
        }

        .address-main > div.col-lg-4 {
            border-bottom: dotted 1px #999;
        }
        .address-box {
            padding: 10px 0;
            margin-bottom: 30px;
        }
        .add-icon{
            float: left;
            width: 60px;
            display: inline-block;
            padding: 0px 5px;
        }
        .address-box .add-icon {
            background: #27303b;
            height: 75px;
            line-height: 75px;
            width: 75px;
            margin-right: 20px;
            text-align: center;
        }
        .add-icon img{
            width: 100%;
        }
        .address-box .add-icon img {
            max-width: 40px;
        }
        .add-content{
            padding-left: 70px;
        }
        .add-content h5 {
            font-size: 17px;
            color: #ffffff;
            padding: 0;
            font-weight: 500;
            margin-bottom: 10px;
        }
        .add-content p {
            font-size: 13px;
            color: #999999;
            font-weight: 300;
        }
        .add-content p a{
            font-size: 14px;
            color: #999999;
            font-weight: 300;
            word-wrap: break-word;
        }
        .add-content p a:hover{
            color: #ffb32d;
        }
        .footer-main{
            padding-top: 90px;
        }

        .address-main > div.col-lg-4 {
            border-bottom: dotted 1px #999;
        }
        .address-box {
            padding: 10px 0;
            margin-bottom: 30px;
        }
        .add-icon{
            float: left;
            width: 60px;
            display: inline-block;
            padding: 0px 5px;
        }
        .address-box .add-icon {
            background: #27303b;
            height: 75px;
            line-height: 75px;
            width: 75px;
            margin-right: 20px;
            text-align: center;
        }
        .add-icon img{
            width: 100%;
        }
        .address-box .add-icon img {
            max-width: 40px;
        }
        .add-content{
            padding-left: 70px;
        }
        .add-content h5 {
            font-size: 17px;
            color: #ffffff;
            padding: 0;
            font-weight: 500;
            margin-bottom: 10px;
        }
        .add-content p {
            font-size: 13px;
            color: #999999;
            font-weight: 300;
        }
        .add-content p a{
            font-size: 14px;
            color: #999999;
            font-weight: 300;
            word-wrap: break-word;
        }
        .add-content p a:hover{
            color: #ffb32d;
        }
        .product-grid2 {
            font-family: 'Open Sans', sans-serif;
            position: relative
        }

        .product-grid2 .product-image2 {
            overflow: hidden;
            position: relative
        }

        .product-grid2 .product-image2 a {
            display: block
        }

        .product-grid2 .product-image2 img {
            width: 100%;
            height: auto
        }

        .product-image2 .pic-1 {
            opacity: 1;
            transition: all .5s
        }

        .product-grid2:hover .product-image2 .pic-1 {
            opacity: 0
        }

        .product-image2 .pic-2 {
            width: 100%;
            height: 100%;
            opacity: 0;
            position: absolute;
            top: 0;
            left: 0;
            transition: all .5s
        }

        .product-grid2:hover .product-image2 .pic-2 {
            opacity: 1
        }

        .product-grid2 .social {
            padding: 0;
            margin: 0;
            position: absolute;
            bottom: 50px;
            right: 25px;
            z-index: 1
        }

        .product-grid2 .social li {
            margin: 0 0 10px;
            display: block;
            transform: translateX(100px);
            transition: all .5s
        }

        .product-grid2:hover .social li {
            transform: translateX(0)
        }

        .product-grid2:hover .social li:nth-child(2) {
            transition-delay: .15s
        }

        .product-grid2:hover .social li:nth-child(3) {
            transition-delay: .25s
        }

        .product-grid2 .social li a {
            color: #505050;
            background-color: #fff;
            font-size: 17px;
            line-height: 45px;
            text-align: center;
            height: 45px;
            width: 45px;
            border-radius: 50%;
            display: block;
            transition: all .3s ease 0s
        }

        .product-grid2 .social li a i {
            margin-top: 15px;
        }

        .product-grid2 .social li a:hover {
            color: #fff;
            background-color: #3498db;
            box-shadow: 0 0 10px rgba(0, 0, 0, .5)
        }

        .product-grid2 .social li a:after, .product-grid2 .social li a:before {
            content: attr(data-tip);
            color: #fff;
            background-color: #000;
            font-size: 12px;
            line-height: 22px;
            border-radius: 3px;
            padding: 0 5px;
            white-space: nowrap;
            opacity: 0;
            transform: translateX(-50%);
            position: absolute;
            left: 50%;
            top: -30px
        }

        .product-grid2 .social li a:after {
            content: '';
            height: 15px;
            width: 15px;
            border-radius: 0;
            transform: translateX(-50%) rotate(45deg);
            top: -22px;
            z-index: -1
        }

        .product-grid2 .social li a:hover:after, .product-grid2 .social li a:hover:before {
            opacity: 1
        }

        .product-grid2 .add-to-cart {
            color: #fff;
            background-color: #404040;
            font-size: 15px;
            text-align: center;
            width: 100%;
            padding: 10px 0;
            display: block;
            position: absolute;
            left: 0;
            bottom: -100%;
            transition: all .3s
        }

        .product-grid2 .add-to-cart:hover {
            background-color: #3498db;
            text-decoration: none
        }

        .product-grid2:hover .add-to-cart {
            bottom: 0
        }

        .product-grid2 .product-content {
            padding: 20px 10px;
            text-align: center
        }

        .product-grid2 .title {
            font-size: 17px;
            margin: 0 0 7px
        }

        .product-grid2 .title a {
            color: #303030
        }

        .product-grid2 .title a:hover {
            color: #3498db
        }

        .product-grid2 .price {
            color: #303030;
            font-size: 15px
        }

        @media screen and (max-width: 990px) {
            .product-grid2 {
                margin-bottom: 30px
            }
        }
        .border-1-form {
            width: 90%;
        }

        .link-header {
            text-decoration: none;
            color: black;
            margin-left: 10px;
            margin-right: 10px;
        }

        .link-header:hover {
            text-decoration: underline;
        }

        .w-header {
            width: 90%;
        }

        .name-left {
            font-size: 40px;
            text-transform: uppercase;
            font-weight: 700;
            padding-left: 8px;
            padding-right: 8px;
            text-decoration: none;
        }

        .border-name-java {
            display: flex;
            height: 50px;
            align-items: center;
            padding-top: -20px !important;
        }

        .name-right{
            font-size: 40px;
            text-transform: uppercase;
            font-weight: 700;
            padding-left: 8px;
            padding-right: 8px;
            text-decoration: none;
        }

        .header-home {
            text-decoration: none;
            color: black;
            font-weight: 500;
            font-size: 17px;
        }

        .border-header-home {
            height: 100%;
            width: 320px;
            display: flex;
            align-items: center;
            border-radius: 4px;
            padding-left: 25px;
            border: none;
        }

        .border-header {
            display: flex;
            justify-content: center;
            height: 65px;
        }

        .border-option-header {
            display: flex;
            justify-content: space-between;
            width: 90%;
        }


        .text-header-option {
            text-decoration: none;
            color: white;
            margin-left: 10px;
            margin-right: 10px;
        }

        .text-header-option:hover {
            color: #0abde3;
        }

        .border-icon-header {
            display: flex;
            align-items: center;
        }

        .border-number-icon {
            color: black;
            border: 2px solid #0abde3;
            display: flex;
            justify-content: center;
            width: 20px;
            border-radius: 300px;
            color: #0abde3;
        }

        .detailDelete {
            font-size: 18px;
            color: black;
        }


        .detailDelete:hover {
            color: #0abde3;
        }

        .border-java-login {
            border: 2px solid white;
            height: 65px;
        }

        .border-all-login {
            height: 400px;
        }

        .text-down {
            margin-top: 200px;
        }

        .text-forgot-password {
            text-decoration: none;
            color: #0abde3;
        }

        .text-forgot-password:hover {
            color: red;
        }

        .text-header-center {
            font-family: sans-serif;
            font-size: 35px;
            color: #0abde3;
            font-style: italic;
            border: none;
            text-shadow: 4px 3px 0px #fff, 9px 8px 0px rgba(0,0,0,0.15);
        }
    </style>
</head>
<body>
<%--<div>--%>
<%--    <a class="link-header" href="/views/login.jsp"><i class="fa-solid fa-right-to-bracket"></i> Login</a>--%>
<%--</div>--%>
<header class="">
    <div class="d-flex m-auto bg-body-secondary d-flex justify-content-center">
        <div class="w-header d-flex justify-content-between">
            <c:if test="${username != null}">
                <div class="d-flex">
                    <div>
                        <a class="link-header" href="/nhan-vien/show">Nhân viên</a>
                    </div>
                    <div>
                        <a class="link-header" href="/khach-hang/show">Khách hàng</a>
                    </div>
                    <div>
                        <a class="link-header" href="/chuc-vu/show">Chức vụ</a>
                    </div>
                    <div>
                        <a class="link-header" href="/cua-hang/show">Cửa hàng</a>
                    </div>
                </div>

                <div>
                    <a class="link-header" href="/logout">Logout</a>
                </div>
            </c:if>

            <c:if test="${username == null}">
                <div>
                    <a class="link-header" href="/views/login.jsp"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
                </div>
            </c:if>

        </div>
    </div>

    <div class="container mt-3 mb-3 d-flex align-items-center justify-content-between">
        <div class="border-name-java">
            <a href="#" class="name-left text-info bg-dark">
                Flavor
            </a>
            <a href="#" class="name-right text-dark bg-info">
                Fusion
            </a>
        </div>

        <div class="text-header-center">
            Savor every bite and enjoy your time with us!
        </div>

        <div>
            <div class="d-flex justify-content-end">
                Customer Service
            </div>
            <div class="fs-5 fw-bolder">
                +84943670235
            </div>
        </div>
    </div>

    <div class="border-header bg-dark">
        <div class="border-option-header">
            <div class="d-flex justify-content-center">
                <button class="border-header-home bg-info">
                    <a class="header-home" href="">
                        <%--                        <span><i class="bi bi-sunglasses" style="color: #000000;"></i></span>--%>
                        <span><a href="#"></a>Home</span>
                    </a>
                </button>
                <div class="d-flex align-items-center ms-4">
                    <div>
                        <a class="text-header-option" href="/admin/product/list">
                            Product
                            <%--                            <i class="fa-solid fa-utensils"></i> User--%>
                        </a>
                    </div>
                    <div>
                        <a class="text-header-option" href="/admin/user/list">User</a>
                    </div>
                    <div>
                        <a class="text-header-option" href="/admin/category/list">Category</a>
                    </div>
                    <div>
                        <a class="text-header-option" href="/dong-sp/show"></a>
                    </div>
                    <div>
                        <a class="text-header-option" href="/chi-tiet-sp/show"></a>
                    </div>
                </div>
            </div>

            <div class="border-icon-header bg-dark">
                <div class="d-flex ms-2 me-2">
                    <button class="border-0 bg-dark" style="padding-left: 1px; padding-right: 1px;">
                        <i class="fa-solid fa-heart fw-3 text-info" style="color: #000000;"></i>
                    </button>
                    <div class="border-number-icon">
                        0
                    </div>
                </div>
                <div class="d-flex ms-2 me-2">
                    <button class="border-0 bg-dark" style="padding-left: 1px; padding-right: 1px;">
                        <i class="fa-solid fa-cart-shopping fw-3 text-info" style="color: #000000;"></i>
                    </button>
                    <div class="border-number-icon">
                        0
                    </div>
                </div>
            </div>
        </div>
    </div>

</header>

<main>
    <div class="container">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark mt-3 mb-5 shadow p-2" style="background-color: #0abde3">
            <!-- Container wrapper -->
            <div class="container-fluid">

                <!-- Navbar brand -->
                <a class="navbar-brand" href="#">
                    <img src="https://img.ws.mms.shopee.vn/c5cfd5d093f723963ef7929d1030cfe1" height="50px" width="50px">
                </a>

                <!-- Toggle button -->
                <button
                        class="navbar-toggler"
                        type="button"
                        data-mdb-toggle="collapse"
                        data-mdb-target="#navbarSupportedContent2"
                        aria-controls="navbarSupportedContent2"
                        aria-expanded="false"
                        aria-label="Toggle navigation">
                    <i class="fas fa-bars"></i>
                </button>

                <!-- Collapsible wrapper -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent2">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <c:forEach var="category" items="${categories}">
                        <li class="nav-item acitve">
                            <a class="nav-link text-white" href="/product/list/cate/${category.id}">${category.name}</a>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <!-- Container wrapper -->
        </nav>
        <!-- Navbar -->
        <div class="row">

            <!-- Products -->
            <c:forEach items="${list}" var="p">
                <div class="col-md-3 col-sm-6">
                    <div class="product-grid2">
                        <div class="product-image2" style="height: 300px">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/upload/${p.image}">
                            </a>
                            <ul class="social">
                                <li><a href="/product/detail/${p.id}" data-tip="View detail"><i
                                        class="fa fa-eye"></i></a></li>
                                    <%--							<li><a href="/chi-tiet-sp/delete?id=${ctsp.id}" data-tip="Delete"><i--%>
                                    <%--									class="fas fa-minus-square"></i></a></li>--%>
                            </ul>
                            <a class="add-to-cart" href="/shopping-cart/add/${p.id}">Add to cart</a>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">${p.name}</a></h3>
                            <span class="price">${p.price} VND</span>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <!-- Pagination -->
        <nav aria-label="Page navigation example" class="d-flex justify-content-center mt-3">
            <ul class="pagination">
                <c:forEach begin="1" end="${totalPage}" varStatus="status">
                    <li class="page-item">
                        <a href="${pageContext.request.contextPath}/product/list?pageNum=${status.index}"
                           class="page-link">${status.index}</a>
                    </li>
                </c:forEach>
            </ul>
        </nav>
        <!-- Pagination -->
    </div>
</main>
<%--<%@include file="footer.jsp" %>--%>
</body>
<script src="https://kit.fontawesome.com/6189a5b91e.js" crossorigin="anonymous"></script>
</html>