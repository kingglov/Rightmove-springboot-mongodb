<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Spring</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
</head>
<body>
<h2 > Register</h2>

<Form action="insert">

    <input type="text"  name="user"> <br>
    <input type="text"  name="Email"> <br>
    <input type="text" name="pass">  <br>
    <input type="submit" value="Register">
</Form> <br>
<h4 id="errMsg" class="text-danger" align="center">${obj}</h4>
<br>
<h2 > Login </h2>
<%--<form action="login">

    <input type="text"  name="user"> <br>
    <input type="text" name="pass">  <br>
    <input type="submit" value="Login">

</form>--%>

</body>
</html>