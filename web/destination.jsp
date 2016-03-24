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
                            <button type="submit" class="button green bottom-right">Sreach</button>
                        </div >
                            <%--   <script type="text/javascript">
                                 /* Voici la fonction javascript qui change la propriété "display"
                                  pour afficher ou non le div selon que ce soit "none" ou "block". */

                                 function AfficherMasquer()
                                 {
                                     <% ok = true;%>
                                   divInfo = document.getElementById('divacacher');

                                   if (divInfo.style.display == 'none')
                                     divInfo.style.display = 'block';
                                   else
                                     divInfo.style.display = 'none';

                                 }
                               </script>--%>
                    </form>
                </div>
                <hr class="transparent"/>
                <hr class="transparent"/>
                <%-- <div class="row" id="divacacher" style="display: none;">
                <div class="contents col-md-12 col-lg-12">
                < div class="row box-row travel-essentials table-row">
               <%--Todo Remplacer par for et chercher tous les voyages proposé par un campus choisit  --%>


                <%--   <%
                       if (ok == true)
                       {

                           try{
                               @SuppressWarnings("unchecked")
                               List<Trip> myTripList = (List<Trip>)request.getAttribute("allTripSearch");
                               for(final Trip myTripResult :myTripList)
                               {
                                   out.print("<div class=\"col-sm-12\" >" +
                                           " <div class=\"box-block\">"+" <div class=\"media\">"+"<a class=\"media-object pull-left\" href=\"#\"><img class=\"responsive-image\" src=\"images/content/featured-tour-1.png\" alt=\"\"/></a>"
                                           +" <div class=\"media-action pull-right\">"+"<span class=\"price\"><small>Per Seat</small> $"+myTripResult.getPrice()+"</span>"+"<a class=\"button mini\" href=\"#\">Book now</a>"+
                                           "</div>"+"<p>Results to Trips Going From : "+ myTripResult.getDepartureCampus() +"</p>"+"<div class=\"media-body\" >"+
                                           "<div class=\"media-body\" >"+"<form action=\"SearchTrip\" method=\"post\">"+" <h3 class=\"media-heading\">destination :"+myTripResult.getArrivalCampus()+"</h3>"+
                                           "<p>You are going To  : "+myTripResult.getArrivalCampus()+"  using :"+myTripResult.getTransport() + "</p>"+"</form>"+" </div>"+" </div>"+" </div>"+" </div>");

                               }

                           }catch (Exception e){out.print(e.getMessage());}


                       }


                   %> --%>

        <%-- a changer en jstl car l'affichage c moche comme ça  --%>
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
                                            "<a class=\"button mini\" href=\"/auth/AddToPanel?thisTrip=" + tripFind.getIdTrip()+ "\">Book now</a>"+
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
    </div>
</section><!-- /#more-pages.section -->

<%@include file="footer.jsp"%>