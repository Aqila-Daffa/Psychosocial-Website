<%-- 
    Document   : SignIn
    Created on : Dec 30, 2021, 2:35:37 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body style= "background-repeat: no-repeat; background-size: 1250px; width: 1200px; height: 500px; background-image: url(images/bgsignin.jpg);">
    <div class="container" style="margin-top: 150px;">
        <div class="row">
            <div class="col-md-3 offset-md-3 border border-2 border-dark" style="height: 60px; width: 420px; margin-top: -100px; margin-left: 360px; background-color: rgb(202, 255, 191);">
                <h2 style="text-align: center; margin-top: 5px; font-family: georgia; font-weight: 550;">Sign In</h2>
            </div>
            <div class="col-md-4 offset-md-4 border border-2 border-dark rounded" style="height: 380px; margin-top: -20px; background-color: rgb(202, 255, 191);">
                <form action="LoginServlet" method="post">
                    <!-- Username -->
                    <div class="col-12 form-floating mb-3 mt-3">
                        <input type="txt" class="form-control" id="username" name="username" placeholder="Username" style="height: 50px; font-weight: 530; font-size: 15px; background-color: rgb(255,255,252);">
                        <label for="username" style="font-family: arial; font-weight: 550; margin-top:-5px; font-size: 18px;"><img src="images/usname.svg" width="18px" height="22px" style="margin-right: 7px; margin-top:-3px;">Username</label>
                    </div>
                    <!-- Password input -->
                    <div class="col-12 form-floating mb-3">
                        <input type="password" class="form-control" id="password" name="password" placeholder="Password" style="height: 50px; font-weight: 530; font-size: 15px; background-color: rgb(255,255,252);">
                        <label for="password" style="font-family: arial; font-weight: 700; font-size: 18px;margin-top:-5px; "><img src="images/lock.svg" width="18px" height="22px" style="margin-right: 7px; margin-top:-3px;">Password</label>
                    </div>

                    <!-- Submit button -->
                    <button type="submit" class="btn btn-dark" style="width: 345px; margin-top:15px;">Sign in</button>
                </form>
                <hr class="mt-4">
                <div class="col-12">
                    <p class="text-center mb-0">Have not account yet? <a href="SignUp.jsp">Sign up</a></p>
                </div>
                <div class="col-12">
                    <p class="text-center mb-0">or</p>
                </div>
                <div class="col-12">
                    <p class="text-center mb-0">Go back to our <a href="index.jsp">landing page</a></p>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
