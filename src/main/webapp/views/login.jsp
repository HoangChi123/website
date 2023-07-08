<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Eye Plus</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .cascading-right {
            margin-right: -50px;
        }

        @media (max-width: 991.98px) {
            .cascading-right {
                margin-right: 0;
            }
        }
    </style>
</head>

<body>

<!-- Section: Design Block -->
<section class="text-center text-lg-start">


    <!-- Jumbotron -->
    <div class="container py-4">
        <div class="row g-0 align-items-center">
            <div class="col-lg-6 mb-5 mb-lg-0">
                <div class="card cascading-right" style="
            background: hsla(0, 0%, 100%, 0.55);
            backdrop-filter: blur(30px);
            ">
                    <div class="card-body p-5 shadow-5 text-center">
                        <h2 class="fw-bold mb-5">EYE PLUS</h2>
                        <form action="/eye-plus/home" method="POST">
                            <!-- Email input -->
                            <div class="form-outline mb-4">
                                <label></label>
                                <input type="text" name="userName" class="form-control" placeholder="Enter Username">
                            </div>

                            <!-- Password input -->
                            <div class="form-outline mb-4">
                                <label></label>
                                <input type="password" name="pass" class="form-control" placeholder="Enter Password">
                            </div>

                            <div class="form-outline mb-4"
                                 style="font-size: 15px; color: red"><p>${logic==1?"Username or password incorrect":""}</p>
                            </div>

                            <br>
                            <!-- Checkbox -->
                            <div class="form-check d-flex justify-content-start mb-4">

                                <input class="form-check-input" type="checkbox" value="" id="form1Example3" />
                                &ensp;
                                <label class="form-check-label" for="form1Example3"> Remember password </label>
                            </div>

                            <!-- Submit button -->
                            <button type="submit" class="btn btn-primary btn-block mb-4">
                                Login
                            </button>

                            <!-- Register buttons -->
                            <div class="text-center">
                                <p>or sign up with:</p>
                                <button type="button" class="btn btn-link btn-floating mx-1">
                                    <i class="fab fa-facebook-f"></i>
                                </button>

                                <button type="button" class="btn btn-link btn-floating mx-1">
                                    <i class="fab fa-google"></i>
                                </button>

                                <button type="button" class="btn btn-link btn-floating mx-1">
                                    <i class="fab fa-twitter"></i>
                                </button>

                                <button type="button" class="btn btn-link btn-floating mx-1">
                                    <i class="fab fa-github"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 mb-5 mb-lg-0">
                <img src="https://gentlemonstervn.com/wp-content/uploads/2022/06/gentle-monster-can-tt.jpg" class="w-100 rounded-4 shadow-4"
                     alt="" />
            </div>
        </div>
    </div>
    <!-- Jumbotron -->
</section>
<!-- Section: Design Block -->
<!-- Bootstrap JS -->

</body>
<script src="https://kit.fontawesome.com/6189a5b91e.js" crossorigin="anonymous"></script>
</html>

