<%-- 
    Document   : MentalHTest
    Created on : Dec 30, 2021, 2:44:35 PM
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
    <title>Menta Health Test Page</title>
    <style>
        header {
            margin: 0;
            background-color: rgb(184, 218, 239);
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
        
        h1 {
            text-align: center;
        }
        
        section {
            margin: 60px 150px 20px 150px;
            background-color: white;
        }
        
        section article {
            border-bottom: 1px solid;
            margin: 60px 0 10px 0;
        }
        
        #article-list {
            padding: 0 10px 10px 10px;
        }
        
        footer {
            padding: 1px;
            margin-bottom: 20px;
            color: white;
            text-align: center;
            background-color: black;
        }
    </style>
</head>

<body style="background-color: antiquewhite;">
    <header>
        <nav class="navbar">
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
            <img src="images/logo.png " width="160px " height="100px " style="margin-right: -10px;">
            </a>
        </nav>
    </header>

    <section>
        <h1 style="font-family: georgia;">Mental Health Test</h1>
        <h5 class="offset-1" style="font-family: 'Times New Roman', Times, serif; color: rgb(192, 19, 19); font-weight: 550;">
            0 = Strongly Disagree
            <br> 1 = Disagree
            <br> 2 = Agree
            <br> 3 = Strongly Agree
        </h5>

        <script>
            function confirmation_function(form) {
                if (confirm("Are sure want to submit it ?")) {
                    alert("The test submitted!");
                } else {
                    alert("Recheck your answers!");
                    return false;
                }
            }
        </script>

        <form action="../MentalTestServlet" onSubmit="return confirmation_function(this)" method="POST">
            <div id="article-list">
                <article>
                    <p>
                        <b>1. I feel myself getting angry over trivial things.</b>
                    </p>
                    <input type="radio" id="Score0" name="num1" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num1" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num1" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num1" value="3">
                    <label for="Score3">3</label>
                </article>
                <article>
                    <p>
                        <b>2. I feel myself getting angry over trivial things.</b>
                    </p>
                    <input type="radio" id="Score0" name="num2" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num2" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num2" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num2" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>3. I can't feel any positive feelings at all.</b>
                    </p>
                    <input type="radio" id="Score0" name="num3" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num3" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num3" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num3" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>4. I have difficulty breathing (eg often gasping for air or can't breathe even though I haven't done any physical activity before).</b>
                    </p>
                    <input type="radio" id="Score0" name="num4" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num4" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num4" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num4" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>5. I don't seem to be strong anymore to do an activity.</b>
                    </p>
                    <input type="radio" id="Score0" name="num5" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num5" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num5" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num5" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>6. I tend to overreact to a situation.</b>
                    </p>
                    <input type="radio" id="Score0" name="num6" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num6" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num6" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num6" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>7. I feel unsteady (for example, my leg feels like it's going to 'drop off').</b>
                    </p>
                    <input type="radio" id="Score0" name="num7" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num7" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num7" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num7" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>8. I find it hard to relax.</b>
                    </p>
                    <input type="radio" id="Score0" name="num8" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num8" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num8" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num8" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>9. I find myself in a situation that makes me feel very anxious and I will feel very relieved when this is all over.</b>
                    </p>
                    <input type="radio" id="Score0" name="num9" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num9" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num9" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num9" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>10. I feel that there is nothing to look forward to in the future.</b>
                    </p>
                    <input type="radio" id="Score0" name="num10" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num10" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num10" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num10" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>11. I find myself easily irritated.</b>
                    </p>
                    <input type="radio" id="Score0" name="num11" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num11" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num11" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num11" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>12. I feel like I've spent a lot of energy feeling anxious.</b>
                    </p>
                    <input type="radio" id="Score0" name="num12" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num12" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num12" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num12" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>13. I feel sad and depressed.</b>
                    </p>
                    <input type="radio" id="Score0" name="num13" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num13" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num13" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num13" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>14. I find myself getting impatient when experiencing delays (example: traffic jams, waiting for something).</b>
                    </p>
                    <input type="radio" id="Score0" name="num14" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num14" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num14" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num14" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>15. I feel weak like I'm about to pass out.</b>
                    </p>
                    <input type="radio" id="Score0" name="num15" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num15" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num15" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num15" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>16. I feel I lost interest in everything.</b>
                    </p>
                    <input type="radio" id="Score0" name="num16" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num16" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num16" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num16" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>17. I feel that I am worthless as a human.</b>
                    </p>
                    <input type="radio" id="Score0" name="num17" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num17" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num17" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num17" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>18. I feel that I am easily offended.</b>
                    </p>
                    <input type="radio" id="Score0" name="num18" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num18" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num18" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num18" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>19. I sweat excessively (example: sweaty hands), even though the temperature is not hot or I haven't done any physical activity before.</b>
                    </p>
                    <input type="radio" id="Score0" name="num19" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num19" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num19" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num19" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>20. I feel scared for no apparent reason.</b>
                    </p>
                    <input type="radio" id="Score0" name="num20" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num20" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num20" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num20" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>21. I feel that life is useless.</b>
                    </p>
                    <input type="radio" id="Score0" name="num21" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num21" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num21" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num21" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>22. I find it hard to rest.</b>
                    </p>
                    <input type="radio" id="Score0" name="num22" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num22" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num22" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num22" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>23. I have difficulty swallowing.</b>
                    </p>
                    <input type="radio" id="Score0" name="num23" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num23" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num23" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num23" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>24. I can't feel pleasure from the things I do.</b>
                    </p>
                    <input type="radio" id="Score0" name="num24" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num24" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num24" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num24" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>25. I am aware of the activity of the heart, even though I have not done any physical activity (e.g. feel my heart rate increase or decrease).</b>
                    </p>
                    <input type="radio" id="Score0" name="num25" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num25" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num25" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num25" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>26. I feel hopeless and sad.</b>
                    </p>
                    <input type="radio" id="Score0" name="num26" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num26" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num26" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num26" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>27. I feel that I am very irritable.</b>
                    </p>
                    <input type="radio" id="Score0" name="num27" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num27" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num27" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num27" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>28. I feel I almost panicked.</b>
                    </p>
                    <input type="radio" id="Score0" name="num28" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num28" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num28" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num28" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>29. I find it hard to calm down after something upsets me.</b>
                    </p>
                    <input type="radio" id="Score0" name="num29" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num29" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num29" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num29" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>30. I am afraid that I will be 'bogged down' by trivial tasks that I am not used to doing.</b>
                    </p>
                    <input type="radio" id="Score0" name="num30" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num30" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num30" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num30" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>31. I don't feel enthusiastic about anything.</b>
                    </p>
                    <input type="radio" id="Score0" name="num31" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num31" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num31" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num31" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>32. I find it hard to be patient in the face of distractions from what I'm doing.</b>
                    </p>
                    <input type="radio" id="Score0" name="num32" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num32" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num32" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num32" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>33. I'm feeling restless.</b>
                    </p>
                    <input type="radio" id="Score0" name="num33" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num33" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num33" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num33" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>34. I see no hope for my future.</b>
                    </p>
                    <input type="radio" id="Score0" name="num34" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num34" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num34" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num34" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>
                <article>
                    <p>
                        <b>35. I feel so scared.</b>
                    </p>
                    <input type="radio" id="Score0" name="num35" value="0" required>
                    <label for="Score0">0</label>&emsp;
                    <input type="radio" id="Score1" name="num35" value="1">
                    <label for="Score1">1</label>&emsp;
                    <input type="radio" id="Score2" name="num35" value="2">
                    <label for="Score2">2</label>&emsp;
                    <input type="radio" id="Score3" name="num35" value="3">
                    <label for="Score3">3</label>&emsp;
                </article>

                <!-- Submit button -->
                <button type="submit" class="btn btn-dark offset-4" style="width: 300px; margin-bottom: 10px; margin-top: 10px;">Submit</button>
        </form>
        </div>
    </section>
    <footer>
        <h5>copyright &copy; 2022 by Psychosocial</h5>
    </footer>

</body>

</html>
