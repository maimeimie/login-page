<?php 

    session_start();

    include('config.php');

    if (isset($_POST['submit'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];

        $sql = mysqli_query($dbcon, "SELECT * FROM teacheruser WHERE username = '$username' AND password = '$password'");

        $row = mysqli_fetch_array($sql);

        if ($row) {
            $_SESSION['userid'] = $row['id'];
            $_SESSION['username'] = $row['username'];

            if (!empty($_POST['remember'])) {
                setcookie('user_login', $_POST['username'], time() + (10 * 365 * 24 * 60 * 60));
                setcookie('user_password', $_POST['password'], time() + (10 * 365 * 24 * 60 * 60));
            } else {
                if (isset($_COOKIE['user_login'])) {
                    setcookie('user_login', '');

                    if (isset($_COOKIE['user_password'])) {
                        setcookie('user_password', '');
                    }
                }
            }
            header("location:./linktoweb.html");
        } else {
            $msg = "Invalid Login";
        }
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <link rel="stylesheet" href="./TCstyle.css">
</head>
<body>
    
    <div class="container">
    <a href="./HPlogin.html" class="back">&#8592;</a>
        <h1>Teacher Login</h1>
        <form method="post">

        <?php if(isset($msg)) { ?>
            <div class="alert alert-danger" role="alert">
                <?php echo $msg; ?>
            </div>
            <?php } ?>
        
            <div class="input-control">
                <label for="username">Teacher ID</label>
                <input type="text" placeholder="Enter your teacher ID" id="username" name="username"
                value="<?php if (isset($_COOKIE['user_login'])) { echo $_COOKIE['user_login']; } ?>" name="username" id="username" aria-describedby="username">
                <div class="error"></div>
            </div>

            <div class="input-control">
                <label for="password">Password</label>
                <input type="password" placeholder="Enter your password" id="password" name="password"
                value="<?php if (isset($_COOKIE['user_password'])) { echo $_COOKIE['user_password']; } ?>" name="password" id="password">
                <div class="error"></div>
            </div>

            <div class="form-check">
                <input type="checkbox" name="remember" 
                value="<?php if (isset($_COOKIE['user_login'])) { ?> checked <?php } ?> class="form-check-input" id="remember">
                <label class="form-check-label" for="remember">Remember Me</label>
            </div>

            <button type="submit" name="submit" class="button-submit" >Submit</button>
        </form>  
    </div>

</body>
</html>