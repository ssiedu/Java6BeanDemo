<%-- Integrating Bean Using Tags --%>
<%-- jsp:setProperty with property="" value="" --%>
<%
    int i=Integer.parseInt(request.getParameter("t1"));
    int a=Integer.parseInt(request.getParameter("t2"));
%>

<jsp:useBean id="bean" class="mypkg.TaxBean"/>
<jsp:setProperty name="bean" property="income" value="<%=i%>"/>
<jsp:setProperty name="bean" property="age" value="<%=a%>"/>

<html>
    <body>
        <h3>Tax-Details</h3>
        <table border="2" width="2" cellspacing="2" cellpadding="2">
            <tbody>
                <tr>
                    <td>Income</td>
                    <td><jsp:getProperty name="bean" property="income"/></td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td><jsp:getProperty name="bean" property="age"/></td>
                </tr>
                <tr>
                    <td>Tax</td>
                    <td><jsp:getProperty name="bean" property="tax"/></td>
                </tr>
            </tbody>
        </table>
        <a href="details.jsp">Calculate-Again</a>
    </body>
</html>
