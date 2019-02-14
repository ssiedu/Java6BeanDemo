<%-- Integrating Bean Using Java Code --%>

<%
    int income=Integer.parseInt(request.getParameter("t1"));
    int age=Integer.parseInt(request.getParameter("t2"));
    mypkg.TaxBean bean=new mypkg.TaxBean();
    bean.setIncome(income);
    bean.setAge(age);
%>
<html>
    <body>
        <h3>Tax-Details</h3>
        <table border="2" width="2" cellspacing="2" cellpadding="2">
            <tbody>
                <tr>
                    <td>Income</td>
                    <td><%=bean.getIncome()%></td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td><%=bean.getAge()%></td>
                </tr>
                <tr>
                    <td>Tax</td>
                    <td><%=bean.getTax()%></td>
                </tr>
            </tbody>
        </table>
        <a href="details.jsp">Calculate-Again</a>
    </body>
</html>
