<%@ page import="com.supinfo.suptrip.entity.Trip" %><%--
  Created by IntelliJ IDEA.
 User: Khalil
  Date: 19/03/2016
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp"%>
<section class="page-head-holder">

    <div class="container">

        <div class="col-xs-12 col-sm-6">

            <h2>My Travels</h2>

        </div>
    </div>
</section>

<section id="more-pages" class="section wide-fat">

    <div class="row">
        <div class="contents col-md-12 col-lg-12">
            <div class="row box-row travel-essentials table-row">
                <%--Todo Remplacer par for et chercher les informations dans la database--%>

                <%-- a changer en jstl car l'affichage c moche comme ça  --%>

                <%
                    @SuppressWarnings("unchecked")
                    List<Trip> myTripList = (List<Trip>)request.getAttribute("myListTrip");
                    for(final Trip myTripResult :myTripList)
                    {
                        out.print("<div class=\"col-sm-12\" >" +
                                " <div class=\"box-block\">"+" <div class=\"media\">"+"<a class=\"media-object pull-left\" href=\"#\"><img class=\"responsive-image\" src=\"/images/content/featured-tour-1.png\" alt=\"\"/></a>"
                                +" <div class=\"media-action pull-right\">"+"<span class=\"pr" +
                                "ice\"><small>Per Seat</small> $"+myTripResult.getPrice()+"<a href=\"/auth/AddToPanel?thisTrip=" + myTripResult.getIdTrip()+ "\" class=\"button mini\">book</a>"+
                                "</div>"+"<p>Departure: "+ myTripResult.getDepartureCampus() +"</p>"+"<div class=\"media-body\" >"+
                                "<div class=\"media-body\" >"+"<form action=\"SearchTrip\" method=\"post\">"+" <h3 class=\"media-heading\">destination :"+myTripResult.getArrivalCampus()+"</h3>"+
                               "*Transport :"+myTripResult.getTransport() + "</p>"+" </div>"+" </div>"+" </div>"+" </div>"+" </div>");
                    }
                %>
            </div>
        </div>
    </div>
</section><!-- /#more-pages.section -->
<%@ include file="footer.jsp"%>