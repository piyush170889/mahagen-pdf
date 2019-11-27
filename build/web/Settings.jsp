<%@page import="util.PDFConstants"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE HTML>
<html lang="zxx">

    <head>
        <title>Admin Settings</title>
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
                            <!--                            <p class="text-capitalize">if you have any question? Call Us +917030945901</p>
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
                                                        </ul>-->
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
                                    <li class="nav-item">
                                        <a class="nav-link" href="AdminHome.jsp">Home
                                            <span class="sr-only">(current)</span>
                                        </a>
                                    </li>
                                    <li class="nav-item ">
                                        <a class="nav-link " href="User_Mgmt.jsp">User Mgmt</a>
                                        <span class="sr-only">(current)</span>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link " href="Searchpdf.jsp">Search PDF</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link " href="Upload.jsp">Upload PDF</a>
                                    </li>
                                    <!--                                        <li class="nav-item">
                                                                                <a class="nav-link " href="Upload.jsp">Upload PDF</a>
                                                                            </li>-->
                                    <li class="nav-item">
                                        <a class="nav-link " href="Browse.jsp">Browse PDF</a>
                                    </li>
                                    <li class="nav-item active mr-3">
                                        <a class="nav-link " href="Settings.jsp">Settings</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link " href="Logout1">Logout</a>
                                    </li>
                                </div>
                            </div>
                        </div>
                    </nav>
                </header>
            </section>
            <script>
                if (window.location.href.includes("div-panel"))
                {
                    $(document).scrollTop(750);
                }
            </script>
            <!-- //header -->
            <!-- banner -->
            <div style="background-color: #c9333f;">
                <!--<div class="banner">-->
                <!--<div class="container">-->                
                <div>

                    <div class="banner-text-agile" style="padding:0;min-height: 400px;">
                        <div class="row">
                            <div class="col-lg-12">
                                <!-- Carousel -->
                                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <section class="contact py-lg-4 py-md-3 py-sm-3 py-3" id="home_section">
                                                <div class="row">
                                                    <div class="col-md-6 offset-4" style="border-style: solid; border-color: white; border-width: 3px">
                                                        <div class="col-md-12" class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
                                                            <h3 style="color:white; margin: auto; text-align: center;">Change Admin Password</h3>
                                                        </div>
                                                        <form action="ChangeAdminPassword" method="post">
                                                            <div class="row" style="padding-top:2%;">
                                                                <div class="col-md-4">
                                                                    <label style="color: white" >Old Password</label>
                                                                </div>
                                                                <div class="col-md-8">
                                                                    <input type="password" name="oldpass" placeholder="Old Password" />
                                                                </div>
                                                            </div>

                                                            <div class="row" style="padding-top:2%;">
                                                                <div class="col-md-4">
                                                                    <label style="color: white">New Password</label>
                                                                </div>
                                                                <div class="col-md-8">
                                                                    <input type="password" name="newpass" placeholder="New Password"></p>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-6 offset-3 form-group contact-forms" style="padding-top:2%;">
                                                                    <input type="hidden" name="id" value="1" />
                                                                    <center>
                                                                        <input type="submit" value="Change Password" class=" btn btn-success"/>
                                                                    </center>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </section>
                                            <!--                                            <section>
                                                                                            <div>
                                                                                                <h3 style="color:white; margin-top: 40px" align="center">General Settings</h3>
                                                                                            </div>
                                                                                            <form action="SetFileLocation" method="post">
                                                                                                <div class="row" style="margin-top: 20px; margin-bottom: 20px">
                                                                                                    <div class="col-md-6 form-group contact-forms">
                                                                                                        <p style="color:white"> Current Location:</p>
                                                                                                        <p style="color:white;"> <%= PDFConstants.getFILE_REPOSITORY()%> </p> 
                                                                                                    </div>
                                                                                                    <div class="col-md-6 form-group contact-forms">
                                                                                                        <p style="color:white">New Location:</p>
                                                                                                        <p><input type="text" value="" name="location" placeholder="Copy the Location from address bar" style="width:100%"/></p>                                             
                                                                                                        <p style="padding-top: 10px"><input type="submit" value="Set" class=" btn btn-success"/></p>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </form>
                                                                                        </section>-->
                                        </div>

                                        <!-- slider text -->
                                    </div>
                                </div>
                                <!-- Carousel -->
                            </div>
                            <div class="offset-lg-2"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //banner -->

        </div>
        <!-- //contact -->
        <!-- Footer -->
        <section class="py-2 branches position-relative" id="explore">
            <div class="branches">
                <div class="row py-lg-5 pt-sm-5">

                </div>
            </div>
        </div>
    </section> 
    <jsp:include page="Footer.jsp" ></jsp:include>
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