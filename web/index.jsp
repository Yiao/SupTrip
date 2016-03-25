<%@ page import="com.supinfo.suptrip.dao.CreateMyTrips" %>
<%--
  Created by IntelliJ IDEA.
  User: sya
  Date: 3/10/2016
  Time: 11:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp"%>


<section id="featured" class="wide-fat">

<%
  CreateMyTrips.insertMyCampus();
%>

  <div class="featured-inner">

    <div class="slider">

      <div id="top-slider" class="flexslider">

        <ul class="slides">

          <li>

            <img src="images/content/feature-img.jpg" alt="Featured Image" />

          </li>

          <li>

            <img src="images/content/Paris.jpg" alt="Featured Image" />

          </li>

          <li>

            <img src="images/content/Beijing.jpg" alt="Featured Image" />

          </li>

          <li>

            <img src="images/content/NewYoc.jpg" alt="Featured Image" />

          </li>

        </ul><!-- /.slides -->

        <div class="opener-area">



          <a  href="#" class="open-btn open-close-btn"><i class="fa fa-chevron-circle-right"></i></a>

          <ul class="social-icons vertical">

            <li><a href="#" class="fa fa-facebook"></a></li>

            <li><a href="#" class="fa fa-twitter"></a></li>

            <li><a href="#" class="fa fa-rss"></a></li>

            <li><a href="#" class="fa fa-vimeo-square"></a></li>

          </ul>

        </div>

        <div class="featured-overlay">

          <a id="close-form" href="#" class="button close open-close-btn"><i class="icon_close_alt2"></i></a>

          <div class="featured-overlay-inner">

<%-- send info tosearchservlet !!!!!!!!!!!!!!!!!!!!! --%>
            <form class="location-search"  method="post"  action="SearchTrip">
              <div class="search-field">

                <div class="destination-field">
                  <%--depart--%>
                  <label for="departure">Choose Your departure</label><br />
                  <input id="departure" name="departure" type="text" />
                </div>
                    <%--destination--%>
              <div class="destination-field">
                  <label for="destination" >Choose Your Destination</label><br />
                  <input id="destination" name="destination" type="text" />
              </div>


                </div>


              <div class="search-field">

               <a href="results.jsp"><input type="submit" class="button wide-fat" value="Search" /></a>

              </div><!-- /.search-field -->

              </div>
            </form><!-- /form.location-search -->


            <div class="featured-teaser-text">

              <h1>Enjoy</h1>

              <h2>Wonderful Feelings</h2>

              <p>From east to west in a click</p>
            </div><!-- /.featured-teaser-text -->

            <div class="social-networks">
              <ul>
                <li class="facebook"><a href="#"><i class="social_facebook"></i></a></li>

                <li class="twitter"><a href="#"><i class="social_twitter"></i></a></li>

                <li class="vimeo"><a href="#"><i class="social_vimeo"></i></a></li>

                <li class="rss"><a href="#"><i class="social_rss"></i></a></li>
              </ul>
            </div><!-- /.social-networks -->

          </div><!-- /.featured-overlay-inner -->

        </div><!-- /.featured-overlay -->

      </div>

    </div><!-- /.slider -->

  </div><!-- /.featured-inner -->

</section><!-- /#featured -->

<%--secsstion about us--%>
<section id="about-us" class="homepage section wide-fat">

  <div class="container">

    <article id="post-1" class="about-us section-intro">

      <h1 class="page-title">About <span class="higlight">Us</span></h1>

      <div class="entry-content">

        <p>This is our super team</p>

      </div>

    </article><!-- /#post-1.about-us -->

    <div class="about-details grid col-3">

      <div class="row">

        <div class="col-md-3 col-sm-3 about-detail-1 Eric">

          <article>

            <h2>Eric BARRUEL</h2>

            <p></p>

          </article>

        </div><!-- /.about-detail-1 -->


        <div class="col-md-3 col-sm-3 about-detail-2 Yiao">

          <article>

            <h2>Yiao SUN</h2>

            <p></p>

          </article>

        </div><!-- /.about-detail-2 -->

        <div class="col-md-3 col-sm-3 about-detail-3 Khalil">

          <article>

            <h2>Khalil ADALA</h2>

            <p></p>

          </article>

        </div><!-- /.about-detail-3 -->

        <div class="col-md-3 col-sm-3 about-detail-2 Gael">

          <article>

            <h2>Gael HIPEAU</h2>

            <p></p>

          </article>

        </div><!-- /.about-detail-2 -->

      </div><!-- /.row -->
    </div>
  </div>
</section><!-- /#about-us.section -->

<%@ include file="footer.jsp"%>