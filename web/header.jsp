<%@ page import="com.supinfo.suptrip.dao.CampusDAO" %>
<%@ page import="com.supinfo.suptrip.entity.Campus" %>
<%@ page import="java.util.List" %>
<%@ page import="com.supinfo.suptrip.dao.UserDAO" %>
<%--
  Created by IntelliJ IDEA.
  User: sya
  Date: 3/10/2016
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>

<html lang="en-US">




<!-- Mirrored from eazzy.me/html/traveline/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 10 Mar 2016 11:05:50 GMT -->
<head>



    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Traveline Booking</title>



    <link rel="stylesheet" href="/inc/bootstrap/css/bootstrap.min.css" />

    <link rel="stylesheet" href="/styles/themes/default/stylesheet.css" />



    <link rel="alternate stylesheet" type="text/css"  title="02" href="/styles/themes/style02/stylesheet02.css" />

    <link rel="alternate stylesheet" type="text/css"  title="03" href="/styles/themes/style03/stylesheet03.css" />

    <link rel="alternate stylesheet" type="text/css"  title="04" href="/styles/themes/style04/stylesheet04.css" />

    <link rel="alternate stylesheet" type="text/css"  title="05" href="/styles/themes/style05/stylesheet05.css" />

    <link rel="alternate stylesheet" type="text/css"  title="06" href="/styles/themes/style06/stylesheet06.css" />

    <link rel="alternate stylesheet" type="text/css"  title="07" href="/styles/themes/style07/stylesheet07.css" />

    <link rel="alternate stylesheet" type="text/css"  title="08" href="/styles/themes/style08/stylesheet08.css" />

    <link rel="alternate stylesheet" type="text/css"  title="09" href="/styles/themes/style09/stylesheet09.css" />

    <link rel="alternate stylesheet" type="text/css"  title="10" href="/styles/themes/style10/stylesheet10.css" />

    <link rel="alternate stylesheet" type="text/css"  title="11" href="/styles/themes/style11/stylesheet11.css" />

    <link rel="alternate stylesheet" type="text/css"  title="12" href="/styles/themes/style12/stylesheet12.css" />

    <link rel="alternate stylesheet" type="text/css"  title="13" href="/styles/themes/style13/stylesheet13.css" />

    <link rel="alternate stylesheet" type="text/css"  title="14" href="/styles/themes/style14/stylesheet14.css" />

    <link rel="alternate stylesheet" type="text/css"  title="15" href="/styles/themes/style15/stylesheet15.css" />

    <%--Ajouter par Yiao SUN CSS pour la partie enregistrer et login --%>
    <link rel="stylesheet" type="text/css"  href="/styles/myStyle.css" />
    <%--Ajouter par Yiao SUN JavaScript pour verifier les champ d'information--%>
    <script src = "/inc/js/MyJs.js" type = "text/javascript"></script>


    <script src="/inc/js/styleswitch.js" type="text/javascript">

        /***********************************************

         * Style Sheet Switcher v1.1- © Dynamic Drive DHTML code library (www.dynamicdrive.com)

         * This notice MUST stay intact for legal use

         * Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more

         ***********************************************/

    </script>





    <!-- Flexslider -->

    <link rel="stylesheet" href="/styles/flexslider.css" />



    <!-- fontawesome -->

    <link rel="stylesheet" href="/styles/fontawesome/font-awesome.min.css" />



    <!-- Datepicker UI -->

    <link rel="stylesheet" href="/styles/jquery-ui-1.10.3.custom.min.css" />



    <!-- MI slider -->

    <link rel="stylesheet" href="/styles/mi-slider.css" />



    <!-- Chozen UI -->

    <link rel="stylesheet" href="/styles/chosen.css" />



    <!-- Range Slider UI #2 -->

    <link rel="stylesheet" href="/styles/rangeslider-classic.css" />



    <!-- Elegant Font -->

    <link rel="stylesheet" href="/inc/elegant-font/style.css" />

    <!--[if lte IE 7]><script src="/inc/elegant-font/lte-ie7.js"></script><![endif]-->

</head>

<body>

<div id="preloader">

    <div id="status">&nbsp;</div>

    <noscript>JavaScript is off. Please enable to view full site.</noscript>

</div>

    <header id="header" class="wide-fat">
        <div class="container">
            <div class="col-xs-12 col-sm-2 no-margin">
                <div class="branding">
                    <h1 class="site-title">
                        <a href="/index.jsp"><img src="/images/site-logo.png" alt="Traveline" /> <span>Sup<span class="higlight">Trip</span></span></a>
                    </h1>
                </div>
            </div>

            <div class="col-xs-12 col-sm-10 no-margin">
                <div id="main-menu">
                    <nav class="navigation">

                        <ul class="hidden-xs hidden-sm hidden-md">



                        <%--Todo list all travel --%>
                            <li class="menu-item our-travel">

                            <a class="dropdown-toggle" href="/auth/myTravels"><i class="icon_globe_alt"></i> My Travel</a>

                            </li>

                            <%--Todo Lister destionation Test avec la page results--%>
                            <li class="menu-item destinations">

                                <a href="/destination"><i class="icon_pin"></i> Destinations</a>

                            </li>

                            <%
                                if (request instanceof HttpServletRequest)
                                {
                                    String account = "";
                                    HttpServletRequest httpRequest = (HttpServletRequest) request;
                                    HttpSession sessionIn =  httpRequest.getSession();
                                    account = (String) sessionIn.getAttribute("account");
                                    if (account!=""&&account!=null)
                                    {
                                        UserDAO userDAO =new UserDAO();

                                        out.println(
                                                "<li class=\"menu-item contact\">"
                                                        +"<a class=\"dropdown-toggle\" href=\"/auth/editePofil\"><i class=\"icon_contacts\"></i> HELLO " +userDAO.search(account).getFirstName()+"</a>\n" + "</li>");
                                    }
                                    else
                                    {
                                        out.println(
                                                "<li class=\"menu-item contact\">"
                                                        +"<a class=\"dropdown-toggle\"  href=\"/auth/editePofil\"><i class=\"icon_contacts\"></i> ACCOUNT  </a>\n" + "</li>");
                                    }
                                }
                            %>
                        </ul>



                        <select class="top-drop-menu nav visible-sm visible-xs visible-md">

                            <optgroup  label="Welcome">
                                <option value="#" style="visibility: hidden;">
                                    Welcome to our site
                                </option>
                            </optgroup>
                            <optgroup  label="My Travel">

                                <option value="/auth/myTravels">
                                    My Travel
                                </option>

                            </optgroup>

                            <optgroup label="Destinations">

                                <option value="/destination">
                                    Destinations
                                </option>

                            </optgroup>

                            <optgroup label="Account">

                                <option value="/auth/editePofil">
                                    Account
                                </option>

                            </optgroup>

                        </select>
                    </nav>
                </div><!-- /#main-menu -->
            </div>
        </div>



        <div class="toggle-menu-holder">



            <a class="toggle-menu" href="#"></a>

            <div class="menu-body closed">

                <ul>
                    <%
                        if (request instanceof HttpServletRequest)
                        {
                            String account = "";
                            HttpServletRequest httpRequest = (HttpServletRequest) request;
                            HttpSession sessionIn =  httpRequest.getSession();
                            account = (String) sessionIn.getAttribute("account");
                            if (account!=""&&account!=null)
                            {
                                out.println(
                                        "  <li><a  href=\"/logout\"><i class=\"fa fa-lock\"></i> logout</a></li>");
                            }
                            else
                            {
                                out.println(
                                        "<li><a data-toggle=\"modal\" data-target=\"#loginBox\" href=\"#\"><i class=\"fa fa-lock\"></i> login</a></li>"
                                );
                            }
                        }
                    %>

                    <%--TODO Register --%>
                    <li><a data-toggle="modal" data-target="#registerBox" href="#" ><i class="fa fa-user"></i> register</a></li>

                </ul>
            </div>
        </div>
    </header><!-- /#header -->

<div class="modal fade" id="loginBox" tabindex="-1" role="dialog"  aria-hidden="true">

    <div class="modal-dialog">

        <div class="modal-content">



            <div class="modal-body">

                <form action ="login" method="post">

                    <div class=" field-row">

                        <input name = "account" placeholder="Account">

                        <input name = "password"  type="password" placeholder="Password">

                        <a data-toggle="modal" data-target="#registerBox" href="#">Don't have account? click here to Register</a>

                    </div>

                    <button type="submit" class="button green">Login Now</button>

                </form>

            </div>

        </div>

    </div>

</div>

<div class="modal fade" id="registerBox" tabindex="-1" role="dialog"  aria-hidden="true">

    <div class="modal-dialog">

        <div class="modal-content">

            <div class="modal-body">

                <form action = "registerUser" method="post">

                    <div class=" field-row">

                        <input id = "newaccount" name="newaccount" type = "number" onblur="verificationAccount()" placeholder="Campus ID">


                        <input id = "newfirstname" name="newfirstname"  placeholder="First Name">

                        <input id ="newlastname" name ="newlastname" placeholder="Last Name">

                        <input id ="newage" name ="newage" type = "number" placeholder="Age">

                        <input id = "newemail" name ="newemail"  placeholder="Email" type = "email">

                        <input id = "newpassword" name = "newpassword" type="password" onblur="verificationPassword()" placeholder="Password">

                        <SELECT id = "campus" name="campus" size="1" placeholder="Campus"  class="form-control" style="">
                            <%
                                CampusDAO myCampusDao = new CampusDAO();

                                String thisCampus ="";
                                List<Campus> campusList = myCampusDao.read();
                                for (final Campus  c : campusList)
                                {
                                    out.print("<option>"+c.getName()+"</option>");
                                }
                            %>
                        </SELECT>

                    </div>

                    <button type="submit" class="button green">Register Now</button>
                </form>

            </div>

        </div>

    </div>

</div>
