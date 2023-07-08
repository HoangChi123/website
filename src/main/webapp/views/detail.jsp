<%@ page language="java" contentType="text/html; charset=UTF8"
         pageEncoding="UTF8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<!DOCTYPE html>
<html>
<head>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="shortcut icon" href="/upload/logo.png" type="image/x-icon">
    <title>Eye Plus</title>
    <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css' rel='stylesheet'>
    <link href='https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
    <style>
        .footer-main {
            padding-top: 90px;
        }

        .address-main > div.col-lg-4 {
            border-bottom: dotted 1px #999;
        }

        .address-box {
            padding: 10px 0;
            margin-bottom: 30px;
        }

        .add-icon {
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

        .add-icon img {
            width: 100%;
        }

        .address-box .add-icon img {
            max-width: 40px;
        }

        .add-content {
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

        .add-content p a {
            font-size: 14px;
            color: #999999;
            font-weight: 300;
            word-wrap: break-word;
        }

        .add-content p a:hover {
            color: #ffb32d;
        }

        .footer-main {
            padding-top: 90px;
        }

        .address-main > div.col-lg-4 {
            border-bottom: dotted 1px #999;
        }

        .address-box {
            padding: 10px 0;
            margin-bottom: 30px;
        }

        .add-icon {
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

        .add-icon img {
            width: 100%;
        }

        .address-box .add-icon img {
            max-width: 40px;
        }

        .add-content {
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

        .add-content p a {
            font-size: 14px;
            color: #999999;
            font-weight: 300;
            word-wrap: break-word;
        }

        .add-content p a:hover {
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
    </style>
</head>
<body>
<!-- Navbar -->

<!--Main layout-->
<main>
    <div class="container">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark mt-3 mb-5 shadow p-2" style="background-color: #0abde3">
            <!-- Container wrapper -->
            <div class="container-fluid">

                <!-- Navbar brand -->
                <a class="navbar-brand" href="#">Categories:</a>

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

                        <!-- Link -->
                        <c:forEach var="category" items="${categories}">
                            <li class="nav-item acitve">
                                <a class="nav-link text-white"
                                   href="/product/list/cate/${category.id}">${category.name}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <!-- Container wrapper -->
        </nav>
        <!-- Navbar -->
        <div class="row">
            <a class="col-sm-4" href="${pageContext.request.contextPath}/product/detail/${p.id}">
                <div class="card">
                    <img src="${pageContext.request.contextPath}/upload/${p.image}" class="card-img-top"/>
                </div>
            </a>
            <div class="col-lg-7 col-md-7 col-sm-6">
                <h4 class="box-title mt-5">${p.name}</h4>
                <p>${p.description}</p>
                <h2 class="mt-5">
                    ${p.price}<small class="text-success">(36%off)</small>
                </h2>
                <button class="btn btn-dark btn-rounded mr-1" data-toggle="tooltip" title=""
                        data-original-title="Add to cart">
                    <i class="fa fa-shopping-cart"></i>
                </button>
                <button class="btn btn-primary btn-rounded">Buy Now</button>
                <h3 class="box-title mt-5">Key Highlights</h3>
                <ul class="list-unstyled">
                    <li><i class="fa fa-check text-success"></i>Sturdy structure</li>
                    <li><i class="fa fa-check text-success"></i>Designed to foster easy portability</li>
                    <li><i class="fa fa-check text-success"></i>Perfect furniture to flaunt your wonderful collectibles
                    </li>
                </ul>
            </div>
        </div>
        </a>
    </div>
</main>
<br>
<br>
<%@include file="footer.jsp" %>
</body>
</html>