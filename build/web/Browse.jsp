
<%@page import="util.DbUtil"%>
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
        <link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" type='text/css' rel="stylesheet">
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
                                    <ul class="navbar-nav text-center">
                                        <li class="nav-item">
                                            <a class="nav-link" href="AdminHome.jsp">Home</a>
                                            <span class="sr-only">(current)</span>
                                        </li>

                                        <li class="nav-item">
                                            <a class="nav-link " href="User_Mgmt.jsp">User Mgmt</a>
                                            <span class="sr-only">(current)</span>
                                        </li>

                                        <li class="nav-item">
                                            <a class="nav-link " href="Searchpdf.jsp">Search PDF</a>
                                            <span class="sr-only">(current)</span>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="OfficeList">Upload PDF</a>
                                            <span class="sr-only">(current)</span>
                                        </li>
                                        <li class="nav-item active  mr-3">
                                            <a class="nav-link " href="Browse.jsp">Browse PDF
                                                <span class="sr-only">(current)</span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="Settings.jsp">Configuration</a>
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
                <div class="container-fluid">
                    <div class="banner-text-agile" style="margin-left: 5%">
                        <div class="row">
                            <div class="col-lg-7 col-7">
                                <!-- Carousel -->
                                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner">
                                        <%
                                            String query = request.getParameter("q");
                                            try {
                                                Connection cn = DbUtil.getConnection();
                                                PreparedStatement ps = cn.prepareStatement("select * from files1");
                                                //ps.setString(1,query);
                                                ResultSet rs = ps.executeQuery();
                                        %>  
                                        <div style="overflow-x: auto;">
                                            <table id="listofdoc" class="browse_tbl table-responsive-lg table-responsive-md" border="0" cellspacing="10" cellpadding="10" style="background-color: #c9333f;">
                                                <thead>
                                                    <tr>
                                                        <th rowspan="2">Employee Code</th>
                                                        <th rowspan="2">Filename</th>
                                                        <th rowspan="2">Document Type</th>
                                                        <th colspan="2" rowspan="1">Action</th>
                                                    </tr>
                                                    <tr>
                                                        <th>Delete</th>
                                                        <th>View</th>
                                                <a href="AdminDocsView.jsp"></a>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                    <%
                                                        while (rs.next()) {
                                                    %>
                                                    <tr style="background-color:#c9333f !important; ">
                                                        <td><%out.println(rs.getString("empcode"));%></td>
                                                        <td><%out.println(rs.getString("filename"));%></td>
                                                        <td><%out.println(rs.getString("office"));%></td>
                                                        <td><a href="DeleteFile?fileToDelete=<%=rs.getString("savedFileName")%>">Delete</a></td>
                                                        <td><a href="DownloadServlet?orgfilename=<%out.println(rs.getString("filename"));%>&filename=<%out.println(rs.getString("savedFileName"));%>" target="_blank">View</a></td>
                                                    </tr>
                                                    <%
                                                        }
                                                    %>
                                                </tbody>
                                            </table>
                                        </div>
                                        <%
                                            } catch (Exception e) {
                                                System.out.println(e);
                                            }%>

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
            <!-- about-->
            <section class="py-0 branches position-relative" id="explore">
                <div class="branches">
                    <div class="row py-lg-0 pt-sm-5">

                    </div>
                </div>
        </div>
    </section>
    <!-- //contact -->
    <!-- Footer -->
    <jsp:include page="Footer.jsp" ></jsp:include>

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


    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script  src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#listofdoc').dataTable({
                "responsive": false,
                "scrollX": false,
                "columnDefs": [
                    {"orderable": true, "targets": [0]}
                ]
            });
            $('label').css("color", '#fff');
        });
    </script>
</body>

</html>