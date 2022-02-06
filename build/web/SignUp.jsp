<%-- 
    Document   : SignUp
    Created on : Dec 30, 2021, 2:36:29 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
        <style>
    
    .but {
      background-color: ivory;
      width: 200px;
      font-size: 20px;
      padding: 10px;
      border-radius: 5px;
      border: 1px solid black;
      color: black;
      cursor: pointer;
      position: absolute;
      left: 50px;
      top: 550px;
      border-radius: 8px; 
      box-shadow: 0 8px 16px 0 rgba(0,0,0,0.1), 0 6px 20px 0 rgba(0,0,0,0.12);
    } 

    .but span {
      cursor: pointer;
      display: inline-block;
      position: relative;
      transition: 0.5s;
    }

    .but span:after {
      content: '\00ab';
      position: absolute;
      opacity: 0;
      top: 0;
      right: 60px;
      transition: 0.5s;
    }

    .but:hover span {
      padding-left: 25px;
    }

    .but:hover span:after {
      opacity: 1;
      right: 10;
    }
    
</style>
</head>

<body style="background-repeat: no-repeat; background-size: 1250px; width: 1200px; height: 500px; background-image: url(images/bgsignin.jpg);">
    <div class="container" style="margin-top: 150px;">
        <div class="row">
            <div class="col-md-3 offset-md-3 border border-2 border-dark " style="height: 60px; width: 420px; margin-top: -120px; margin-left: 360px; background-color: rgb(202, 255, 191);">
                <h2 style="text-align: center; margin-top: 5px; font-family: georgia; font-weight: 550;">Sign Up</h2>
            </div>
            <div class="col-md-4 offset-md-4 border border-2 border-dark" style="height: 510px; margin-top: -40px; background-color: rgb(202, 255, 191);">
                <form action="SignUpServlet" method="post">
                    <!-- Username -->
                    <div class="col-11 form-floating mb-3 mt-3">
                        <input type="txt" class="form-control" id="username" name="username" placeholder="Username" style="margin-left: 15px; height: 45px; font-weight: 530; font-size: 15px; background-color: rgb(255,255,252);">
                        <label for="username" style="margin-left: 15px; font-family: arial; font-weight: 550; margin-top:-5px; font-size: 15px;"><img src="images/usname.svg" width="18px" height="22px" style="margin-right: 7px; margin-top:-3px;">Username</label>
                    </div>

                    <!-- Email input -->
                    <div class="col-11 form-floating mb-3 mt-3">
                        <input type="txt" class="form-control" id="email" name="email" placeholder="Email" style="margin-left: 15px; height: 45px; font-weight: 530; font-size: 15px; background-color: rgb(255,255,252);">
                        <label for="email" style="margin-left: 15px; font-family: arial; font-weight: 550; margin-top:-5px; font-size: 15px;"><img src="images/mail.svg" width="20px" height="27px" style="margin-right: 7px; margin-top:-2px;">Email Address</label>
                    </div>

                    <!-- Phone Number -->
                    <div class="col-11 form-floating mb-3 mt-3">
                        <input type="txt" class="form-control" id="phone" name="phone" placeholder="Phone" pattern="[0-9]{3}-[0-9]{7}" style="margin-left: 15px; height: 45px; font-weight: 530; font-size: 15px; background-color: rgb(255,255,252);">
                        <label for="phone" style="margin-left: 15px; font-family: arial; font-weight: 550; margin-top:-5px; font-size: 15px;"><img src="images/phone.svg" width="18px" height="22px" style="margin-right: 7px; margin-top:-3px;">Phone Number (E.g: 012-3456789)</label>
                    </div>

                    <!-- Occupation -->
                    <div class="col-11 form-floating mb-2 mt-3">
                        <input type="txt" class="form-control" id="occupation" name="occupation" placeholder="Occupation" style="margin-left: 15px; height: 45px; font-weight: 530; font-size: 15px; background-color: rgb(255,255,252);">
                        <label for="occupation" style="margin-left: 15px; font-family: arial; font-weight: 550; margin-top:-5px; font-size: 15px;"><img src="images/occu.svg" width="18px" height="22px" style="margin-right: 7px; margin-top:-3px;">Occupation</label>
                    </div>

                    <!-- Gender -->
                    <div class="col-13 mb-1 mt-1">
                        <select class="col-11 mb-3 mt-3 rounded" id="gender" name="gender" style="margin-left: 15px;font-family: arial; font-weight: 550; margin-top:-5px; font-size: 15px; height: 30px; background-color: rgb(255,255,252);">
                            <option selected disabled hidden style="background-image:url(images/gender.svg); ">Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="LGBT">Others</option>
                          </select>
                    </div>
                    <!-- Password input -->
                    <div class="col-11 form-floating mb-3 ">
                        <input type="password" class="form-control" id="password" name="password" placeholder="Password" style="margin-left: 15px; height: 45px; font-weight: 530; font-size: 15px; background-color: rgb(255,255,252);">
                        <label for="password" style="margin-left: 15px; font-family: arial; font-weight: 550; margin-top:-5px; font-size: 15px;"><img src="images/lock.svg" width="18px" height="22px" style="margin-right: 7px; margin-top:-3px;">Password</label>
                    </div>

                    <!-- Submit button -->
                    <button type="submit " class="btn btn-dark " style="width: 345px; margin-left: 5px;">Sign Up</button>
                </form>
                <hr class="mt-4">
                <div class="col-12">
                    <p class="text-center mb-0">Or if you had an account, you can directly <a href="SignIn.jsp">Sign in</a></p>
                </div>
            </div>
        </div>
    </div>
        <a href="index.jsp"><button class="but" style="vertical-align:middle"><span>Back</span></button> </a>
</body>

</html>
