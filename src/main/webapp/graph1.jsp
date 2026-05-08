<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.crypto.*"%>
<%@page import="javax.crypto.spec.SecretKeySpec"%>
<%@page import="org.bouncycastle.util.encoders.Base64"%>

<%@ include file="connect.jsp"%>

<%
    List<String[]> chartData = new ArrayList<>();

    try {
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM symptoms");

        while (rs.next()) {
            String symptom = rs.getString(2);
            int count = 0;

            Statement st1 = connection.createStatement();
            ResultSet rs1 = st1.executeQuery("SELECT * FROM cloudlet_files");

            while (rs1.next()) {
                String encrypted = rs1.getString(15);

                String decrypted = new String(Base64.decode(encrypted.getBytes()));

                String[] parts = decrypted.split(",");

                for (String p : parts) {
                    if (p.equalsIgnoreCase(symptom)) {
                        count++;
                    }
                }
            }

            chartData.add(new String[]{symptom, String.valueOf(count)});
        }

    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<html>
<head>
<title>Account Type Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>

</head>
<body>

<div id="graph">Loading graph...</div>

<script>
    var myData = [];

    <% 
        for (int i = 0; i < chartData.size(); i++) {
            String symptom = chartData.get(i)[0];
            String count = chartData.get(i)[1];
    %>
        myData.push(["<%= symptom %>", <%= count %>]);
    <% } %>

    var myChart = new JSChart('graph', 'bar');
    myChart.setDataArray(myData);
    myChart.setBarColor('#FF3300');
    myChart.setBarOpacity(0.8);
    myChart.setBarBorderColor('#FFFFFF');
    myChart.setBarValues(true);
    myChart.setTitleColor('#FF0000');
    myChart.setAxisColor('#000000');
    myChart.setAxisValuesColor('#0000FF');
    myChart.setSize(800,400);
    myChart.draw();
</script>

</body>
</html>
