<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE HTML>
<html lang="zxx">

    <head>
        <title>PDF Information</title>
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
                                    <li class="nav-item active mr-3">
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

                    <div class="banner-text-agile" style="padding:0;">
                        <div class="row">
                            <div class="col-lg-12">
                                <!-- Carousel -->
                                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <section class="contact py-lg-4 py-md-3 py-sm-3 py-3" id="home_section">

                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
                                                            <h3 style="color:white">Change User Password</h3>
                                                        </div>
                                                        <form action="changePass" method="post">
                                                            <div class ="col-md-3" style="float:left;" class="col-md-8 form-group contact-forms">
                                                                <label style="color:white">New Password</label>
                                                            </div>
                                                            <div style="float:left;" class="col-md-7 form-group contact-forms">
                                                                <input type="password" name="pass" class="form-control" placeholder="New Password"  >
                                                            </div>
                                                            <div style="float:left;" class="col-md-2 form-group contact-forms">
                                                                <input type="hidden" name="id" value="<%= request.getParameter("id")%>" />
                                                                <input type="submit" value="Change Password" class=" btn btn-success"/>

                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-12" style="padding: 0 3%;">
                                                        <div class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
                                                            <h3 style="color:white">User Details</h3>
                                                        </div>
                                                        <div class="agile-info-para">

                                                            <!-- Fetch User Details From DB -->
                                                            <%
                                                                String userId = request.getParameter("id");
                                                                try {
                                                                    Class.forName("com.mysql.jdbc.Driver");
                                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pdf", "root", "root");
                                                                    PreparedStatement ps = cn.prepareStatement("select * from user where id=" + userId);
                                                                    ResultSet rs = ps.executeQuery();

                                                                    if (rs.next()) {
                                                            %>

                                                            <!--contact-map -->
                                                            <form action="Userupdate" method="post">

                                                                <div class="row agile-wls-contact-mid">
                                                                    <div class="col-md-3 form-group contact-forms">
                                                                        <label style="color: white">Employee Code</label>
                                                                    </div>
                                                                    <div class="col-md-7 form-group contact-forms">
                                                                        <input type="text" value="<%= rs.getString("empcode")%>" name="empcode" class="form-control" placeholder="Employee Code" >
                                                                    </div>
                                                                    <div class="col-md-3 form-group contact-forms">
                                                                        <label style="color: white">Name</label>
                                                                    </div>
                                                                    <div class="col-md-7 form-group contact-forms">
                                                                        <input type="text" value="<%= rs.getString("name")%>" name="name" class="form-control" placeholder="Name" title="Username must not be blank and contain only letters and underscores at least 6 characters." >
                                                                    </div>
                                                                    <!--                                                                <div class="col-md-12 form-group contact-forms">
                                                                                                                                        <input type="text" name="designation" class="form-control" placeholder="Designation" >
                                                                                                                                    </div>-->

                                                                    <div class="col-md-3 form-group contact-forms">
                                                                        <label style="color: white">E-mail</label>
                                                                    </div>
                                                                    <div class="col-md-7 form-group contact-forms">
                                                                        <input type="email" value="<%= rs.getString("email")%>" name="email" class="form-control" placeholder="Email" required pattern="[a-z]+.[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
                                                                    </div>
                                                                    <div class="col-md-3 form-group contact-forms">
                                                                        <label style="color: white">User Name</label>
                                                                    </div>
                                                                    <div class="col-md-7 form-group contact-forms">
                                                                        <input type="text" value="<%= rs.getString("uname")%>" name="uname" class="form-control" placeholder="Username" required="" >
                                                                    </div>
                                                                    <div class="col-md-3 form-group contact-forms">
                                                                        <label style="color: white">Date of Birth</label>
                                                                    </div>
                                                                    <!--                                                                    <div class="col-md-7 form-group contact-forms">
                                                                                                                                            <input type="date" value="<%= rs.getString("dob")%>" name="dob" class="form-control" placeholder="Date Of Birth"  >
                                                                                                                                        </div>-->
                                                                    <div class="col-md-7 form-group contact-forms">
                                                                        <input  data-date-format="dd/mm/yyyy" type="date" value="<%= rs.getString("dob")%>" name="dob" class="form-control datepicker" placeholder="Date Of Birth"  >
                                                                    </div>
                                                                    <div class="col-md-3 form-group contact-forms">
                                                                        <label style="color: white">Mobile Number</label>
                                                                    </div>
                                                                    <div class="col-md-7 form-group contact-forms">
                                                                        <input type="text" value="<%= rs.getString("mob")%>" name="mob" class="form-control" placeholder="Mobile Number" >
                                                                    </div>
                                                                    <div class="col-md-3 form-group contact-forms">
                                                                        <label style="color: white">Gender</label>
                                                                    </div>
                                                                    <div class="col-md-7 form-group contact-forms">
                                                                        <!--<input type="text" value="<%= rs.getString("gender")%>" name="gender" class="form-control" placeholder="Gender"  >-->
                                                                        <select name="gender" class="form-control">
                                                                            <!--                                                                        <input type="radio" name="gender" value="Male" style="margin-left: 10px"> Male
                                                                                                                                                    <input type="radio" name="gender" value="Female" style="margin-left: 30px"> Female
                                                                                                                                                    <input type="radio" name="gender" value="Other" style="margin-left: 30px"> Other-->
                                                                            <option name ="gender" value="<%= rs.getString("gender")%>" selected hidden /> <%= rs.getString("gender")%>
                                                                            <option name="gender" value="Male"/> Male
                                                                            <option name="gender" value="Female"/> Female
                                                                            <option name="gender" value="Other"/> Other
                                                                        </select>
                                                                    </div>
                                                                    <div class="col-md-3 form-group contact-forms">
                                                                        <label style="color: white">Joining Date</label>
                                                                    </div>
                                                                    <div class="col-md-7 form-group contact-forms">
                                                                        <input  data-date-format="dd/mm/yyyy" type="date" value="<%= rs.getString("jdate")%>" name="jdate" class="form-control datepicker" placeholder="Joining Date"  >
                                                                    </div>
                                                                    <div class="col-md-3 form-group contact-forms">
                                                                        <label style="color: white">Ending Date</label>
                                                                    </div>
                                                                    <div class="col-md-7 form-group contact-forms">
                                                                        <input data-date-format="dd/mm/yyyy" type="date" value="<%= rs.getString("edate")%>" name="edate" class="form-control datepicker" placeholder="Ending Date"  >
                                                                    </div>
                                                                    <div class="col-md-3 form-group contact-forms">
                                                                        <label style="color: white">CPF Number</label>
                                                                    </div>
                                                                    <div class="col-md-7 form-group contact-forms">
                                                                        <input type="text" value="<%= rs.getString("cpfno")%>" name="cpfno" class="form-control" placeholder="CPF No."  >
                                                                    </div>                                            
                                                                    <div class="col-md-12 form-group contact-forms">
                                                                        <center><br>
                                                                            <input type="hidden" name="id" value="<%= request.getParameter("id")%>" />
                                                                            <input type="submit" value="UPDATE" class=" btn btn-success"/>
                                                                        </center>
                                                                    </div>
                                                                </div>
                                                            </form>

                                                            <%
                                                                    }
                                                                } catch (Exception e) {
                                                                    System.out.println(e);
                                                                }
                                                            %>
                                                        </div>
                                                    </div>
                                                </div>
                                            </section>
                                        </div>

                                        <!-- slider text -->
                                    </div>
                                </div>
                                <!-- Carousel -->
                            </div>
                            <div class="offset-lg-0"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //banner -->
            <!-- banner bottom -->

            <!-- //banner-bottom -->
            <section class="py-0 branches position-relative" id="explore">
                <div class="branches">
                    <div class="row py-lg-0 pt-sm-5">

                    </div>
                </div>
        </div>
    </section>
    <!-- //contact -->
    <!-- Footer -->
    <footer id="footer" class="py-0">
        <div class="container">

        </div>
    </footer>
    <div class="cpy-right text-center py-4">
        <p>All rights reserved.<a href="http://.com"> </a>
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
<!--<script>
                $(window).scroll(function () {
                    if ($(document).scrollTop() > 70) {
                        $('nav.pagescrollfix,nav.RWDpagescrollfix').addClass('shrink');
                    } else {
                        $('nav.pagescrollfix,nav.RWDpagescrollfix').removeClass('shrink');
                    }
                });
</script>-->
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