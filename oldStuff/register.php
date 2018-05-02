<?php include('functions.php') ?>
<!DOCTYPE html>
<html>
<head>
  <title>Registration system PHP and MySQL</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="header">
  <h2>Register</h2>
</div>
<form method="post" action="register.php">
    <?php echo display_error(); ?>
  <div class="input-group">
    <label>Username</label>
    <input type="text" name="username" value="<?php echo $username; ?>">
  </div>
  <div class="input-group">
    <label>First Name</label>
    <input type="text" name="fname" value="<?php echo $fname; ?>">
  </div>
  <div class="input-group">
    <label>Last Name</label>
    <input type="text" name="lname" value="<?php echo $lname; ?>">
  </div>
  <div class="input-group">
    <label>Office</label>
    <input type="text" name="officeName" value="<?php echo $officeName; ?>">
  </div>
  <div class="input-group">
    <label>Office Manager</label>
     <input type="text" name="officeManger" value="<?php echo $officeManger; ?>">
  </div>
  <div class="input-group">
    <label>Password</label>
    <input type="password" name="password">
  </div>
  <div class="input-group">
    <button type="submit" class="btn" name="register_btn">Register</button>
  </div>
  <p>
    Already a member? <a href="login.php">Sign in</a>
  </p>
</form>
</body>
</html>