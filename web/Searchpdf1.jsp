
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
        <!-- datatables -->
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
                                            <a class="nav-link" href="AdminHome.jsp">Home
                                                <span class="sr-only">(current)</span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="User_Mgmt.jsp">User Mgmt</a>
                                            <span class="sr-only">(current)</span>
                                        </li>
                                        <li class="nav-item active mr-3">
                                            <a class="nav-link " href="Searchpdf.jsp">Search PDF</a>
                                            <span class="sr-only">(current)</span>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="OfficeList">Upload PDF</a>
                                            <span class="sr-only">(current)</span>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="Browse.jsp">Browse PDF</a>
                                            <span class="sr-only">(current)</span>
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
                <div class="container">
                    <div class="banner-text-agile">
                        <div class="row">
                            <div class="col-lg-8">
                                <!-- Carousel -->
                                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

                                    <div class="carousel-inner">
                                        <%
                                            String query = request.getParameter("q");

                                            try {
                                                Connection cn = DbUtil.getConnection();
                                                PreparedStatement ps = cn.prepareStatement("SELECT * FROM files1 WHERE filename LIKE '%" + query + "%'");
                                                // ps.setString(1,query);
                                                ResultSet rs = ps.executeQuery();
                                        %>         
                                        <table id="listofdoc" class="browse_tbl" border="0" cellspacing="10" cellpadding="10" width="100%">
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
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%while (rs.next()) {
                                                %>
                                                <tr style="background-color:#c9333f;">

                                                    <td><%out.println(rs.getString("empcode"));%></td>
                                                    <td><%out.println(rs.getString("filename"));%></td>
                                                    <td><%out.println(rs.getString("office"));%></td>
                                                    <td><a href="DeleteFile?fileToDelete=<%=rs.getString("savedFileName")%>">Delete</a></td>
                                                    <td><a href="DownloadServlet?orgfilename=<%out.println(rs.getString("filename"));%>&filename=<%out.println(rs.getString("savedFileName"));%>" target="_blank">View</a></td>

                                                </tr>
                                                <%
                                                    }
                                                %>

                                                <!--</tr>-->
                                            </tbody>
                                        </table>
                                        <%
                                            } catch (Exception e) {
                                                System.out.println(e);
                                            }%>

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
            <section class="py-0 branches position-relative" id="explore" style="background-color: #c9333f">
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
        <p> All rights reserved.<a href="http://.com"> </a>
        </p>
    </div>
</div>
<!-- /Footer -->
<!-- js-->
<!--<script src="js/jquery-2.2.3.min.js"></script>-->
<!-- js-->

<!-- Scrolling Nav JavaScript -->
<!--<script src="js/scrolling-nav.js"></script>-->
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
<!--<script src="js/responsiveslides.min.js"></script>-->
<!-- //Banner text  Responsiveslides -->
<!-- start-smooth-scrolling -->
<!--<script src="js/move-top.js"></script>-->
<!--<script src="js/easing.js"></script>-->
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->

<!--<script src="js/SmoothScroll.min.js"></script>-->
<!-- //smooth-scrolling-of-move-up -->

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.js"></script>

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script  src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script>
            $(document).ready(function () {
                $('#listofdoc').dataTable({
                    "columnDefs": [
                        {"orderable": false, "targets": [2, 3]}
                    ]
                });
                $('label').css("color", '#fff');
            });
</script>

<!-- //Bootstrap Core JavaScript -->
</body>

</html>