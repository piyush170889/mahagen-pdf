
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%!
    public int[] getTotalUserCount() {

        int[] totalUserCountAndUploadFileCount = new int[2];
        PreparedStatement ps = null;
        ResultSet rs = null;
        PreparedStatement ps1 = null;
        ResultSet rs1 = null;
        Connection cn = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pdf", "root", "root");

            ps = cn.prepareStatement("select count(*) AS user_count from user");
            rs = ps.executeQuery();
            if (rs.next()) {
                totalUserCountAndUploadFileCount[0] = rs.getInt("user_count");
            }

            ps1 = cn.prepareStatement("select count(*) AS files_count from files1");
            rs1 = ps1.executeQuery();
            if (rs1.next()) {
                totalUserCountAndUploadFileCount[1] = rs1.getInt("files_count");
            }
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            try {
                if (null != rs) {
                    rs.close();
                }
                if (null != ps) {
                    ps.close();
                }
                if (null != rs1) {
                    rs1.close();
                }
                if (null != ps1) {
                    ps1.close();
                }
                if (null != cn) {
                    cn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return totalUserCountAndUploadFileCount;
    }
%>

<!--
<footer id="footer" class="py-5">
    <div class="container">

    </div>
</footer>
-->
<div class="row cpy-right py-4">
    <div class="col-md-4">
        <p class="text-center"> <strong>All rights reserved.</strong></p>
    </div>
    <div class="col-md-4">
        <p class="text-center"><strong>No. of Employees: <%= getTotalUserCount()[0]%> </strong></p>
    </div>
    <div class="col-md-4">
        <p class="text-center"><strong>No. of Documents: <%= getTotalUserCount()[1]%> </strong></p>
    </div>
</div>

