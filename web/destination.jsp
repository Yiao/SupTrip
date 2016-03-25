<%--
  Created by IntelliJ IDEA.
  User: Khalil
  Date: 19/03/2016
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.supinfo.suptrip.entity.Trip" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>

<section id="more-pages" class="section wide-fat">
    <div class="container">
        <div class="row">
            <div class="contents col-md-12 col-lg-12">
                <div class="row box-row travel-essentials table-row">
                    <form action = "destination" method="post">
                        <h1>Destination :</h1>
                        <div class="col-md-11 col-lg-11 col-sm-12">
                            <SELECT id = "campus" name="campusDestination" size="1" placeholder="Campus"  class="form-control" style="">
                                <%
                                    boolean ok = false;

                                    for (final Campus  c : campusList)
                                    {
                                        out.print("<option>"+c.getName()+"</option>");
                                    }
                                %>
                            </SELECT>
                        </div>
                        <div class="col-md-1 col-lg-1 col-sm-12">
                            <button type="submit" class="button green bottom-right">Search</button>
                        </div >
                    </form>
                </div>
                <hr class="transparent"/>
                <hr class="transparent"/>
                <%
                    List<Trip> getCampusList = (List<Trip>) request.getAttribute("listTrips");
                    if (getCampusList!=null)
                    {
                        out.print(" <div class=\"row box-row travel-essentials table-row\">");

                        for (final Trip tripFind :getCampusList)
                        {
                            out.print(
                                    "<div class=\"col-sm-12\">" +
                                            "<div class=\"box-block\">"+
                                            "<div class=\"media\">"+
                                            "<a class=\"media-object pull-left\" href=\"#\"><img class=\"responsive-image\" src=\"images/content/featured-tour-2.png\" alt=\"\"/></a>"+
                                            "<div class=\"media-action pull-right\">"+
                                            "<span class=\"price\"><small>Per Seat</small></span>"+
                                            "</br>\n" + "<span class=\"price\"><small>"+tripFind.getPrice()+"€</small></span>" + "</br>"+
                                            "<a class=\"button mini\" href=\"/auth/AddToPanel?thisTrip=" + tripFind.getIdTrip()+ "\">Add to panel</a>"+
                                            "</div>"+
                                            "<div class=\"media-body\">"+
                                            "<h3 class=\"media-heading\">Going From :"+tripFind.getDepartureCampus() +"</h3>"+
                                            "<hr class=\"transparent\"/>"+
                                            "<h3 class=\"media-heading\">Destination :"+"<strong style=\"color:#f39c12;\">"+tripFind.getArrivalCampus() +"</strong>"+"</h3>"+
                                            "<p>Transport  : "+tripFind.getTransport()+"</P>"+
                                            "</div>"+
                                            "</div>"+
                                            "</div>"+
                                            "</div>"
                            );
                        }
                    }
                %>
            </div>
        </div>
    </div>
</section><!-- /#more-pages.section -->

<%@include file="footer.jsp"%>