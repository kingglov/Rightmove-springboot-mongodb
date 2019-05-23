<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
        integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
        integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>Rightmove - India's number one website for properties for sale and to rent</title>
    <link rel="icon" href="/img/download.png" type="image/png">
</head>

<body>
    <!--Navbar-->

    <nav class="navbar navbar-expand-sm navbar-light">
        <div class="container-fluid">
            <a class="navbar-brand ml-5" href="index.html"><img src="img/Capture.PNG"></a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse " id="navbarNav">
                <ul class="navbar-nav navbar-right ">
                    <li class="nav-item dropdown">
                        <a class="nav-link " data-toggle="dropdown" href="">Buy</a>
                        <ul>
                            <div class="dropdown-menu">
                                <li>
                                    <a href="#" class="dropdown-item">link1</a>
                                </li>
                                <li>
                                    <a href="#" class="dropdown-item">link2</a>
                                </li>
                                <li>
                                    <a href="#" class="dropdown-item">link3</a>
                                </li>
                            </div>
                        </ul>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Rent</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" id="agent">Find Agent</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" id="price">House Prices</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Commercial</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Inspire</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Overseas</a>
                    </li>
                    <li class="nav-item">
                 <form  action="login" method="POST">
                                    <div id="userl" class="form-group">
                        <input type="text" class="form-control mr-1 mt-1 nav-link" placeholder="User name" name="user"
                            id="username">
                            <div id="namel_error"></div>
                            </div>
                    </li>
                    <li class="nav-item">
                            <div id="passl" class="form-group">
                        <input type="password" class="form-control mr-1 mt-1 nav-link" placeholder="Password" name="pass" id="pwd">
                            <div id="passl_error"></div>
                            </div>
                    </li>
                    <li class="nav-item">
                        <button  class="btn mr-1 mt-1 nav-link btn btn-outline-secondary"  type="submit"   >Login</button>
                    </li>
                </form>
                    <li class="nav-item">
                        <button class="btn mr-1 mt-1 nav-link btn-secondary" data-target="#signin"
                            data-toggle="modal" id="btn">Sign In</button>
                    </li>
                </ul>
                <!-- LOGIN MODAL -->
                <div class="modal" id="signin">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="text">Login</h5>
                                <button class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <!--------- Regerster ----------->
                            <div class="modal-body">
                                <form onsubmit="return Validate()" name="vform" action="insert" method="POST">
                                    <div id="user" class="form-group">
                                        <label for="username" id="text">Username</label>
                                        <input type="text" placeholder="Username" name="user" class="form-control">
                                        <div id="name_error"></div>
                                    </div>
                                    
                                    <div id="pass" class="form-group">
                                        <label for="password" id="text">Password</label>
                                        <input type="password" placeholder="Password" name="pass" class="form-control">
                                    </div>
                                    <div id="cpass" class="form-group">
                                        <label for="password1" id="text">Confirm Password</label>
                                        <input type="password" placeholder="Password" name="cpass" class="form-control" id="password1">
                                         <div id="password_error"></div>
                                    </div>
                                   
                                   
                            </div>
                            <div class="modal-footer">
                                <button  class="btn btn-primary" type="submit"  >Submit</button>
                            </div>
                        </form>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
        </div>
    </nav>


    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
        crossorigin="anonymous"></script>
    <script>
        $('body').on('activate', function (e) {
            var $item = $(e.target);
            $('#menu-arrow').css('left', $item.offset().left + $item.width() / 2 - 10 - $('.navbar').offset().left);
        });
    </script>



<!-------Signup form validation----------------------->

    <script >
    // SELECTING ALL TEXT ELEMENTS
    var username = document.forms['vform']['user'];
    var password = document.forms['vform']['pass'];
    var password_confirm = document.forms['vform']['cpass'];

    // SELECTING ALL ERROR DISPLAY ELEMENTS
    var name_error = document.getElementById('name_error');
    var password_error = document.getElementById('password_error');

    // SETTING ALL EVENT LISTENERS
username.addEventListener('blur', nameVerify, true);
password.addEventListener('blur', passwordVerify, true);

function Validate() {
// validate username
if (username.value == "") {
  username.style.border = "1px solid red";
  document.getElementById('user').style.color = "red";
  name_error.textContent = "Username is required";
  username.focus();
  return false;
}
// validate username length
if (username.value.length < 3) {
  username.style.border = "1px solid red";
  document.getElementById('user').style.color = "red";
  name_error.textContent = "Username must be at least 3 characters";
  username.focus();
  return false;
}
// validate password
if (password.value == "") {
password.style.border = "1px solid red";
document.getElementById('pass').style.color = "red";
password_confirm.style.border = "1px solid red";
password_error.textContent = "Password is required";
password.focus();
return false;
}
// check if the two passwords match
if (password.value != password_confirm.value) {
password.style.border = "1px solid red";
document.getElementById('cpass').style.color = "red";
password_confirm.style.border = "1px solid red";
password_error.innerHTML = "The two passwords do not match";
return false;
}
}
// event handler functions
function nameVerify() {
if (username.value != "") {
username.style.border = "1px solid #5e6e66";
document.getElementById('user').style.color = "#5e6e66";
name_error.innerHTML = "";
return true;
}
}
function passwordVerify() {
if (password.value != "") {
    password.style.border = "1px solid #5e6e66";
    document.getElementById('cpass').style.color = "#5e6e66";
    document.getElementById('password_div').style.color = "#5e6e66";
    password_error.innerHTML = "";
    return true;
}
if (password.value === password_confirm.value) {
    password.style.border = "1px solid #5e6e66";
    document.getElementById('cpass').style.color = "#5e6e66";
    password_error.innerHTML = "";
    return true;
}
}
</script>

<br>

<div><h5 id="errMsg" class="text-danger" align="center"  />${obj}</div>

</body>

</html>