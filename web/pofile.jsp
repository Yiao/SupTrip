<%@ page import="com.supinfo.suptrip.entity.User" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<section id="more-pages" class="section wide-fat">
    <div class="container">

        <div class="row">
            <div class="contents col-sm-12 col-md-12">
                <h2>Pofile</h2>
<%--Todo recupere les infos--%>
                <%
                    User userinfo = (User) request.getAttribute("user");
                    String errorConfirmWord  = (String) request.getAttribute("errorConfirmWord");
                    String errorPassword  = (String) request.getAttribute("errorPassword");
                %>
                <div class="form-holder booking-form">
                    <form class="info-form" action="editePofil" method="post">
                        <div class="row field-row">
                            <div class="col-xs-12 col-sm-6">
                                <h3>Id Campus</h3>
                                <label><%out.print( userinfo.getAccount());%></label>
                            </div>
                        </div>
                        <hr class="transparent"/>
                        <div class="row field-row">
                            <div class="col-xs-12 col-sm-6">
                                <h3>First Name</h3>
                                <label><%out.print(userinfo.getFirstName());%></label>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <h3>New First Name</h3>
                                <input name="newFirstName" class="required" placeholder="New First Name"  type = "text">
                            </div>
                        </div>
                        <hr class="transparent"/>
                        <div class="row field-row">
                            <div class="col-xs-12 col-sm-6">
                                <h3>Last Name</h3>
                                <label><%out.print(userinfo.getLastName());%></label>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <h3>New Last Name</h3>
                                <input name="newLastName" class="required" placeholder="New Last Name" type = "text">
                            </div>
                        </div>
                        <hr class="transparent"/>
                        <div class="row field-row">
                            <div class="col-xs-12 col-sm-6">
                                <h3>Age</h3>
                                <label><%out.print(userinfo.getAge());%></label>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <h3>New Age</h3>
                                <input name="newAge" class="required" placeholder="New Age" type = "number">
                            </div>
                        </div>
                        <hr class="transparent"/>
                        <div class="row field-row">
                            <div class="col-xs-12 col-sm-6">
                                <h3>Email</h3>
                                <label><%out.print(userinfo.getEmail());%></label>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <h3>New Email</h3>
                                <input name="newEmail" class="required" placeholder="New Email"  type = "email">
                            </div>
                        </div>
                        <hr class="transparent"/>
                        <div class="row field-row">
                            <div class="col-xs-12 col-sm-6">
                                <h3>Campus</h3>
                                <label><%out.print(userinfo.getCampus().getName());%></label>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <h3>New Campus</h3>
                                <SELECT name="newCampus" size="1" placeholder="Campus" class="form-control" style="">
                                    <%
                                        for (final Campus  c : campusList)
                                        {
                                            out.print("<option>"+c.getName()+"</option>");
                                        }
                                    %>
                                </SELECT>
                            </div>
                        </div>
                        <hr class="transparent"/>
                        <div class="row field-row">
                            <div class="col-xs-12 col-sm-6">
                                <h3>Password</h3>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <h3>New Password ( At least 4 characters )</h3>
                                <input id="password" name="newPassword" class="required" placeholder="New Password" type ="password">
                                <h3>Confirm New Password</h3>
                                <input id="confirmPassword" name="newConfirmPassword" class="required" placeholder="Confirm New Password" onblur="verificationNewPassword()" type ="password">
                            </div>
                        </div>
                        <hr class="transparent"/>
                        <div class="row field-row">
                            <div class="col-xs-12 col-sm-6">
                                <h3>Confirm your changes with your password</h3>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <h3>Password</h3>
                                <input name="oldPassword" class="required" placeholder="Password please" type ="password">
                            </div>
                        </div>
                        <button type="submit" class="button green narrow bottom-right">Confirm</button>
                    </form>

                </div>

            </div>

        </div>

    </div>
</section><!-- /#more-pages.section -->
<%@include file="footer.jsp"%>
