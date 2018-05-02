<?php
session_start();

// initializing variables
$loginId = "";
$loginPassword = "";
$fname = "";
$lname = "";
$EmpId = "";


$errors = array(); 

// connect to the database
$db = mysqli_connect('localhost', 'root', 'usnavy123', 'timeclock');

// REGISTER USER
if (isset($_POST['reg_user'])) {
  // receive all input values from the form
  $loginId = mysqli_real_escape_string($db, $_POST['loginId']);
  $loginPassword = mysqli_real_escape_string($db, $_POST['loginPassword']);
  $fname = mysqli_real_escape_string($db, $_POST['fname']);
  $lname = mysqli_real_escape_string($db, $_POST['lname']);
  $EmpId = mysqli_real_escape_string($db, $_POST['EmpId']);


  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array
  if (empty($loginId)) { array_push($errors, "Username is required"); }
  if (empty($fname)) { array_push($errors, "First name is required"); }
  if (empty($lname)) { array_push($errors, "Last name is required"); }
  if (empty($EmpId)) { array_push($errors, "Employee ID is required"); }
  if (empty($loginPassword)) { array_push($errors, "Password is required"); }
  

  // first check the database to make sure 
  // a user does not already exist with the same username and/or email
  $user_check_query = "SELECT * FROM employees WHERE EmployeeID='$EmpId' OR loginId ='$loginId' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);
  
  if ($user) { // if user exists
    if ($user['loginId'] === $loginId) {
      array_push($errors, "Login ID already exists");
    }

    if ($user['EmpId'] === $EmpId) {
      array_push($errors, "Employee ID already exists");
    }
  }

  // Finally, register user if there are no errors in the form
  if (count($errors) == 0) {
  	$loginPassword = md5($loginPassword);//encrypt the password before saving in the database

  	$query = "INSERT INTO users (username, email, password) 
  			  VALUES('$username', '$email', '$password')";
  	mysqli_query($db, $query);
  	$_SESSION['username'] = $username;
  	$_SESSION['success'] = "You are now logged in";
  	header('location: index.php');
  }
}