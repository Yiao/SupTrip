<%@ page import="com.supinfo.suptrip.entity.Trip" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp"%>

<section id="more-pages" class="section wide-fat">
    <div class="container">

        <div class="row">
            <div class="contents col-md-12 col-lg-12">
                <div class="row box-row travel-essentials table-row">
                    <%--Todo Remplacer par for et chercher les voyages suivant un point depart / point darrivé--%>
                    <%-- a changer en jstl car l'affichage c moche comme ça  --%>.

                    <%-- <form action="AddToPanel" method="post">

                                 <%

                                             try {
                                                 @SuppressWarnings("unchecked")
                                                 List<Trip> myTripList = (List<Trip>)request.getAttribute("tripSearch");
                                                 //Pas de resultats !
                                                 if (myTripList.size()==0 || myTripList.isEmpty())
                                                 {
                                                     out.print(" <h1> Sorry :( ! no Results were Found For you're search try to enter correct campus names : Exemple Campus_Orleans </h1>");
                                                 }
                                                 else
                                                 {

                                                     for(final Trip myTripResult :myTripList)
                                                     {

                                                        // out.print("<form action=\"/AddToPanelServlet\" method=\"Post\">"+"<div class=\"col-sm-12\" >");
                                                         out.print("<div class=\"col-sm-12\">");
                                                         out.print("<p>" + myTripResult + "</p>");
                                                         //request.setAttribute("thisTrip", myTripResult);
                                                         out.print( " <div class=\"box-block\">"+" <div class=\"media\">"+"<a class=\"media-object pull-left\" href=\"#\"><img class=\"responsive-image\" src=\"images/content/featured-tour-1.png\" alt=\"\"/></a>");
                                                         out.print(" <div class=\"media-action pull-right\">" + "<span class=\"price\"><small>Per Seat</small> $" + myTripResult.getPrice() + "</span>" + "<button type=\"submit\"  class=\"button mini\" >Book now  </button>");
                                                         out.print("</div>" + "<p>Results to Trips Going From : " + myTripResult.getDepartureCampus() + "</p>" + "<div class=\"media-body\" >");
                                                         out.print("<div class=\"media-body\" >");
                                                         out.print(" <h3  class=\"media-heading\">destination :"+myTripResult.getArrivalCampus()+"</h3>");
                                                        // out.print("<p>You are going To  : "+myTripResult.getArrivalCampus()+"  using :"+myTripResult.getTransport() + "</p>"+"</form>"+" </div>"+" </div>"+" </div>"+" </div>");
                                                         out.print("<p>You are going To  : "+myTripResult.getArrivalCampus()+"  using :"+myTripResult.getTransport() + "</p>"+" </div>"+" </div>"+" </div>"+" </div>"+" </div>");
                                                     }

                                                 }
                                             }
                                             catch (Exception ex)
                                             {
                                                  System.out.print(ex.getMessage());
                                             }

                                 %>
                     </form>--%>
                    <%--  <form action="AddToPanel" method="post">--%>
                    <div class="container">
                        <h2>Trip results :</h2>
                        <p>results for your search : </p>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Coming from</th>
                                <th>Going To</th>
                                <th>Price</th>
                                <th>Trip</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                //recuperer l'utilisateur connecté
                               // HttpServletRequest httpRequest = (HttpServletRequest) request;
                             //   HttpSession sessionIn =  httpRequest.getSession();
                               // String myUserAccount = (String)sessionIn.getAttribute("account");
                                try {
                                    @SuppressWarnings("unchecked")
                                    List<Trip> myTripList = (List<Trip>)request.getAttribute("tripSearch");
                                    //Pas de resultats !
                                    if (myTripList.size()==0 || myTripList.isEmpty())
                                    {
                                        out.print(" <h1> Sorry :( ! no Results were Found For you're search try to enter correct campus names : Exemple Campus_Orleans </h1>");
                                    }
                                    else
                                    {
                                        for(final Trip myTripResult :myTripList)
                                        {
                                            //request.setAttribute("thisTrip",myTripResult.getDepartureCampus());
                                            // la recherche n'appartient  pas  deja au pannier de l'utilisateur
                                         //   if (!myTripResult.getUser().getAccount().equals(myUserAccount))
                                         //   {
                                                out.print("<tr><td>"+myTripResult.getDepartureCampus()+"</td>");
                                                out.print("<td>"+myTripResult.getArrivalCampus()+"</td>");
                                                out.print("<td>"+myTripResult.getPrice()+"</td>");
                                                //  out.print("<td >"+"<button type=\"submit\"  class=\"button mini\" >Book now "+"</button>"+"</td></tr>");
                                                out.println("<td>" + "<a href=\"/auth/AddToPanel?thisTrip=" + myTripResult.getIdTrip()+ "\" class=\"button mini\">book</a>"+"<td/>");

                                           // }



                                        }
                                    }
                                }
                                catch (Exception e )
                                {
                                    System.out.print(e.getMessage());
                                }

                            %>
                            <%--  <tr>
                                  <td><%%></td>
                                  <td><%%></td>
                                  <td><%%></td>
                              </tr> --%>
                            </tbody>
                        </table>
                    </div>
                    <%-- </form>--%>

                    <%--
                    <c:forEach items="${requestScope.tripSearch}"var="trip">
                            <div class="col-sm-12">
                                <div class="box-block">
                                    <div class="media">
                                        <a class="media-object pull-left" href="#"><img class="responsive-image" src="images/content/featured-tour-2.png" alt=""/></a>
                                        <div class="media-action pull-right">
                                            <span class="price"><small>Per Seat</small></span>
                                            <a class="button mini" href="#">Book now</a>
                                        </div>
                                        <div class="media-body">
                                            <h3 class="media-heading"><c:out value="${trip.departureCampus}"></c:out> </h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam volutpat euismod gravida. Vestibulum eget rhoncus lorem.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>



                    </c:forEach>
                    --%>

                </div>
            </div>
        </div>

</section><!-- /#more-pages.section -->

<%@include file="footer.jsp"%>