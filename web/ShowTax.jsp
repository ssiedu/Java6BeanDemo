<%-- Integrating Bean Using Tags --%>
<%-- <jsp:setProperty property=""/> --%>
<jsp:useBean id="bean" class="mypkg.TaxBean"/>
<jsp:setProperty name="bean" property="*" />
<html>
    <body bgcolor="pink">
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
