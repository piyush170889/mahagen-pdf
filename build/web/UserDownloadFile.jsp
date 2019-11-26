
<%@page import="util.DbUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE HTML>
<html lang="zxx">

    <head>
        <title>Secure Image Based Password</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <meta name="keywords" content="Precedence Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>
        <style>
            p {
                text-align: justify;
                font: 1em Verdana, Geneva, Arial, Helvetica, sans-serif;
                line-height: 1.4em;
            }
        </style> 

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- Custom CSS -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <!-- font-awesome icons -->
        <link href="css/fontawesome-all.min.css" rel="stylesheet">
        <!-- //Custom Theme files -->
        <!--webfonts-->
        <link href="//fonts.googleapis.com/css?family=Ubuntu:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
        <!--//webfonts-->
    </head>

    <body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
        <div id="home">
            <!-- header -->
            <section class="main-header">
                <div class="header-top text-md-left text-center">
                    <div class="container">
                        <div class="d-md-flex justify-content-between">
                            <p class="text-capitalize">if you have any question? Call Us +917030945901</p>
                            <ul class="social-iconsv2 agileinfo mt-md-0 mt-2">
                                <li class="ml-lg-5">
                                    <a href="https://www.facebook.com/">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://twitter.com/">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://plus.google.com/discover">
                                        <i class="fab fa-google-plus-g"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.linkedin.com/feed/">
                                        <i class="fab fa-linkedin-in"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /header-top-->
                <header class="main-header">
                    <nav class="navbar second navbar-expand-lg navbar-light bg-light pagescrollfix">
                        <div class="container">
                            <h1>
                                <a class="navbar-brand" href="index.jsp">
                                    <img src="images/mahagenco.jpeg" alt="MahaGenco" width="170" height="70" /> <span style="font-size:12px;text-align:center">CSTPS HR E-Service Book</span>
                                </a>
                            </h1>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-toggle" aria-controls="navbarNavAltMarkup1"
                                    aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse navbar-toggle" id="navbarNavAltMarkup1">
                                <div class="navbar-nav secondfix ml-lg-auto">
                                    <ul class="navbar-nav text-center">
                                        <li class="nav-item active  mr-3">
                                            <a class="nav-link" href="UserHome.jsp">Home
                                                <span class="sr-only">(current)</span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="UserUploadFile.jsp">Upload File</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="UseUploadrSecureImage.jsp">Upload Secure Image And Download File</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="UserUpdateInfo.jsp">Update Information </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="Logout1">Logout</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </nav>
                </header>
            </section>
            <!-- //header -->
            <!-- banner -->
            <div class="banner">
                <div class="container">
                    <div class="banner-text-agile">
                        <div class="row">
                            <div class="col-lg-8">
                                <!-- Carousel -->
                                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                  
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <h3 class="b-w3ltxt text-capitalize mt-md-4">
                                                <span>Secure Image Based</span>Password</h3>
                                            <p class="mt-2">Text based passwords are not secure enough for such applications.</p>
                                        </div>
                                        <!-- slider text -->
                                        <div class="carousel-item">
                                            <h3 class="b-w3ltxt text-capitalize mt-md-4">
                                                <span>Secure Image Based</span>Password</h3>
                                            <p class="mt-2">User authentication can be improved by using both text passwords and structured images.</p>
                                        </div>
                                        <!-- slider text -->
                                        <div class="carousel-item text-white">
                                            <h3 class="b-w3ltxt  text-capitalize mt-md-4">
                                                <span>Secure Image Based</span>Password</h3>
                                            <p class="mt-2">It proposed Passwords which could be composed of several points anywhere on an Image.</p>
                                        </div>
                                        <!-- slider text -->
                                    </div>
                                </div>
                                <!-- Carousel -->
                            </div>
                            <div class="offset-lg-4"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //banner -->
            <!-- banner bottom -->

            <!-- //banner-bottom -->
            <!-- about-->
            <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
                <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
                    <div class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
                        <h3>Display User Information</h3>
                    </div>
                    <div class="agile-info-para">
                        <!--contact-map -->

                        <%

                            String email = (String) session.getAttribute("email");
                            Connection cn = DbUtil.getConnection();
                           // PreparedStatement ps1 = cn.prepareStatement("select * from file where email=?");
                            // ps1.setString(1, email);
                            PreparedStatement ps1 = cn.prepareStatement("select * from file");
                            // ps1.setString(1, email);
                            ResultSet rs1 = ps1.executeQuery();

                        %>

                        <center>
                            <table border="3" width="30%" cellpadding="3" class="table" style="color: black">
                                <thead border="1">
                                    <tr>
                                        <TH>Email Id</TH>
                                        <TH>File Name</TH>
                                        <TH>Extension</TH>
                                        <TH>Action</TH>
                                    </tr>
                                </thead>
                                <% while (rs1.next()) {%>
                                <tbody>
                                    <tr>
                                        <TD> <%= rs1.getString("email")%> </TD>
                                        <TD> <%= rs1.getString("filename")%> </TD>
                                        <TD> <%= rs1.getString("ext")%> </TD>
                                        <TD>
                                            <form name="login"  action="UserFileDownOtp" method="Post" >
                                                <input type="hidden" name="id" value="<%= rs1.getString("id")%>">
                                                <input type="submit" value="DOWNLOAD" class=" btn btn-primary">
                                            </form>
                                        </TD>
                                    </tr>
                                </tbody>
                                <%}%>
                            </table>
                        </center>
                    </div>
                </div>
            </section>
            <!-- //about -->
            <!-- services -->

            <!-- //testimonials -->
            <!-- branches -->
            <section class="py-5 branches position-relative" id="explore">
                <div class="branches">
                    <div class="row py-lg-5 pt-sm-5">

                    </div>
                </div>
        </div>
    </section>
    <!-- //contact top -->
    <!-- blog -->

    <!-- //blog -->
    <!-- contact -->

    <!-- //contact -->
    <!-- Footer -->
    <footer id="footer" class="py-5">
        <div class="container">

        </div>
    </footer>
    <div class="cpy-right text-center py-4">
        <p>© 2018 ME Project. All rights reserved.<a href="http://.com"> </a>
        </p>
    </div>
</div>
<!-- /Footer -->
<!-- js-->
<script src="js/jquery-2.2.3.min.js"></script>
<!-- js-->
<!-- Scrolling Nav JavaScript -->
<script src="js/scrolling-nav.js"></script>
<!-- //fixed-scroll-nav-js -->
<script>
            $(window).scroll(function () {
                if ($(document).scrollTop() > 70) {
                    $('nav.pagescrollfix,nav.RWDpagescrollfix').addClass('shrink');
                } else {
                    $('nav.pagescrollfix,nav.RWDpagescrollfix').removeClass('shrink');
                }
            });
</script>
<!-- Banner text Responsiveslides -->
<script src="js/responsiveslides.min.js"></script>
<script>
            // You can also use"$(window).load(function() {"
            $(function () {
                // Slideshow 4
                $("#slider3").responsiveSlides({
                    auto: true,
                    pager: true,
                    nav: false,
                    speed: 500,
                    namespace: "callbacks",
                    before: function () {
                        $('.events').append("<li>before event fired.</li>");
                    },
                    after: function () {
                        $('.events').append("<li>after event fired.</li>");
                    }
                });

            });
</script>
<!-- //Banner text  Responsiveslides -->
<!-- start-smooth-scrolling -->
<script src="js/move-top.js"></script>
<script src="js/easing.js"></script>
<script>
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();

                    $('html,body').animate({
                        scrollTop: $(this.hash).offset().top
                    }, 1000);
                });
            });
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
<script>
    $(document).ready(function () {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear' 
         };
         */

        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>
<script src="js/SmoothScroll.min.js"></script>
<!-- //smooth-scrolling-of-move-up -->
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.js">
</script>
<!-- //Bootstrap Core JavaScript -->
</body>

</html>