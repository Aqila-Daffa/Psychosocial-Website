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
    <title>Self Love Challange Page</title>
    <style>
        
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
        .topright {
            position: absolute;
            top: 8px;
            right: 27px;
            font-size: 18px;
        }
         .con {
            top: 0;
        }
        
        button {
        background-color: ivory;
        width: 200px;
        font-size: 20px;
        padding: 10px;
        border-radius: 5px;
        border: 1px solid black;
        color: black;
        cursor: pointer;
        position: absolute;
        bottom: 20px;
        border-radius: 8px; 
        box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
      } 

      .button span {
        cursor: pointer;
        display: inline-block;
        position: relative;
        transition: 0.5s;
      }

      .button span:after {
        content: '\00ab';
        position: absolute;
        opacity: 0;
        top: 0;
        right: 60px;
        transition: 0.5s;
      }

      .button:hover span {
        padding-left: 25px;
      }

      .button:hover span:after {
        opacity: 1;
        right: 10;
      }

    </style>
</head>

<body style="background-repeat: no-repeat; background-size: 1280px 775px; background-image: url(self/images/bg.gif) ">
    <section>
        <ul class= "nav justify-content-center border border-3 border-dark" style="margin: 30px 50px 30px 300px; background-color:rgb(255, 255, 252); border-radius:10px; width: 50%;">
            <li class="nav-item ">
                <h2 style="font-family: Times,Times, serif; font-weight: 550; ">Self Love Challange</h2>
            </li>
        </ul>
        <div class="con">
            <div class="topright"><a href="HomePage.jsp" ><img src="images/logo.png " width="160px " height="100px "></a></div>
        </div>

        <div class="container-sm">
                    <!-- row 2 -->
                    <div class="row ">
                        <!-- Day1  -->
                        <div class="col-4 my-2 row-100 ">
                            <a href="self/Day1.jsp" class=" btn btn-outline-dark" style="margin-left: 310px; width: 100px; height: 100px; background-color:rgb(253, 255, 182);">
                            <div>
                                <br> Day 1
                            </div>
                                </a>
                        </div>
                        <!--  Day 2 -->
                        <div class="col-2 my-2 ">
                            <div class="card-body " style="margin-left: 100px; margin-top: -17.5px; ">
                                <a href="self/Day2.jsp" class="btn btn-outline-dark" style="width: 100px; height: 100px; background-color:rgb(253, 255, 182);"><br>Day 2</a>
                            </div>
                        </div>
                        <!-- Day 3 -->
                         <div class="col-4 my-2 ">
                            <div class="card-body " style="margin-left: 100px; margin-top: -17.5px; ">
                                <a href="self/Day3.jsp" class="btn btn-outline-dark" style="width: 100px; height: 100px; background-color:rgb(253, 255, 182);"> <br>Day 3</a>
                            </div>
                        </div>
                    </div>

                    <!-- Day 4 -->
                    <div class="row ">
                        <!-- Feature 4 -->
                         <div class="col-4 my-2 ">
                            <div class="card-body " style="margin-left: 290px; margin-top: -17.5px; ">
                                <a href="self/Day4.jsp" class="btn btn-outline-dark" style="width: 100px; height: 100px; background-color:rgb(253, 255, 182);"><br>Day 4</a>
                            </div>
                        </div>
                        <!-- Day 5 -->
                         <div class="col-2 my-2 ">
                            <div class="card-body " style="margin-left: 100px; margin-top: -17.5px; ">
                                <a href="self/Day5.jsp" class="btn btn-outline-dark" style="width: 100px; height: 100px; background-color:rgb(253, 255, 182);"><br>Day 5 </a>
                            </div>
                        </div>
                        <!-- Day 6 -->
                         <div class="col-1 my-2 ">
                            <div class="card-body " style="margin-left: 100px; margin-top: -17.5px; ">
                                <a href="self/Day6.jsp" class="btn btn-outline-dark" style="width: 100px; height: 100px; background-color:rgb(253, 255, 182);"><br>Day 6</a>
                            </div>
                        <!-- Day 7 -->
                         <div class="col-0 my-20 ">
                            <div class="card-body " style="margin-left: -90px; margin-top: -7.5px; ">
                                <a href="self/Day7.jsp" class="btn btn-outline-dark" style="width: 100px; height: 100px; background-color:rgb(253, 255, 182);"><br>Day 7</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
<a href="HomePage.jsp"> <button class="button offset-5" style="vertical-align:middle"><span>Back </span></button> </a>
</body>

</html>