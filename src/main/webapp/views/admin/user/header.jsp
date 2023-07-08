<html>
<head>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="shortcut icon" href="/upload/logo.png" type="image/x-icon">
    <title>Eye Plus</title>
    <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css' rel='stylesheet'>
    <link href='https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <style>
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
<body id="body-pd">
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

</body>

<script src="https://kit.fontawesome.com/6189a5b91e.js" crossorigin="anonymous"></script>
</html>