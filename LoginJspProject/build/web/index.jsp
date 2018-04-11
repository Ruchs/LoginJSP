
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN JSP Page</title>
    </head>
    <body>
        <form method="POST" action="ProfileJSP.jsp">
                Enter UserName: <input type="text" name="txtUser" value="" /><br><br>
                Enter Password: <input type="password" name="txtPass" value="" /><br><br>
                <input type="submit" value="Log in" name="submit" />
                <input type="reset" value="Cancle" name="reset" />
            </form>
    </body>
</html>
