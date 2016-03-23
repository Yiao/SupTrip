<%--
  Created by IntelliJ IDEA.
  User: sya
  Date: 3/20/2016
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp"%>
<section id="more-pages" class="section wide-fat">
    <hr class="transparent"/>
    <div class="container">
        <div class="login-wrapper">
            <hr class="transparent"/>
            <div class='content-holder'>

                <h1>Welcome</h1>
                <p>Please login to your account.</p>
                <form action ="login" method="post">
                    <div class=" field-row">
                        <input name = "account" placeholder="Account">
                        <input class="margin-top-10" name = "password"  type="password" placeholder="Password">
                        <hr class="transparent"/>

                        <a data-toggle="modal" data-target="#registerBox" href="#">Don't have account? click here to Register</a>

                        <hr class="transparent"/>
                        <hr class="transparent"/>
                    </div>
                    <button type="submit" class="button green btn-block">Login Now</button>
                </form>
            </div>

        </div>
    </div>
    <hr class="transparent"/><hr class="transparent"/>
</section><!-- /#more-pages.section -->
<%@ include file="footer.jsp"%>
