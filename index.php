<?php include "config/config.php"; ?>
<?php
if((isset($_POST['submit'])))
{
    $fullname = $_POST['fullname'];
    $email = $_POST['email'];
    $username = $_POST['username'];
    $password = $_POST['password'];

   $query = "INSERT INTO users(fullname,email,username,password) VALUES('$fullname','$email','$username','$password')";

   $fire = mysqli_query($con,$query) or die ("cannot insert into databases .".mysqli_error($con));

   if($fire) echo "data submitted to database";
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    <div class="container">
    <div class="row">
    <div class="col-lg-8 col-lg-offset-2">
    <div class="col-lg-6 col-lg-offset-3">
    <h3>SingUp</h3>
    <hr>
    <form name="signup" id="signup" action ="<?php $_SERVER['PHP_SELF'] ?>" method="POST">
    <div class="form-group">
    <lable for="">Fullname</lable>
    <input  name ="fullname" id="fullname" type="text" class="form-control" placeholder="fullname">
    </div>
    <div class="form-group">
    <lable for="">Email</lable>
    <input name ="email" id="email" type="email" class="form-control" placeholder="email">
    </div>
    <div class="form-group">
    <lable for="">Username</lable>
    <input name ="username" id="username" type="text" class="form-control" placeholder="username">
    </div>
    <div class="form-group">
    <lable for="">Password</lable>
    <input name="password" id="password" type="password" class="form-control" placeholder="password">
    </div>
    <div class="form-group">
    <button name="submit" id="submit" classs="btn btn-primary btn-block">SingUp</button>
   
    </div>
    </form>
    </div>
    </div>
    </div>
    
</body>
</html>