<%-- 
    Document   : HomePage
    Created on : Dec 30, 2021, 2:42:11 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controller.LoginServlet"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!Doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <title>Home Page</title>
    <style>
        .carousel-inner img {
            width: 100%;
            height: 100%;
        }
        
        .profileLink {
            text-decoration: none;
            color: rgb(15, 9, 9);
        }
        
        .profileLink:link {
            text-decoration: none;
            color: rgb(53, 48, 48);
        }
        
        .profileLink:hover {
            text-decoration: none;
            color: rgb(65, 50, 50);
        }
    </style>
</head>

<body style="background-repeat: no-repeat; background-size: 1267px 775px; background-image: url(images/bg.gif) ">
    <header class="border border-3 border-dark" style="background-color: rgb(184, 218, 239); margin: 0;">
        <nav class="navbar ">
            <a href="ViewProfile.jsp"><img src="images/profile.png" width="100px" height="55px" style="margin-top: -10px; "></a>
            <%
            String name = (String)session.getAttribute("name");
            %>
            <a href="ViewProfile.jsp" class="profileLink">
                <h3 style="font-family: georgia; font-weight: 550; margin-left: -340px; ">
                    <%= name %>
                </h3>
            </a>
            <h1 style="font-family: georgia; font-weight: 550; margin-left: -250px; ">
                Psychosocial
            </h1>
             <a href="HomePage.jsp">
            <img src="images/logo.png " width="160px " height="100px " style="margin-right: -10px; ">
            </a>
        </nav>
    </header>

    <section>
        <ul class="nav">
            <li class="nav-item">
                <a href="TransactionHistory.jsp"><img src="images/TransactionHistory.png" width="120px" height="60px" style="margin-top: 10px; margin-left: 20px;"></a>
            </li>
            <li class="nav-item border border-3 border-dark" style="margin: 10px 50px 0 180px; background-color:rgb(255, 255, 252); border-radius:10px; width: 50%;">
                <h2 style="font-family: Times,Times, serif; font-weight: 550; margin-top: 10px; margin-left: 130px;">Mental Health Application</h2>
            </li>
            <li class="nav-item">
             <a href="../LogoutServlet" id="Confirmation"><img src="images/SignOut.png" width="100px" height="55px" style="margin-top: 10px; margin-left: 140px;"></a>
            </li>
        </ul>
        <script>
        var checkConfirmation = document.getElementById('Confirmation');
        checkConfirmation.onclick = function() {
            var check = confirm("Are sure want to Sign Out ?");
            if (check === true) {
                return true;
            } else {
                alert("Okay, continue your activity 😉");
                return false;              
            }
        }
        </script>

        <div class=" container-sm ">

            <!-- row 1 -->
            <div class="row ">
                <div class="col-6 my-3 offset-3 ">
                    <!-- Carousel -->
                    <div id="demo" class="carousel slide " data-ride="carousel">
                        <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                            <li data-target="#demo" data-slide-to="2"></li>
                            <li data-target="#demo" data-slide-to="3"></li>
                            <li data-target="#demo" data-slide-to="4"></li>
                        </ul>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="images/p2.gif " class="d-block w-100">
                            </div>
                            <div class="carousel-item">
                                <img src="images/p4.gif " class="d-block w-100">
                            </div>
                            <div class="carousel-item ">
                                <img src="images/p5.gif " class="d-block w-100">
                            </div>
                            <div class="carousel-item ">
                                <img src="images/p1.gif " class="d-block w-100">
                            </div>
                            <div class="carousel-item ">
                                <img src="images/p3.gif " class="d-block w-100">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>

                    <!-- row 2 -->
                    <div class="row ">
                        <!-- Feature 1 -->
                        <div class="col-4 my-2 ">
                            <div class="card-body " style="margin-top: -17.5px; ">
                                <a href="MentalHTest.jsp" class="btn btn-outline-dark">Mental Health Test</a>
                            </div>
                        </div>
                        <!-- Feature 2 -->
                        <div class="col-4 my-2 ">
                            <div class="card-body " style="margin-top: -17.5px; ">
                                <a href="MotivationalQuotes.jsp" class="btn btn-outline-dark">Motivational Quotes</a>
                            </div>
                        </div>
                        <!-- Feature 3 -->
                        <div class="col-4 my-2 ">
                            <div class="card-body " style="margin-top: -17.5px; ">
                                <a href="MotivationalVideo.jsp" class="btn btn-outline-dark">Motivational Video</a>
                            </div>
                        </div>
                    </div>

                    <!-- row 3 -->
                    <div class="row ">
                        <!-- Feature 4 -->
                        <div class="col-4 my-2 ">
                            <div class="card-body " style="margin-top: -17.5px; ">
                                <a href="SelfLoveChallange.jsp" class="btn btn-outline-dark">Self-love Challenge</a>
                            </div>
                        </div>
                        <!-- Feature 5 -->
                        <div class="col-4 my-2 ">
                            <div class="card-body " style="margin-top: -17.5px; ">
                                <a href="BeatStress.jsp" class="btn btn-outline-dark">Beat Stress Steps</a>
                            </div>
                        </div>
                        <!-- Feature 6 -->
                        <div class="col-4 my-2 ">
                            <div class="card-body " style="margin-top: -17.5px; ">
                                <a href="RelaxingMusic.jsp" class="btn btn-outline-dark">Relaxing Music</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

</body>

</html>
